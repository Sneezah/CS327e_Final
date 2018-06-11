import pymysql
from db_connect import *

def rollback_Motor_Vehicle():

    is_success = True
    delete_stmt = "delete from motor_vehicle" # had to add the last little bit to avoid MySQL's safe update mode from giving us an error

    try:
        connection = create_connection()
        cursor = connection.cursor()

        delete_status = run_stmt(cursor, delete_stmt)
        if delete_status is False:
            is_success = False
            return is_success

        commit_status = do_commit(connection)
        if commit_status is False:
            is_success = False

    except pymysql.Error as e:
        print "rollback_Motor_Vehicle error: " + str(e)

    return is_success

is_success = rollback_Motor_Vehicle()
print "is success: " , is_success
