import pymysql
import csv
from db_connect import *

def import_Motor_Vehicle():
	 is_success = True
	 insert_stmt = "insert into motor_vehicle (case_number, restrainment, dlicense_status) values(%s, %s, %s)"

	 try:
		connection = create_connection()
	 	cursor = connection.cursor()

	 	datfile = open("2015_Fatalities_Spreadsheet.csv", "rb")
	 	reader = csv.reader(datfile)
	 	
	 	for i, row in enumerate(reader):
	 		if i == 0: continue

	 		check = 0
	 		for j, val in enumerate(row):
	 			
	 			if j == 0 and val == "Motor Vehicle":
	 				check = 1
	 			elif j == 4:
	 				case_number = int(val[3:])
	 			elif j == 19:
	 				restrainment = val
	 			elif j == 17:
	 				dlicense_status = val
	 			else:
	 				continue
	 		if check == 1:
	 			insert_status = run_prepared_stmt(cursor, insert_stmt, (case_number, restrainment, dlicense_status))
	 			if insert_status is False:

	 				is_success = False
	 				return is_success
	 		
	 	commit_status = do_commit(connection)
	 	if commit_status is False:
	 		is_success = False
	 except pymysql.Error as e:
		print "import_Motor_Vehicle error: "+ str(e)
	 return is_success

is_success = import_Motor_Vehicle()
print "is success: " , is_success
