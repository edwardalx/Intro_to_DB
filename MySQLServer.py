import mysql.connector
mydb = mysql.connector.connect( 
    host = "localhost",
    username = "root",
    password = "Edward@alx2025"
)
try:
    mycursor = mydb.cursor()
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    mydb.commit()
except mysql.connector.Error:
    print("These is an error with the connector") 