import mysql.connector
from mysql.connector import Error

try:
    connection = mysql.connector.connect(
        host='localhost',
        user='root',          # replace 'root' with your MySQL username
        password='bella23703'  # replace 'YOUR_PASSWORD' with your MySQL password
    )

    if connection.is_connected():
        print("Connected to MySQL server successfully!")

        cursor = connection.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

except Error as e:
    print(f"Error while connecting to MySQL: {e}")

finally:
    if connection.is_connected():
        cursor.close()
        connection.close()
        print("MySQL connection is closed")
