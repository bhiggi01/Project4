//
//------------------------------------------
// QUERY
//------------------------------------------
//
printjson(
//
// QUERY BEGIN - Write your query here.
//
res = db.my_bank_collection.find(  {"eyeColor":"blue", "balance": {$lte : 1500}},{"balance":1, "name":1, _id:0})


//
// QUERY END
//
)
//