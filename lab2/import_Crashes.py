import pymysql
import csv
import re
from db_connect import *

def import_Crashes():
	 is_success = True
	 insert_stmt = "insert into Fatal_Crashes (crash_type, case_number, address, time_of_crash, road_type) \
	  values(%s, %s, %s, %s, %s)"

	 try:

		connection = create_connection()
		cursor = connection.cursor()

	 	datfile = open("2015_Fatalities_Spreadsheet.csv", "rb")
	 	reader = csv.reader(datfile)
	 	
	 	for i, row in enumerate(reader):
	 		if i == 0: continue

	 		for j, val in enumerate(row):
	 			if j == 0:
	 				crash_type = str(val)
	 			elif j == 4:
	 				case_number = int(val[3:])
	 			elif j == 11:
	 				time_of_crash = str(val)
	 				time_of_crash = re.sub(":","", time_of_crash)
	 			elif j == 5:
	 				address = str(val)
	 				address = re.sub("Blk", "", address, flags=re.IGNORECASE)
	 				address = re.sub("BLOCK", "", address, flags=re.IGNORECASE)
	 			elif j == 20:
	 				road_type = val
	 			else:
	 				continue

	 		insert_status = run_prepared_stmt(cursor, insert_stmt, (crash_type, case_number, address, time_of_crash, road_type))
	 		if insert_status is False:

	 			is_success = False
	 			return is_success
	 		
	 	commit_status = do_commit(connection)
	 	if commit_status is False:
	 		is_success = False
	 except pymysql.Error as e:
	 	is_success = False
		print "import_Crashes error: "+ str(e)

	 return is_success
is_success = import_Crashes()
print "is_success ", is_success

		
