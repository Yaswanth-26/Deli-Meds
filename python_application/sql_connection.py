import mysql.connector
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

def connect_to_mysql(host='127.0.0.1', user='root', password='', database='deli_meds'):
    """
    Connect to MySQL database
    
    Args:
        host (str): Database host
        user (str): Database username
        password (str): Database password
        database (str): Database name
        
    Returns:
        connection: MySQL connection object
    """
    try:
        conn = mysql.connector.connect(
            host=host,
            user=user,
            password=password,
            database=database
        )
        print("MySQL connection successful")
        return conn
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        return None

def fetch_data(conn, query):
    """
    Execute SQL query and return data as pandas DataFrame
    
    Args:
        conn: MySQL connection object
        query (str): SQL query to execute
        
    Returns:
        DataFrame: Query results as pandas DataFrame
    """
    try:
        cursor = conn.cursor()
        cursor.execute(query)
        columns = [column[0] for column in cursor.description]
        data = cursor.fetchall()
        cursor.close()
        return pd.DataFrame(data, columns=columns)
    except mysql.connector.Error as err:
        print(f"Error executing query: {err}")
        return pd.DataFrame()

def close_connection(conn):
    """
    Close MySQL connection
    
    Args:
        conn: MySQL connection object
    """
    if conn and conn.is_connected():
        conn.close()
        print("MySQL connection is closed")

if __name__ == "__main__":
    # Example usage
    conn = connect_to_mysql(password='your_password_here')
    
    if conn:
        # Example query: Get top 10 pharmacies by orders
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
            # Visualize the data
            plt.figure(figsize=(12, 8))
            sns.barplot(x='TotalOrders', y='Pharmacy', data=top_pharmacies, palette='Reds_r')
            plt.title('Top Pharmacies by Order Count')
            plt.xlabel('Order Count')
            plt.ylabel('Pharmacy')
            plt.tight_layout()
            plt.savefig('top_pharmacies.png')
            plt.show()
        
        close_connection(conn)
