import pymongo
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

def connect_to_mongodb(host='localhost', port=27017, database='deli_meds'):
    """
    Connect to MongoDB database
    
    Args:
        host (str): MongoDB host
        port (int): MongoDB port
        database (str): Database name
        
    Returns:
        Database: MongoDB database object
    """
    try:
        client = pymongo.MongoClient(host, port)
        db = client[database]
        print("MongoDB connection successful")
        return db
    except pymongo.errors.ConnectionFailure as e:
        print(f"Could not connect to MongoDB: {e}")
        return None

def find_documents(db, collection_name, query=None, projection=None, limit=0):
    """
    Find documents in a MongoDB collection
    
    Args:
        db: MongoDB database object
        collection_name (str): Collection name
        query (dict): Query to filter documents
        projection (dict): Fields to include or exclude
        limit (int): Maximum number of documents to return
        
    Returns:
        list: List of documents
    """
    if query is None:
        query = {}
    
    collection = db[collection_name]
    cursor = collection.find(query, projection).limit(limit)
    
    return list(cursor)

def aggregate_documents(db, collection_name, pipeline):
    """
    Aggregate documents in a MongoDB collection
    
    Args:
        db: MongoDB database object
        collection_name (str): Collection name
        pipeline (list): Aggregation pipeline
        
    Returns:
        list: List of aggregated documents
    """
    collection = db[collection_name]
    cursor = collection.aggregate(pipeline)
    
    return list(cursor)

def analyze_medicine_price_distribution(db):
    """
    Analyze medicine price distribution
    
    Args:
        db: MongoDB database object
    """
    pipeline = [
        {
            "$match": {
                "Medicine_Price": {"$ne": None, "$gt": 0}
            }
        },
        {
            "$group": {
                "_id": "$Pharmacy_ID",
                "avg_price": {"$avg": "$Medicine_Price"},
                "min_price": {"$min": "$Medicine_Price"},
                "max_price": {"$max": "$Medicine_Price"},
                "count": {"$sum": 1}
            }
        },
        {
            "$sort": {"avg_price": -1}
        },
        {
            "$limit": 10
        }
    ]
    
    results = aggregate_documents(db, "medicine", pipeline)
    
    if results:
        # Convert to DataFrame for easier visualization
        df = pd.DataFrame(results)
        
        # Join with pharmacy names for better display
        pharmacies = find_documents(db, "pharmacy", {}, {"Pharmacy_ID": 1, "Pharmacy_Name": 1})
        pharmacy_map = {p["Pharmacy_ID"]: p.get("Pharmacy_Name", f"Pharmacy {p['Pharmacy_ID']}") 
                        for p in pharmacies}
        
        df["pharmacy_name"] = df["_id"].map(lambda x: pharmacy_map.get(x, f"Pharmacy {x}"))
        
        # Create visualization
        plt.figure(figsize=(12, 8))
        
        # Plot average prices
        ax = sns.barplot(x="pharmacy_name", y="avg_price", data=df, color="blue", alpha=0.6)
        
        # Add min-max range
        for i, row in df.iterrows():
            ax.vlines(i, row["min_price"], row["max_price"], color="darkblue", linewidth=2)
            ax.hlines(row["min_price"], i-0.2, i+0.2, color="darkblue", linewidth=2)
            ax.hlines(row["max_price"], i-0.2, i+0.2, color="darkblue", linewidth=2)
        
        plt.title("Medicine Price Distribution by Pharmacy")
        plt.xlabel("Pharmacy")
        plt.ylabel("Price ($)")
        plt.xticks(rotation=45, ha="right")
        plt.tight_layout()
        plt.savefig("results/medicine_price_distribution.png")
        print("Medicine price distribution analysis completed.")
        
        return df
    
    return None

def analyze_doctor_specialties(db):
    """
    Analyze doctor specialties
    
    Args:
        db: MongoDB database object
    """
    pipeline = [
        {
            "$group": {
                "_id": "$Specialty",
                "count": {"$sum": 1},
                "avg_name_length": {"$avg": {"$strLenCP": "$Doctor_Name"}}
            }
        },
        {
            "$sort": {"count": -1}
        },
        {
            "$limit": 10
        }
    ]
    
    results = aggregate_documents(db, "doctor", pipeline)
    
    if results:
        df = pd.DataFrame(results)
        df = df.rename(columns={"_id": "specialty"})
        
        plt.figure(figsize=(12, 8))
        sns.barplot(x="specialty", y="count", data=df, palette="viridis")
        plt.title("Doctor Count by Specialty")
        plt.xlabel("Specialty")
        plt.ylabel("Number of Doctors")
        plt.xticks(rotation=45, ha="right")
        plt.tight_layout()
        plt.savefig("results/doctor_specialties.png")
        print("Doctor specialties analysis completed.")
        
        return df
    
    return None

def analyze_customer_orders(db):
    """
    Analyze customer orders
    
    Args:
        db: MongoDB database object
    """
    # First, find customers with orders
    pipeline = [
        {
            "$lookup": {
                "from": "orders",
                "localField": "Customer_ID",
                "foreignField": "Customer_ID",
                "as": "orders"
            }
        },
        {
            "$project": {
                "Customer_ID": 1,
                "Customer_Firstname": 1,
                "Customer_Lastname": 1,
                "order_count": {"$size": "$orders"}
            }
        },
        {
            "$sort": {"order_count": -1}
        },
        {
            "$limit": 10
        }
    ]
    
    results = aggregate_documents(db, "customer", pipeline)
    
    if results:
        df = pd.DataFrame(results)
        df["full_name"] = df["Customer_Firstname"] + " " + df["Customer_Lastname"]
        
        plt.figure(figsize=(10, 6))
        sns.barplot(x="full_name", y="order_count", data=df, palette="Blues_d")
        plt.title("Top 10 Customers by Order Count")
        plt.xlabel("Customer")
        plt.ylabel("Number of Orders")
        plt.xticks(rotation=45, ha="right")
        plt.tight_layout()
        plt.savefig("results/customer_orders.png")
        print("Customer orders analysis completed.")
        
        return df
    
    return None

def run_all_mongodb_analyses():
    """
    Run all MongoDB analyses
    
    Returns:
        dict: Dictionary containing all analysis results
    """
    db = connect_to_mongodb()
    
    if not db:
        print("Failed to connect to MongoDB. Aborting analyses.")
        return {}
    
    # Create directory for results if it doesn't exist
    import os
    if not os.path.exists('results'):
        os.makedirs('results')
    
    results = {
        'medicine_price_distribution': analyze_medicine_price_distribution(db),
        'doctor_specialties': analyze_doctor_specialties(db),
        'customer_orders': analyze_customer_orders(db)
    }
    
    print("All MongoDB analyses completed.")
    
    return results

if __name__ == "__main__":
    results = run_all_mongodb_analyses()
