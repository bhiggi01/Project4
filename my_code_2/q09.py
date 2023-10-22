#------------------------------------------
# QUERY
#------------------------------------------
#
def my_query(mongodb_collection):
    #
    # QUERY BEGIN - Write your query here.
    #
    res = mongodb_collection.find(  {"eyeColor":"blue", "balance": {"$lte" : 1500}})


    # <--- replace that with your query


#Find allzzhe staff members with blue eyes and balance smaller
#or equal than 1500.


    #
    # QUERY END
    #
    return res
#