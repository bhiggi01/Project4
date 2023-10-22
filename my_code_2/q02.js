//
//------------------------------------------
// QUERY
//------------------------------------------
//
printjson(
//
// QUERY BEGIN - Write your query here.
//
res = db.my_bank_collection.find(  { "$or":[{"eyeColor":"brown"},{"isActive":true}]})
// QUERY END
//
)
//