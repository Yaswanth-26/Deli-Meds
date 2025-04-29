// MongoDB Collection Queries for Deli-Meds

// Connect to MongoDB and use the deli_meds database
use deli_meds

// Query 1: Find all documents in the pharmacy collection
db.pharmacy.find()

// Query 2: Find medicines with name "sed" and price greater than $10
db.medicine.find({
    "Medicine_Name": "sed",
    "Medicine_Price": { $gt: 10 }
})

// Query 3: Group employees by job title and count
db.employees.aggregate([
    {
        $group: { 
            _id: "$jobTitle", 
            count: { $sum: 1 } 
        }
    },
    {
        $sort: { count: -1 }
    }
])

// Query 4: Count employees by office code
db.employees.aggregate([
    {
        $group: {
            _id: "$officeCode",
            count: { $sum: 1 }
        }
    }
])

// Query 5: Count occurrences of each medicine name
db.medicine.aggregate([
    {
        $group: { 
            _id: "$Medicine_Name", 
            count: { $sum: 1 } 
        }
    }
])

// Query 6: Count specialty occurrences and calculate average name length
db.doctor.aggregate([
    {
        $group: { 
            _id: "$Specialty", 
            UniqueDocterCount: { $sum: 1 }, // Counting unique doctors per specialty
            AvgDoctorNameLength: { $avg: { $strLenCP: "$Doctor_Name" } } // Calculating average Doctor Name length per specialty
        }
    },
    {
        $sort: { UniqueDocterCount: -1 }
    }
])

// Query 7: Find unique Pharmacy IDs per Order and count pharmacies per order
db.cart.aggregate([
    {
        $group: { 
            _id: "$Order_ID", 
            Cart_ID: { $first: "$Cart_ID" },
            Total_Pharmacies: { $sum: 1 },
            Unique_Pharmacy_Count: { $addToSet: "$Pharmacy_ID" }
        }
    },
    {
        $sort: { Unique_Pharmacy_Count: -1 }
    }
])

// Query 8: Import data from MySQL tables to MongoDB collections
// Note: This is typically done using tools like mongoimport or custom scripts
// Example of how data might be imported:
/*
mongoimport --host localhost:27017 --db deli_meds --collection customer --type json --file customer.json --jsonArray
mongoimport --host localhost:27017 --db deli_meds --collection doctor --type json --file doctor.json --jsonArray
mongoimport --host localhost:27017 --db deli_meds --collection pharmacy --type json --file pharmacy.json --jsonArray
mongoimport --host localhost:27017 --db deli_meds --collection cart --type json --file cart.json --jsonArray
mongoimport --host localhost:27017 --db deli_meds --collection orders --type json --file orders.json --jsonArray
mongoimport --host localhost:27017 --db deli_meds --collection medicine --type json --file medicine.json --jsonArray
mongoimport --host localhost:27017 --db deli_meds --collection service --type json --file service.json --jsonArray
mongoimport --host localhost:27017 --db deli_meds --collection product --type json --file product.json --jsonArray
mongoimport --host localhost:27017 --db deli_meds --collection prescription --type json --file prescription.json --jsonArray
mongoimport --host localhost:27017 --db deli_meds --collection payment --type json --file payment.json --jsonArray
mongoimport --host localhost:27017 --db deli_meds --collection staff --type json --file staff.json --jsonArray
mongoimport --host localhost:27017 --db deli_meds --collection interaction --type json --file interaction.json --jsonArray
mongoimport --host localhost:27017 --db deli_meds --collection queries --type json --file queries.json --jsonArray
mongoimport --host localhost:27017 --db deli_meds --collection admin --type json --file admin.json --jsonArray
mongoimport --host localhost:27017 --db deli_meds --collection offer --type json --file offer.json --jsonArray
mongoimport --host localhost:27017 --db deli_meds --collection offer_in --type json --file offer_in.json --jsonArray
mongoimport --host localhost:27017 --db deli_meds --collection delivery --type json --file delivery.json --jsonArray
*/

// Query 9: Create an index on pharmacy.Pharmacy_ID for faster queries
db.pharmacy.createIndex({ "Pharmacy_ID": 1 })

// Query 10: Create an index on customer.Customer_ID for faster queries
db.customer.createIndex({ "Customer_ID": 1 })

// Query 11: Create an index on cart.Order_ID for faster queries
db.cart.createIndex({ "Order_ID": 1 })

// Query 12: Create an index on cart.Pharmacy_ID for faster queries
db.cart.createIndex({ "Pharmacy_ID": 1 })

// Query 13: Create a compound index on interaction.Staff_ID and interaction.Customer_ID
db.interaction.createIndex({ "Staff_ID": 1, "Customer_ID": 1 })

// Query 14: Find all prescriptions for a specific customer
db.prescription.find({ "Customer_ID": 1042058 })

// Query 15: Find all carts linked to a specific pharmacy
db.cart.find({ "Pharmacy_ID": 1113170 })

// Query 16: Find all orders from a specific customer
db.orders.find({ "Customer_ID": 1042058 })

// Query 17: Find all payments for a specific order
db.payment.find({ "Order_ID": 1007688 })

// Query 18: Find average payment amount
db.payment.aggregate([
    {
        $group: {
            _id: null,
            averageAmount: { $avg: "$Amount" }
        }
    }
])

// Query 19: Find the top 5 highest paid orders
db.payment.find().sort({ "Amount": -1 }).limit(5)

// Query 20: Find all interactions with duration > 40
db.interaction.find({ "Interaction_Duration": { $gt: 40 } })
