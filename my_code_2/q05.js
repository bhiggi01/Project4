//
//------------------------------------------
// QUERY
//------------------------------------------
//
printjson(
//
// QUERY BEGIN - Write your query here.
//

 res = db.my_bank_collection.find({"age":{$gt:30}}).limit(5)

//
// QUERY END
//
)
//