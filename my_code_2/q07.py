#------------------------------------------
# QUERY
#------------------------------------------
#
def my_query(mongodb_collection):
    #
    # QUERY BEGIN - Write your query here.
    #
    res = mongodb_collection.find({"eyeColor":"brown", "isActive": True})
    #
    # QUERY END
    #
    return res
#