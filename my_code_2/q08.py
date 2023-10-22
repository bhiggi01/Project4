#------------------------------------------
# QUERY
#------------------------------------------
#
def my_query(mongodb_collection):
    #
    # QUERY BEGIN - Write your query here.
    #
    res = mongodb_collection.find({"$or": [{"eyeColor": "brown"}, {"isActive": True}]})

    # <--- replace that with your query


    #
    # QUERY END
    #
    return res
#