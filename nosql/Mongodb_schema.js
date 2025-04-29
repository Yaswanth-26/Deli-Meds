// MongoDB Schema Design for Deli-Meds
// This file defines the document structure for each collection in the MongoDB implementation

// Customer Collection
/*
{
  "_id": ObjectId("..."),
  "Customer_ID": Number,
  "Customer_Firstname": String,
  "Customer_Lastname": String,
  "Customer_StreetAdress": String,
  "Customer_City": String,
  "Customer_ZipCode": String,
  "Customer_Phone": String,
  "Customer_email": String,
  "Customer_Password": String,
  "Reviews": [
    {
      "Review_Number": Number,
      "Comment": String,
      "Date": Date
    }
  ]
}
*/

// Doctor Collection
/*
{
  "_id": ObjectId("..."),
  "Doctor_SSN": String,
  "Doctor_Name": String,
  "Specialty": String
}
*/

// Pharmacy Collection
/*
{
  "_id": ObjectId("..."),
  "Pharmacy_ID": Number,
  "Pharmacy_Name": String,
  "Pharmacy_Location": String,
  "Pharmacy_StreetAdress": String,
  "Pharmacy_City": String,
  "Pharmacy_ZipCode": String,
  "Pharmacy_Phones": [String],
  "Medicines": [
    {
      "Medicine_ID": Number,
      "Medicine_Name": String,
      "Medicine_Price": Number
    }
  ],
  "Services": [
    {
      "Service_ID": Number,
      "Service_Type": String,
      "Service_Description": String,
      "Service_Price": Number
    }
  ],
  "Products": [
    {
      "Product_ID": Number,
      "Product_Name": String,
      "Product_Price": Number
    }
  ],
  "Available_Offers": [
    {
      "Offer_ID": Number,
      "Offer_Code": String,
      "Offer_Details": String,
      "Admin_ID": Number
    }
  ]
}
*/

// Cart Collection
/*
{
  "_id": ObjectId("..."),
  "Cart_ID": Number,
  "Pharmacy_ID": Number,
  "Order_ID": Number
}
*/

// Order Collection
/*
{
  "_id": ObjectId("..."),
  "Order_ID": Number,
  "Customer_ID": Number,
  "Order_Date": Date,
  "Order_Details": {
    "Total_Price": Number,
    "Quantity": Number,
    "Discount": Number
  },
  "Payment": {
    "Payment_ID": Number,
    "Amount": Number,
    "Payment_Date": Date
  }
}
*/

// Prescription Collection
/*
{
  "_id": ObjectId("..."),
  "Customer_ID": Number,
  "Doctor_SSN": String,
  "Cart_ID": Number,
  "Prescription_Date": Date
}
*/

// Staff Collection
/*
{
  "_id": ObjectId("..."),
  "Staff_ID": Number,
  "Staff_SSN": String,
  "Staff_Name": String,
  "Staff_Department": String,
  "Staff_email": String,
  "Staff_Phone": String,
  "Admin_ID": Number
}
*/

// Query Collection
/*
{
  "_id": ObjectId("..."),
  "Query_ID": Number,
  "Query_Date": Date,
  "Query_Details": String
}
*/

// Interaction Collection
/*
{
  "_id": ObjectId("..."),
  "Staff_ID": Number,
  "Customer_ID": Number,
  "Query_ID": Number,
  "Interaction_Duration": Number
}
*/

// Admin Collection
/*
{
  "_id": ObjectId("..."),
  "Admin_ID": Number,
  "Admin_Name": String,
  "Admin_email": String,
  "Admin_Password": String,
  "Admin_Phone": String
}
*/

// Offer Collection
/*
{
  "_id": ObjectId("..."),
  "Offer_ID": Number,
  "Admin_ID": Number,
  "Offer_Code": String,
  "Offer_Details": String
}
*/

// Delivery Collection
/*
{
  "_id": ObjectId("..."),
  "Staff_ID": Number,
  "Pharmacy_ID": Number,
  "Order_ID": Number,
  "Delivery_Duration": Number,
  "Delivery_Date": Date
}
*/

// Index Creation
db.customer.createIndex({ "Customer_ID": 1 }, { unique: true });
db.doctor.createIndex({ "Doctor_SSN": 1 }, { unique: true });
db.pharmacy.createIndex({ "Pharmacy_ID": 1 }, { unique: true });
db.cart.createIndex({ "Cart_ID": 1 }, { unique: true });
db.order.createIndex({ "Order_ID": 1 }, { unique: true });
db.staff.createIndex({ "Staff_ID": 1 }, { unique: true });
db.admin.createIndex({ "Admin_ID": 1 }, { unique: true });
db.query.createIndex({ "Query_ID": 1 }, { unique: true });
db.offer.createIndex({ "Offer_ID": 1 }, { unique: true });

// Compound Indices for Faster Queries
db.prescription.createIndex({ "Customer_ID": 1, "Doctor_SSN": 1, "Cart_ID": 1 }, { unique: true });
db.interaction.createIndex({ "Staff_ID": 1, "Customer_ID": 1 }, { unique: true });
db.delivery.createIndex({ "Staff_ID": 1, "Pharmacy_ID": 1, "Order_ID": 1 }, { unique: true });

// Alternative Denormalized Schema Design
// For high-performance read operations, we could use a more embedded approach:

// Customer Collection with embedded reviews
/*
{
  "_id": ObjectId("..."),
  "Customer_ID": Number,
  "Customer_Firstname": String,
  "Customer_Lastname": String,
  "Customer_StreetAdress": String,
  "Customer_City": String,
  "Customer_ZipCode": String,
  "Customer_Phone": String,
  "Customer_email": String,
  "Customer_Password": String,
  "Reviews": [
    {
      "Review_Number": Number,
      "Comment": String,
      "Date": Date
    }
  ],
  "Orders": [
    {
      "Order_ID": Number,
      "Order_Date": Date,
      "Order_Details": {
        "Total_Price": Number,
        "Quantity": Number,
        "Discount": Number
      },
      "Payment": {
        "Payment_ID": Number,
        "Amount": Number,
        "Payment_Date": Date
      },
      "Cart": {
        "Cart_ID": Number,
        "Pharmacy_ID": Number,
        "Pharmacy_Name": String
      }
    }
  ],
  "Prescriptions": [
    {
      "Doctor_SSN": String,
      "Doctor_Name": String,
      "Cart_ID": Number,
      "Prescription_Date": Date
    }
  ],
  "Interactions": [
    {
      "Staff_ID": Number,
      "Staff_Name": String,
      "Query_ID": Number,
      "Query_Details": String,
      "Interaction_Duration": Number
    }
  ]
}
*/

// Pharmacy Collection with embedded products, services, medicines
/*
{
  "_id": ObjectId("..."),
  "Pharmacy_ID": Number,
  "Pharmacy_Name": String,
  "Pharmacy_Location": String,
  "Pharmacy_StreetAdress": String,
  "Pharmacy_City": String,
  "Pharmacy_ZipCode": String,
  "Pharmacy_Phones": [String],
  "Medicines": [
    {
      "Medicine_ID": Number,
      "Medicine_Name": String,
      "Medicine_Price": Number
    }
  ],
  "Services": [
    {
      "Service_ID": Number,
      "Service_Type": String,
      "Service_Description": String,
      "Service_Price": Number
    }
  ],
  "Products": [
    {
      "Product_ID": Number,
      "Product_Name": String,
      "Product_Price": Number
    }
  ],
  "Available_Offers": [
    {
      "Offer_ID": Number,
      "Offer_Code": String,
      "Offer_Details": String,
      "Admin_ID": Number
    }
  ],
  "Deliveries": [
    {
      "Staff_ID": Number,
      "Staff_Name": String,
      "Order_ID": Number,
      "Delivery_Duration": Number,
      "Delivery_Date": Date
    }
  ]
}
*/

// Note: The actual schema implementation may vary depending on query patterns and performance requirements
// This is a starting point and can be adjusted based on your specific use cases
