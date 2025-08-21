from database_connectiion import db_connect 



#establishing a connection to the database
class_connection = db_connect()
method_connection = class_connection.connect_to_db()

#initializing the cursor
cursor = method_connection.cursor()

#writing the query

average_query = """
SELECT 

(SELECT AVG(grade_obtained) FROM linux_grades) AS linux_avg,
(SELECT AVG(grade_obtained) FROM python_grades) AS python_avg

"""
cursor.execute(average_query)
average_score = cursor.fetchone()

print(f"Average Linux score: {round(average_score[0], 3)} ")
print(f"Average Python score: {round(average_score[1], 3)} ")


