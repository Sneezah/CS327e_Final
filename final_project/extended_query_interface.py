import pymysql
from db_connect import*

#function for showing the main menu
def show_menu():
	print "Welcome to the Crimes and Fatal Crashes database."
	print "Select a query from the list below, or enter '12' to exit."
	print "1: View all crimes of a type."
	print "2: View all crashes of a type."
	print "3: View count of all crashes involving dumb motorcyclists without helmets."
	print "4: View count of all crashes on local streets."
	print "5: View all crimes that have a matching address with a crash."
	print "6: View all crimes that do not have a matching address with a crash (WARNING: LARGE)."
	print "7: View all distinct crime types."
	print "8: View details of crimes in crimes_x_crashes junction table."
	print "9: View all crimes and crashes that occurred simultaneously."
	print "10: Look up crime by exact incident number."
	print "11: Open query menu for data views."
	print "12: Open query menu for twitter JSON data."
	print "13: Exit program."

#query functions, see queries.sql for logic/comments
def pick_crash_type(x):
	
	is_success = True
	query = "SELECT * FROM `fatal_crashes` WHERE `crash_type` = '" + str(x) + "' \
			 ORDER BY `case_number` ASC"
	
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "crash type query failed: " + str(e)

	return is_success

def pick_crime_type(x):
	
	is_success = True
	query = "SELECT * FROM `crimes` WHERE `type_of_crime` = '" + str(x) + "' \
			 ORDER BY `incident_number` ASC"
	
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "crime type query failed: " + str(e)

	return is_success

def count_helmets():

	is_success = True
	query = "SELECT COUNT(m.helmet) FROM motorcycle m WHERE m.helmet != 'helmet'"
 
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "No helmet query failed: " + str(e)

	return is_success

def count_crashes():

	is_success = True
	query = "SELECT COUNT(f.road_type) FROM fatal_crashes f WHERE f.road_type = 'Local Street'"
 
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "Local crashes query failed: " + str(e)

	return is_success

def select_same_address():

	is_success = True
	query = "SELECT c.address, c.incident_number, f.case_number FROM crimes c JOIN fatal_crashes f  WHERE c.address = f.address ORDER BY c.incident_number ASC"
 
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "Same address query failed: " + str(e)

	return is_success

def select_different_address():

	is_success = True
	query = "SELECT * FROM crimes C LEFT JOIN crimes_x_crashes X ON C.incident_number = X.incident_number ORDER BY C.incident_number ASC"
 
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "Different addresses query failed: " + str(e)

	return is_success

def select_distinct_crimes():

	is_success = True
	query = "SELECT DISTINCT(type_of_crime) FROM crimes C ORDER BY C.type_of_crime ASC"
 
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "Distinct crimes query failed: " + str(e)

	return is_success

def select_cross_details():

	is_success = True
	query = "SELECT C.incident_number, C.time_of_crime, C.type_of_crime, C.address FROM crimes C RIGHT JOIN crimes_x_crashes X ON C.incident_number = X.incident_number ORDER BY C.incident_number ASC"
 
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "Crime cross details query failed: " + str(e)

	return is_success

def select_before_time(x):

	is_success = True
	query = "SELECT crimes.time_of_crime as Time, crimes.incident_number, fatal_crashes.case_number FROM crimes JOIN fatal_crashes WHERE crimes.time_of_crime = cast(fatal_crashes.time_of_crash as SIGNED) GROUP BY time_of_crime HAVING crimes.time_of_crime < '" + str(x) + "'"
 
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "Before time query failed: " + str(e)

	return is_success

def select_after_time(x):

	is_success = True
	query = "SELECT crimes.time_of_crime as Time, crimes.incident_number, fatal_crashes.case_number FROM crimes JOIN fatal_crashes WHERE crimes.time_of_crime = cast(fatal_crashes.time_of_crash as SIGNED) GROUP BY time_of_crime HAVING crimes.time_of_crime >= '" + str(x) + "'"
 
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "After time query failed: " + str(e)

	return is_success

def pick_case_number(x):
	
	is_success = True
	
	query = "SELECT * FROM `fatal_crashes` WHERE `case_number` = '"+ str(x) +"'"
	
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "Case number query failed: " + str(e)

	return is_success

def select_nonhighway():

	is_success = True
	query = "SELECT * from crash_details WHERE road_type != 'IH35' AND road_type != 'Other highway'"
 
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "Nonhighway query failed: " + str(e)

	return is_success

def select_pedestrian():

	is_success = True
	query = "SELECT * from crash_details WHERE crash_type = 'Pedestrian'"
 
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "Pedestrian query failed: " + str(e)

	return is_success

def count_weed():

	is_success = True
	query = "SELECT COUNT(*) FROM crime_details c WHERE c.type_of_crime = 'POSS MARIJUANA'"
 
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "Weed query failed: " + str(e)

	return is_success

def count_wrong_time():

	is_success = True
	query = "SELECT * FROM crime_details c WHERE c.time_of_crime = 1620"
 
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "Wrong time query failed: " + str(e)

	return is_success

def count_early_birds():

	is_success = True
	query = "SELECT * FROM crime_details c WHERE c.type_of_crime = 'SUICIDE' and c.time_of_crime < 900"
 
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "Early birds query failed: " + str(e)

	return is_success

def date():

	is_success = True
	query = "SELECT created_at, tweet, type_of_crime FROM tweets ORDER BY created_at ASC;"
 
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "Tweet date query failed. " + str(e)

	return is_success

def screen_name():

	is_success = True
	query = "SELECT screen_name, COUNT(*) AS `num` FROM tweets GROUP BY screen_name ASC;"
 
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "Screen name query failed. " + str(e)

	return is_success

def crime_type_freq():

	is_success = True
	query = "SELECT type_of_crime, COUNT(*) AS `num` FROM tweets GROUP BY type_of_crime ASC;"
 
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "Crime type frequency query failed. " + str(e)

	return is_success

def matching():

	is_success = True
	query = "SELECT crimes.type_of_crime, crimes.incident_number, tweets.tweet_id FROM crimes JOIN tweets ON crimes.type_of_crime = tweets.type_of_crime ORDER BY crimes.type_of_crime ASC;"
 
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "Matching query failed. " + str(e)

	return is_success

def matching_junction():

	is_success = True
	query = "SELECT crimes.type_of_crime, crimes.incident_number, tweets.tweet_id FROM crimes JOIN crimes_x_crashes ON crimes_x_crashes.incident_number = crimes.incident_number JOIN tweets ON crimes.type_of_crime = tweets.type_of_crime ORDER BY crimes.incident_number ASC;"
 
	try: 
		connection = create_connection()
		cursor = connection.cursor()

		query_status = run_stmt(cursor, query)
		if query_status is False:
			is_success = False

		results = cursor.fetchall()
		print ""    
		for row in results:
			print row
		print "" 

	except pymysql.Error as e:
		is_success = False
		print "Matching junction query failed. " + str(e)

	return is_success

def main():
	#show main menu when not running query or in sub-directory
	while True:
		show_menu()
		#selection variable, decides what query to run/directory to navigate to
		select = int(input("Enter your choice: "))
		while select <= 0 or select >= 14:
			#prevent erroneous entries
			select = int(input("Invalid choice, try again:"))
		print(select)

		if select == 1:
			#ask for user input for crime type query
			crime = raw_input("What crime type would you like to see? Examples include: ACCIDENTAL DRUG OVERDOSE, ACCIDENTAL DEATH, COUNTERFEITING, EVADING VEHICLE, MANSLAUGHTER: \n")
			#prevent SQL injections
			if crime == "; drop table" or crime == "; truncate table" or \
			crime == "; delete from" or crime == "or 1=1":
				print ("Please don't hack our database! :(")
				continue
			#run query
			pick_crime_type(crime)
			print ("Query finished.")
			print ("")
			continue

		if select == 2:
			#ask for user input for crash type query
			crash = raw_input("What crash type would you like to see? Choose from: Motor Vehicle, Motorcycle, Bicycle, Pedestrian: ")
			#prevent SQL injections
			if crash == "; drop table" or crash == "; truncate table" or \
			crash == "; delete from" or crash == "or 1=1":
				print ("Please don't hack our database! :(")
				continue
			#run query
			pick_crash_type(crash)
			print ("Query finished.")
			print ("")
			continue

		if select == 3:
			#run no helmet query
			count_helmets()
			print ("Query finished.")
			print ("")
			continue

		if select == 4:
			#run local crashes query
			count_crashes()
			print ("Query finished.")
			print ("")
			continue

		if select == 5:
			#run same address query
			select_same_address()
			print ("Query finished.")
			print ("")
			continue

		if select == 6:
			#run different address query (WARNING: QUERY IS VERY LARGE)
			select_different_address()
			print ("Query finished.")
			print ("")
			continue

		if select == 7:
			#run distinct crime type query
			select_distinct_crimes()
			print ("Query finished.")
			print ("")
			continue

		if select == 8:
			#run query for getting details of crimes in junction table
			select_cross_details()
			print ("Query finished.")
			print ("")
			continue

		if select == 9:
			#prompt user to decide a query
			print ("Do you want this data to be before or after a specific time? Enter '1' for before, '2' for after. Enter '3' to return to main menu.")
			print ("")
			#get input, prevent invalid inputs
			befaft = int(input("Enter a choice: "))
			while befaft <= 0 or befaft > 3:
				befaft = int(input("Invalid choice. Try again: "))
			if befaft == 1:
				#ask user for valid time
				time = int(input("Input a time in military hours: "))
				while time <= 0 or time > 2400:
					time = int(input("Invalid time. Try again: "))
				#run select before time query
				select_before_time(time)
				print ("Query finished.")
				print ("")
				continue
			if befaft == 2:
				#ask user for valid time
				time = int(input("Input a time in military hours: "))
				while time <= 0 or time > 2400:
					time = int(input("Invalid time. Try again: "))
				#run select after time query
				select_after_time(time)
				print ("Query finished.")
				print ("")
				continue
			if befaft == 3:
				#exit subdirectory, return to main
				print ("")
				continue

		if select == 10:
			#prompt user to enter a case number to search
			case = int(input("Please enter a case number: "))
			while case <= 0:
				case = int(input("Invalid case number. Try again: "))
			#run case number search query
			pick_case_number(case)
			print ("Query finished.")
			print ("")
			continue

		if select == 11:
			#prompt user to select a view to query
			print ("Which view would you like to query? Enter '3' to exit.")
			print ("1. Crimes details view.")
			print ("2. Crashes details view.")
			choice = int(input("Enter a choice: "))
			while choice <= 0 or choice > 3:
				choice = int(input("Invalid choice. Try again: "))
			#if crime details view selected
			if choice == 1:
				#show options
				print ("Select a query.")
				print ("1. Marijuana arrest count.")
				print ("2. 4:20 PM arrests.")
				print ("3. Early morning suicides.")
				selection = int(input("Enter a choice: "))
				while selection <= 0 or selection > 3:
					selection = int(input("Invalid choice. Try again: "))
				if selection == 1:
					#run marijuana charge query
					count_weed()
					print ("Query finished.")
					print ("")
					continue
				if selection == 2:
					#run bad time query
					count_wrong_time()
					print ("Query finished.")
					print ("")
					continue
				if selection == 3:
					#run suicide query
					count_early_birds()
					print ("Query finished.")
					print ("")
					continue
			#if crash details view selected
			if choice == 2:
				#show options
				print ("Select a query.")
				print ("1. View nonhighway crashes.")
				print ("2. View all pedestrian fatalities.")
				selection = int(input("Enter a choice: "))
				while selection <= 0 or selection > 2:
					selection = int(input("Invalid choice. Try again: "))
				if selection == 1:
					#run nonhighway query
					select_nonhighway()
					print ("Query finished.")
					print ("")
					continue
				if selection == 2:
					#run pedestrian query
					select_pedestrian()
					print ("Query finished.")
					print ("")
					continue
			#exit subdirectory, return to main
			if choice == 3:
				print ("")
				continue

		if select == 12:
			#prompt user to select a query
			print ("Which JSON query would you like to see? Choose '6' to exit.")
			print ("1. View all tweets by date created.")
			print ("2. View frequencies of screen name in tweets.")
			print ("3. View frequencies of crime types in tweets.")
			print ("4. View all tweets and crimes with matching crime types.")
			print ("5. View all tweets and crimes with matching crime types,\
			but only for crimes in the junction table.")
			selection = int(input("Enter a choice: "))
			while selection <= 0 or selection > 6:
				selection = int(input("Invalid choice. Try again: "))
			if selection == 1:
				#run date created query
				date()
				print ("Query finished.")
				print ("")
				continue
			if selection == 2:
				#run screen name query
				screen_name()
				print ("Query finished.")
				print ("")
				continue
			if selection == 3:
				#run crime type frequency query
				crime_type_freq()
				print ("Query finished.")
				print ("")
				continue
			if selection == 4:
				#run matching crime type query
				matching()
				print ("Query finished.")
				print ("")
				continue
			if selection == 5:
				#run matching crime type and junction query
				matching_junction()
				print ("Query finished.")
				print ("")
				continue
			if selection == 6:
				#exit subdirectory, return to main menu
				print("")
				continue

		if select == 13:
			#close database
			print ("")
			print ("Database closed.")
			break

		else:
			#error message for bad input
			print ("")
			print ("Invalid input. Please try again.")
			print ("")
main()