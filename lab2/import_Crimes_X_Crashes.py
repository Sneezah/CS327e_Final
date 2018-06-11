import pymysql
import csv
import re
from db_connect import *

def import_Crimes_X_Crashes():
	 is_success = True
	 insert_stmt = "insert into Crimes_x_Crashes (case_number, address, incident_number) values(%s, %s, %s)"

	 try:
		connection = create_connection()
	 	cursor = connection.cursor()

	 	datfile = open("2015_Fatalities_Spreadsheet.csv", "rb")
	 	reader = csv.reader(datfile)
	 	
	 	for i, row in enumerate(reader):
	 		if i == 0: continue

	 		for j, val in enumerate(row):
	 			
	 			if j == 4:
	 				case_number = int(val[3:])
	 			elif j == 5:
	 				address = val
					address = re.sub("Blk", "", address, flags=re.IGNORECASE)
	 				address = re.sub("BLOCK", "", address, flags=re.IGNORECASE)
	 			else:
	 				continue

	 		qry = "SELECT incident_number FROM crimes WHERE address = '" + str(address) + "'"
	 		cursor.execute(qry)
	 		results = cursor.fetchall()
	 		for i in range(0, len(results)):
	 			insert_status = run_prepared_stmt(cursor, insert_stmt, (case_number, address, results[i]))
	 			if insert_status is False:
	 				is_success = False
	 				return is_success
	 		
	 	commit_status = do_commit(connection)
	 	if commit_status is False:
	 		is_success = False
	 except pymysql.Error as e:
	 	is_success = False
		print "import_Crimes_X_Crashes error: "+ str(e)
	 return is_success

is_success = import_Crimes_X_Crashes()
print "is_success " , is_success