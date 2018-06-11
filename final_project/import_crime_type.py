import pymysql
import csv
import re
from db_connect import *

def import_Crimes():

	is_success = True
	insert_statement = "insert into crime_type (type_of_crime) values (%s) \
	ON DUPLICATE KEY UPDATE `type_of_crime` = `type_of_crime`"

	try:

		connection = create_connection()
		cursor = connection.cursor()

		csvfile = open("APD_Incident_Extract_YTD.csv", "rb")
		reader = csv.reader(csvfile)

		for i, row in enumerate(reader):

			if i == 0: continue

			for j, val in enumerate(row):

				if j == 1:
					type_of_crime = val

				else:
					continue

			insert_status = run_prepared_stmt(cursor, insert_statement, (type_of_crime))

			if insert_status is False:
				is_success = False
				return is_success

		commit_status = do_commit(connection)
		if commit_status is False:
	 		is_success = False

	except pymysql.Error as e:
		is_success = False
		print "import_Crimes Error: " + str(e)

	return is_success

is_success = import_Crimes()
print "is_success: ", is_success