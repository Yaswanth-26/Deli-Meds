import mysql.connector
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from connection import connect_to_mysql, fetch_data, close_connection

def analyze_top_pharmacies(conn):
    """
    Analyze top pharmacies by order count
    
    Args:
        conn: MySQL connection object
    """
    query = """
    SELECT
        p.Pharmacy_Name As Pharmacy,
        COUNT(c.Cart_ID) AS TotalOrders
    FROM
        Cart c, Pharmacy p
    WHERE
        c.Order_ID IS NOT NULL AND c.Pharmacy_ID = p.Pharmacy_ID
    GROUP BY
        c.Pharmacy_ID
    ORDER BY
        TotalOrders DESC
    LIMIT 10;
    """
    
    top_pharmacies = fetch_data(conn, query)
    
    if not top_pharmacies.empty:
        plt.figure(figsize=(12, 8))
        sns.barplot(x='TotalOrders', y='Pharmacy', data=top_pharmacies, palette='Reds_r')
        plt.title('Top Pharmacies by Order Count')
        plt.xlabel('Order Count')
        plt.ylabel('Pharmacy')
        plt.tight_layout()
        plt.savefig('results/top_pharmacies.png')
        print("Top pharmacies analysis completed.")
        return top_pharmacies
    
    return None

def analyze_top_customers_by_spending(conn):
    """
    Analyze top customers by average spending
    
    Args:
        conn: MySQL connection object
    """
    query = """
    SELECT c.Customer_Firstname as Customers, AVG(p.Amount) AS AverageAmountPaid
    FROM Orders o
    JOIN Customer c ON c.Customer_ID = o.Customer_ID
    JOIN Payment p ON o.Order_ID = p.Order_ID
    GROUP BY c.Customer_ID
    ORDER BY AverageAmountPaid DESC
    LIMIT 10;
    """
    
    top_customers = fetch_data(conn, query)
    
    if not top_customers.empty:
        plt.figure(figsize=(8, 6))
        sns.barplot(x='Customers', y='AverageAmountPaid', data=top_customers)
        plt.xlabel('Customers')
        plt.ylabel('Average Amount Paid')
        plt.xticks(rotation=45)
        plt.tight_layout()
        plt.savefig('results/top_customers_spending.png')
        print("Top customers by spending analysis completed.")
        return top_customers
    
    return None

def analyze_cart_conversion(conn):
    """
    Analyze cart conversion percentage
    
    Args:
        conn: MySQL connection object
    """
    query = """
    SELECT
        COUNT(CASE WHEN Order_ID IS NULL THEN 1 END) AS CartsWithoutOrders,
        COUNT(*) AS TotalCarts,
        (COUNT(CASE WHEN Order_ID IS NULL THEN 1 END) / COUNT(*)) * 100 AS Percentage
    FROM
        Cart;
    """
    
    conversion_data = fetch_data(conn, query)
    
    if not conversion_data.empty:
        # Create a pie chart for cart conversion
        carts_without_orders = conversion_data['CartsWithoutOrders'].iloc[0]
        total_carts = conversion_data['TotalCarts'].iloc[0]
        carts_with_orders = total_carts - carts_without_orders
        
        labels = ['Carts With Orders', 'Carts Without Orders']
        sizes = [carts_with_orders, carts_without_orders]
        colors = ['lightgreen', 'lightcoral']
        
        plt.figure(figsize=(8, 8))
        plt.pie(sizes, labels=labels, autopct='%1.1f%%', startangle=140, colors=colors)
        plt.axis('equal')
        plt.title('Cart Conversion Rate')
        plt.tight_layout()
        plt.savefig('results/cart_conversion.png')
        print("Cart conversion analysis completed.")
        return conversion_data
    
    return None

def analyze_customer_interactions(conn):
    """
    Analyze top customers by interaction duration
    
    Args:
        conn: MySQL connection object
    """
    query = """
    SELECT
        c.Customer_ID,
        c.Customer_Firstname,
        c.Customer_Lastname,
        SUM(i.Interaction_Duration) AS TotalInteractionDuration
    FROM
        Interaction i
    JOIN
        Customer c ON i.Customer_ID = c.Customer_ID
    GROUP BY
        c.Customer_ID, c.Customer_Firstname, c.Customer_Lastname
    ORDER BY
        TotalInteractionDuration DESC
    LIMIT 5;
    """
    
    top_interactions = fetch_data(conn, query)
    
    if not top_interactions.empty:
        plt.figure(figsize=(8, 6))
        plt.bar(
            top_interactions['Customer_Firstname'] + ' ' + top_interactions['Customer_Lastname'],
            top_interactions['TotalInteractionDuration'],
            color='lightcoral'
        )
        plt.xlabel('Customers')
        plt.ylabel('Total Interaction Duration')
        plt.title('Top 5 Customers with Highest Interaction Duration')
        plt.xticks(rotation=45, ha='right')
        plt.tight_layout()
        plt.savefig('results/top_customer_interactions.png')
        print("Customer interactions analysis completed.")
        return top_interactions
    
    return None

def analyze_top_reviewers(conn):
    """
    Analyze top customers by number of reviews
    
    Args:
        conn: MySQL connection object
    """
    query = """
    SELECT
        c.Customer_Firstname as FirstName,
        c.Customer_Lastname as Last,
        MAX(r.Review_Number) AS TotalReviews
    FROM
        Customer c
    LEFT JOIN
        Review r ON c.Customer_ID = r.Customer_ID
    WHERE
        r.Review_Number >= ALL (
            SELECT
                Review_Number
            FROM
                Review
            WHERE
                Customer_ID = c.Customer_ID
        )
    GROUP BY
        c.Customer_ID, c.Customer_Firstname, c.Customer_Lastname
    ORDER BY
        TotalReviews DESC
    LIMIT 10;
    """
    
    top_reviewers = fetch_data(conn, query)
    
    if not top_reviewers.empty:
        plt.figure(figsize=(10, 6))
        sns.barplot(x='TotalReviews', y='FirstName', data=top_reviewers, palette='Blues_r')
        plt.title('Top 10 Customers by Total Reviews')
        plt.xlabel('Total Reviews')
        plt.ylabel('Customers')
        plt.tight_layout()
        plt.savefig('results/top_reviewers.png')
        print("Top reviewers analysis completed.")
        return top_reviewers
    
    return None

def run_all_analyses():
    """
    Run all analyses and return the results
    
    Returns:
        dict: Dictionary containing all analysis results
    """
    conn = connect_to_mysql(password='your_password_here')
    
    if not conn:
        print("Failed to connect to the database. Aborting analyses.")
        return {}
    
    # Create directory for results if it doesn't exist
    import os
    if not os.path.exists('results'):
        os.makedirs('results')
    
    results = {
        'top_pharmacies': analyze_top_pharmacies(conn),
        'top_customers_spending': analyze_top_customers_by_spending(conn),
        'cart_conversion': analyze_cart_conversion(conn),
        'customer_interactions': analyze_customer_interactions(conn),
        'top_reviewers': analyze_top_reviewers(conn)
    }
    
    close_connection(conn)
    
    return results

if __name__ == "__main__":
    results = run_all_analyses()
    print("All analyses completed.")
