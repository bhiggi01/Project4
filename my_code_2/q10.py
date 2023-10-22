#------------------------------------------
# QUERY
#------------------------------------------
#
def my_query(mongodb_collection):
    #
    # QUERY BEGIN - Write your query here.
    #
    res = mongodb_collection.find(  {"eyeColor":"blue", "balance": {"$lte" : 1500}},{"balance":1, "name":1, "_id":0})





    #
    # QUERY END
    #
    return res
#