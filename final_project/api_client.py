import json
import tweepy
import time
from db_connect import *

API_KEY = 'XwxsO2bZzZKIt3roTUd8dgnOS'
API_SECRET = '92A6mNkVRhkn1ExkL7CmgfRdYnaJ0xaS8PJiit5Y1yxeGUR0cG'
TOKEN_KEY = '803404181528858625-KZKLh9dzO5RZxSGBLEjJISNZmQaFt5C'
TOKEN_SECRET = '8wZdmus3VDOsF5bGQCygaowPF6vPJrS0DnanPFysh5QMX'

def get_api_instance():
  auth = tweepy.OAuthHandler(API_KEY, API_SECRET)
  auth.set_access_token(TOKEN_KEY, TOKEN_SECRET)
  api_inst = tweepy.API(auth)
  return api_inst

def do_data_pull(api_inst):

  try: 
    conn = create_connection()
    db_cursor = conn.cursor()
    search = ["RECKLESS DRIVING", "CRASH/INJURY"]

    for i in range (0, len(search)):
      crime_type = search[i]
      twitter_query = crime_type
      print "twitter_query: " + twitter_query
      twitter_cursor = tweepy.Cursor(api_inst.search, q=twitter_query, lang="en")

    for page in twitter_cursor.pages():
      for item in page:
        json_str = json.dumps(item._json)
        print "found a " + crime_type + " tweet"
        insert_stmt = "insert into tweets(tweet_doc, type_of_crime) values(%s, %s)"
        run_prepared_stmt(db_cursor, insert_stmt, (json_str, crime_type))
        do_commit(conn)

  except pymysql.Error as e:
    print "pymysql error: " + str(e)
  
  except tweepy.TweepError as twe:
    print "got a TweepError: " + twe.message
    if twe.message.endswith("429"):
      print "got rate limit error, sleeping for 15 minutes"
      time.sleep(60*15)
      print "finished sleeping. re-trying do_data_pull"
      do_data_pull(api_inst)

api_inst = get_api_instance()
do_data_pull(api_inst)