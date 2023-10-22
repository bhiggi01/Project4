# --------------------------------------------------------
#           PYTHON PROGRAM
# Here is where we are going to define our set of...
# - Imports
# - Global Variables
# - Functions
# ...to achieve the functionality required.
# When executing > python 'this_file'.py in a terminal,
# the Python interpreter will load our program,
# but it will execute nothing yet.
# --------------------------------------------------------

# --------------------------------------------------------
# IMPORTS
# --------------------------------------------------------
import sys
import os
import pymongo
import json
import codecs
import q07
import q08
import q09
import q10
import q11
import q12


# --------------------------------------------------------
# FUNCTION mongoDB_connect
# --------------------------------------------------------
def mongoDB_connect(local_False_Atlas_True,
                    server_name,
                    my_database,
                    my_collection
                   ):

    # 1. We create the output variable
    res = ()

    # 1.1. We output the mongodb_client
    mongodb_client = None

    # 1.2. We output mongodb_database (the database we connect to)
    mongodb_database = None

    # 1.3. We output mongodb_collection (the collection we connect to)
    mongodb_collection = None

    # 2. We assign mongodb_client
    if (local_False_Atlas_True == False):
        mongodb_client = pymongo.MongoClient()
    else:
        mongodb_client = pymongo.MongoClient(server_name)

    # 3. We assign mongodb_database
    mongodb_database = mongodb_client.get_database(my_database)

    # 4. We assign mongodb_collection
    mongodb_collection = mongodb_database.get_collection(my_collection)

    # 5. We assign res
    res = (mongodb_client, mongodb_database, mongodb_collection)

    # 6. We return res
    return res

# --------------------------------------------------------
# FUNCTION mongoDB_disconnect
# --------------------------------------------------------
def mongoDB_disconnect(mongodb_client):
    # 1. We close the connection with the MongoDB client
    mongodb_client.close()

# ------------------------------------------
# FUNCTION print_document_list
# ------------------------------------------
def print_document_list(document_list):
    # 1. We print a header
    print("---------------------")
    print("---               ---")
    print("---   DOCUMENTS   ---")
    print("---               ---")
    print("---------------------")

    # 2. We traverse the documents so as to print them
    index = 0
    for mongodb_document in document_list:
        # 2.1. We print the info of the document
        print("---------------------------------")
        print("--- DOCUMENT", index, "INFO   ---")
        print("---------------------------------")
        for key in sorted(mongodb_document.keys()):
            print(key, " : ", mongodb_document[key])

        # 2.2. We increase the index
        index = index + 1

# ------------------------------------------
# FUNCTION my_main
# ------------------------------------------
def my_main(local_False_Atlas_True,
            server_name,
            my_database,
            my_collection,
            program_to_run
           ):

    # 1. We connect to mongodb
    (mongodb_client, mongodb_database, mongodb_collection) = mongoDB_connect(local_False_Atlas_True,
                                                                             server_name,
                                                                             my_database,
                                                                             my_collection
                                                                            )

    # 2. We trigger the query: Unwind the collection based on the sports liked
    document_list = None
    if (program_to_run == "q07.py"):
        document_list = q07.my_query(mongodb_collection)
    elif (program_to_run == "q08.py"):
        document_list = q08.my_query(mongodb_collection)
    elif (program_to_run == "q09.py"):
        document_list = q09.my_query(mongodb_collection)
    elif (program_to_run == "q10.py"):
        document_list = q10.my_query(mongodb_collection)
    elif (program_to_run == "q11.py"):
        document_list = q11.my_query(mongodb_collection)
    elif (program_to_run == "q12.py"):
        document_list = q12.my_query(mongodb_collection)

    # 3. We print the document_list by console
    print_document_list(document_list)

    # 4. We disconnect from mongodb
    mongoDB_disconnect(mongodb_client)

# ---------------------------------------------------------------
#           PYTHON EXECUTION
# This is the main entry point to the execution of our program.
# It provides a call to the 'main function' defined in our
# Python program, making the Python interpreter to trigger
# its execution.
# ---------------------------------------------------------------
if __name__ == '__main__':
    # 1. We get the input arguments
    program_to_run = "q07.py"
    my_password = "8EKYE2AW"
    my_serverID = "zikvcu0"

    # 1.1. If we call the program from the console then we collect the arguments from it
    if (len(sys.argv) > 1):
        program_to_run = sys.argv[1]
        my_password = sys.argv[2]
        my_serverID = sys.argv[3]

    # 2. We use a 'mongod' service running either (i) in our local machine (False) or (ii) in Atlas (True)
    local_False_Atlas_True = True

    # 3. If we are using Atlas, then we need to customise the server name to access to it
    my_database = "my_database"
    my_collection = "my_bank_collection"
    my_user = "myuser"
    my_cluster = "cluster0"

    # 4. We get the server name
    server_name = ""
    if (local_False_Atlas_True == True):
        server_name = "mongodb+srv://" + my_user + ":" + my_password + "@" + my_cluster + "." + my_serverID + ".mongodb.net/" + my_database + "?retryWrites=true&w=majority"

    # 5. We call to my_main
    my_main(local_False_Atlas_True,
            server_name,
            my_database,
            my_collection,
            program_to_run
           )
