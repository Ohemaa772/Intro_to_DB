import mysql.connector

try:
    # Connect to MySQL server (no database yet)
    connection = mysql.connector.connect(
        host="localhost",       # Your MySQL host
        user="root",            # Your MySQL username
        password="yourpassword" # Your MySQL password
    )

    if connection.is_connected():
        cursor = connection.cursor()
        # Create the database if it doesn't exist
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")
        print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as e:
    print(f"Error while connecting to MySQL: {e}")

finally:
    # Close the connection
    if 'cursor' in locals():
        cursor.close()
    if 'connection' in locals() and connection.is_connected():
        connection.close()
