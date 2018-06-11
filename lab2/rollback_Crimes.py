import pymysql
from db_connect import *

def rollback_Crimes():

    is_success = True
    delete_stmt = "delete from Crimes"

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
        print "rollback_Crimes error: " + e.strerror

    return is_success

is_success = rollback_Crimes()
print "is_success: " , is_success