# -*- coding: utf-8 -*-
"""
Created on Wed Oct 25 18:34:28 2023

@author: PRIYANKA REDDY
"""

import mysql.connector

# Replace these variables with your MySQL server details
host = 'localhost'
user = 'root'
password = 'Priyanka@14'
database = 'dboproject'

# Establish a connection to the MySQL server
conn = mysql.connector.connect(
    host=host,
    user=user,
    password=password,
    database=database
)

# Create a cursor object to execute SQL queries
cursor = conn.cursor()

# Example: Execute a simple SQL query
'''cursor.execute("SELECT * FROM property")
result = cursor.fetchall()
for row in result:
    print(row)
    
cursor.execute("SELECT * FROM users")
result = cursor.fetchall()
for row in result:
    print(row)'''
    
#---------------------------user table operations--------------------------
def create_user(U_ID, email, password, role):
    try:
        cursor.execute("INSERT INTO users (U_ID, email, password, Role) VALUES (%s, %s, %s, %s)", (U_ID, email, password, role))
        conn.commit()
    except mysql.connector.Error as err:
        print(f"Error: {err}")
#test create_user function
#create_user('Priyanka14', 'Priyanka200@gmail.com', 'priyanka123', 'perspective_renter')


# Read operation
def read_user(U_ID):
    cursor.execute("SELECT * FROM users WHERE U_ID=%s", (U_ID,))
    return cursor.fetchone()
print(read_user('Priyanka14'))
#updating table
def update_user(U_ID, email):
    try:
        sql_query = "UPDATE users SET email=%s WHERE U_ID=%s"
        print(f"SQL Query: {sql_query}" % (email, U_ID))
        
        cursor.execute(sql_query, (email, U_ID))
        conn.commit()
        print("Update successful.")
    except mysql.connector.Error as err:
        print(f"Error: {err}")
# Test the update_user function
update_user("Priyanka14","PriyankaReddy2000@gmail.com")
#print(read_user('Priyanka14'))

def delete_user(U_ID):
    cursor.execute("DELETE FROM users WHERE U_ID=%s", (U_ID,))
    conn.commit()
    
 # Test the delete_user function  
delete_user("Priyanka14")

#---------------------------------Agency Table operations-------------------------
#create operation cannot be done becaue of foriegn key from user table and doesnot allow to create a new agency 
def create_agency(U_ID, A_name, address):
    try:
        # Check if the provided U_ID exists in the users table
        cursor.execute("SELECT COUNT(*) FROM users WHERE U_ID = %s", (U_ID,))
        user_exists = cursor.fetchone()[0]

        if user_exists:
            # If the user exists, insert the new agency
            cursor.execute("INSERT INTO agency (U_ID, A_name, address) VALUES (%s, %s, %s)", (U_ID, A_name, address))
            conn.commit()
            print("Agency created successfully.")
        else:
            print(f"Error: User with U_ID {U_ID} does not exist.")
    except mysql.connector.Error as err:
        print(f"Error: {err}")

# Test the create_agency function
#create_agency("Jeremai73", "Jeremai_Agency", "2890 W 28th Street")


# Read operation
def read_agency(U_ID):
    cursor.execute("SELECT * FROM agency WHERE U_ID=%s", (U_ID,))
    return cursor.fetchone()
#testing read function
#print(read_agency('Bella09'))

#updating table
def update_agency(U_ID, address):
    try:
        sql_query = "UPDATE agency SET address=%s WHERE U_ID=%s"
        print(f"SQL Query: {sql_query}".format(U_ID, address))
        
        cursor.execute(sql_query, (address, U_ID))
        conn.commit()
        print("Update successful.")
    except mysql.connector.Error as err:
        print(f"Error: {err}")

# Test the update_agency function
update_agency("Jeremai73", "2727 S Indiana")
print(read_agency('Jeremai73'))

# DELETE operation cannot be performed due to foriegn constraint

#--------------------perepctive reters operations--------------------------

#create operation cannot be done becaue of foriegn key from user table and doesnot allow to create a new agency 

# Read operation
def read_prenters(U_ID):
    cursor.execute("SELECT * FROM perspectiverenters WHERE U_ID=%s", (U_ID,))
    return cursor.fetchone()
print(read_user('Anitraj07'))


#updating table
def update_prenters(U_ID, **kwargs):
    try:
        # Build the SET part of the SQL query dynamically
        set_values = ", ".join([f"{key}=%s" for key in kwargs.keys()])
        sql_query = f"UPDATE perspectiverenters SET {set_values} WHERE U_ID=%s"
        
        # Prepare the parameter values for the query
        param_values = list(kwargs.values())
        param_values.append(U_ID)
        
        print(f"SQL Query: {sql_query}" % tuple(param_values))
        
        cursor.execute(sql_query, tuple(param_values))
        conn.commit()
        
        print("Update successful.")
    except mysql.connector.Error as err:
        print(f"Error: {err}")

# Test the update_prenters function with different sets of values
update_prenters("Badri01", budget=1000)
#update_prenters("Badri01", location="Chicago", move_in_date="2024-02-02")

#delete operations
def delete_prenters(U_ID):
    cursor.execute("DELETE FROM users WHERE U_ID=%s", (U_ID,))
    conn.commit()
    
 # Test the delete_user function  
#delete_prenters("Badri01")

#--------------------------employee operations -------------------------------
#create operation 
def create_employee(E_ID,F_name,L_name,contact,U_ID):
    try:
        cursor.execute("INSERT INTO employee (E_ID,F_name,L_name,contact,U_ID) VALUES (%s, %s, %s, %s,%s)", (E_ID,F_name,L_name,contact,U_ID))
        conn.commit()
    except mysql.connector.Error as err:
        print(f"Error: {err}")
#test create_user function
#create_employee('Pammi123', 'charan', 'pammi', 3214567654,'LM100')

 # Read operation
def read_employee(E_ID):
    cursor.execute("SELECT * FROM employee WHERE E_ID=%s", (E_ID,))
    return cursor.fetchone()
#print(read_employee('Pammi123'))   

#update operation
def update_employee(E_ID, **kwargs):
    try:
        # Build the SET part of the SQL query dynamically
        set_values = ", ".join([f"{key}=%s" for key in kwargs.keys()])
        sql_query = f"UPDATE employee SET {set_values} WHERE E_ID=%s"
        
        # Prepare the parameter values for the query
        param_values = list(kwargs.values())
        param_values.append(E_ID)
        
        print(f"SQL Query: {sql_query}" % tuple(param_values))
        
        cursor.execute(sql_query, tuple(param_values))
        conn.commit()
        
        print("Update successful.")
    except mysql.connector.Error as err:
        print(f"Error: {err}")
#test case
#update_employee("Pammi123", contact=3098765432)



#delete operation
def delete_employee(E_ID):
    cursor.execute("DELETE FROM employee WHERE E_ID=%s", (E_ID,))
    conn.commit()
    
 # Test the delete_user function  
#delete_employee("Pammi123")

#-------------------------property operations---------------------------------
#create operations
#create operation cannot be done becaue of foriegn key from user table and doesnot allow to create a new agency 
def create_property(E_ID, PropertyID, Property_type, city, address, price, description, availability):
    try:
        # Check if the provided PropertyID already exists in the property table
        cursor.execute("SELECT COUNT(*) FROM property WHERE PropertyID = %s", (PropertyID,))
        user_exists = cursor.fetchone()[0]

        if user_exists == 0:
            # If the PropertyID doesn't exist, insert the new property
            cursor.execute("INSERT INTO property (E_ID, PropertyID, Property_type, city, address, price, description, availability) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)", (E_ID, PropertyID, Property_type, city, address, price, description, availability))
            conn.commit()
            print("Property created successfully.")
        else:
            print(f"Error: Property with PropertyID {PropertyID} already exists.")
    except mysql.connector.Error as err:
        print(f"Error: {err}")

# Test usage
#create_property('E2010', '104', 'house', 'illinois', '6353 N claremont ave', 32000, 'fully furnished', '2024-12-11')


 # Read operation
def read_property(E_ID):
    cursor.execute("SELECT * FROM property WHERE E_ID=%s", (E_ID,))
    return cursor.fetchone()
#print(read_property('E2001'))  


#Update Operation
def update_property(E_ID, **kwargs):
    try:
        # Build the SET part of the SQL query dynamically
        set_values = ", ".join([f"{key}=%s" for key in kwargs.keys()])
        sql_query = f"UPDATE property SET {set_values} WHERE E_ID=%s"
        
        # Prepare the parameter values for the query
        param_values = list(kwargs.values())
        param_values.append(E_ID)
        
        print(f"SQL Query: {sql_query}" % tuple(param_values))
        
        cursor.execute(sql_query, tuple(param_values))
        conn.commit()
        
        print("Update successful.")
    except mysql.connector.Error as err:
        print(f"Error: {err}")
#test case        
#update_property("E2001", city="Aurora")

#delete operation
def delete_property(E_ID):
    cursor.execute("DELETE FROM property WHERE E_ID=%s", (E_ID,))
    conn.commit()

 # Test the delete_user function  
#delete_property("E2001")
#--------------------------------OLAP Queries----------------------------
#Query 1: Total Number of Properties by City:
'''cursor.execute("SELECT city, COUNT(*) as property_count FROM property GROUP BY city")
result = cursor.fetchall()
for row in result:
    print(f"City: {row[0]}, Property Count: {row[1]}")'''
    
#Query 2 : Average Price of Properties by Type:
'''cursor.execute("SELECT Property_type, AVG(price) as avg_price FROM property GROUP BY Property_type")
result = cursor.fetchall()
for row in result:
    print(f"Property Type: {row[0]}, Average Price: {row[1]}")'''
    
#Query 3 :  total number of bookings and the percentage of bookings 
'''cursor.execute("""
    SELECT U_ID, 
           COUNT(BookingId) AS TotalBookings,
           100 * COUNT(BookingId) / SUM(COUNT(BookingId)) OVER () AS BookingPercentage
    FROM Booking_Records
    GROUP BY U_ID
""")
result = cursor.fetchall()

for row in result:
    print(f"User ID: {row[0]}, Total Bookings: {row[1]}, Booking Percentage: {row[2]}%")'''

#Query 4 :  Calculate the cumulative sum of budget for perspective renters:
cursor.execute("""
    SELECT Name, Move_in_Date, Budget, 
           SUM(Budget) OVER (ORDER BY Move_in_Date) AS CumulativeBudget
    FROM PerspectiveRenters
""")
result = cursor.fetchall()

for row in result:
    print(f"Name: {row[0]}, Move_in_Date: {row[1]}, Budget: {row[2]}, Cumulative Budget: {row[3]}")

#   Query 5:Calculate the average number of rooms for each property type
'''cursor.execute("""
    SELECT Property.Property_Type,
           COALESCE(AVG(Houses.bedrooms), 0) AS Avg_Num_Rooms
    FROM Property
    LEFT JOIN Houses ON Property.PropertyId = Houses.houseId
    LEFT JOIN Apartments ON Property.PropertyId = Apartments.apartmentId
    GROUP BY Property.Property_Type
""")
result = cursor.fetchall()
for row in result:
    print(f"Property Type: {row[0]}, Average Number of Rooms: {row[1]}")'''


# Don't forget to close the cursor and connection when done
cursor.close()
conn.close()


