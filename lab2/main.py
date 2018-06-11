import pymysql
from rollback_Crimes import *
from rollback_Crashes import *
from rollback_Crimes_X_Crashes import *
from rollback_Motor_Vehicle import *
from rollback_Motorcycle import *
from rollback_Bicycle import *
from import_Crimes import *
from import_Crashes import *
from import_Crimes_X_Crashes import *
from import_Motor_Vehicle import *
from import_Motorcycle import *
from import_Bicycle import *
from db_connect import *

#rollback Crimes_X_Crashes
is_success = rollback_Crimes_X_Crashes()
if is_success == True:
	print "rollback_Crimes_X_Crashes: successful"
else:
	print "rollback_Crimes_X_Crashes: failure"

#rollback Motorcycle
is_success = rollback_Motorcycle()
if is_success == True:
	print "rollback_Motorcycle: successful"
else:
	print "rollback_Motorcycle: failure"

#rollback Motor_Vehicle
is_success = rollback_Motor_Vehicle()
if is_success == True:
	print "rollback_Motor_Vehicle: successful"
else:
	print "rollback_Motor_Vehicle: failure"

#rollback Bicycle
is_success = rollback_Bicycle()
if is_success == True:
	print "rollback_Bicycle: successful"
else:
	print "rollback_Bicycle: failure"

#rollback Crimes
is_success = rollback_Crimes()
if is_success == True:
	print "rollback_Crimes: successful"
else:
	print "rollback_Crimes: failure"

#rollback Crashes
is_success = rollback_Crashes()
if is_success == True:
	print "rollback_Crashes: successful"
else:
	print "rollback_Crashes: failure"

#import Crimes
is_success = import_Crimes()
if is_success == True:
	print "import_Crimes: successful"
else:
	print "import_Crimes: failure"

#import Crashes
is_success = import_Crashes()
if is_success == True:
	print "import_Crashes: successful"
else:
	print "import_Crashes: failure"

#import Crimes_X_Crashes
is_success = import_Crimes_X_Crashes()
if is_success == True:
	print "import_Crimes_X_Crashes: successful"
else:
	print "import_Crimes_X_Crashes: failure"

#import Motorcycle
is_success = import_Motorcycle()
if is_success == True:
	print "import_Motorcycle: successful"
else:
	print "import_Motorcycle: failure"

#import Motor Vehicle
is_success = import_Motor_Vehicle()
if is_success == True:
	print "import_Motor_Vehicle: successful"
else:
	print "import_Motor_Vehicle: failure"

#import Bicycle
is_success = import_Bicycle()
if is_success == True:
	print "import_Bicycle: successful"
else:
	print "import_Bicycle: failure"

