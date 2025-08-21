import mysql.connector
from mysql.connector import Error


class db_connect():

    #constructor to initialise all connection variables and details.
    def __init__(self):
        self.host ="alu-dbclass-alustudent-60aa.f.aivencloud.com"  # Aiven MySQL host address
        self.port = "10205"  # Default MySQL port
        self.database = "ALU_student_performance_DB"
        self.user = "avnadmin"
        self.password = "AVNS_dy3dbngTIiRnVYkeqQu"
        self.ssl_ca = r"C:\Users\san\Desktop\ALU_student_performance_DB\ca.pem"
        
    #function to establish the database connection
    def connect_to_db(self):
        try:
            connection = mysql.connector.connect(
                host = self.host,
                port = self.port,
                database = self.database,
                user = self.user,
                password = self.password,
                ssl_ca = self.ssl_ca
            )
            #print this, if successful
            if connection.is_connected():
                print("Connection established")
                return connection

        except Error as e:
            print(f"\nError: {e}")
            return None

    # Close database connection
    def close_connection(self, connection):
        if connection.is_connected():
            connection.close()

connection = db_connect()
connection.connect_to_db()