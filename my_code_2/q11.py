#------------------------------------------
# QUERY
#------------------------------------------
#
def my_query(mongodb_collection):
    #
    # QUERY BEGIN - Write your query here.
    #
    res = mongodb_collection.find({"age": {"$gt": 30}}).limit(5)




    #
    # QUERY END
    #
    return res
#