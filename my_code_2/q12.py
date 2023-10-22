#------------------------------------------
# QUERY
#------------------------------------------
#
import pymongo
#
def my_query(mongodb_collection):
    #
    # QUERY BEGIN - Write your query here.

    res = mongodb_collection.find().sort("age", 1).limit(10)

    #
    # QUERY END
    #
    return res
#

