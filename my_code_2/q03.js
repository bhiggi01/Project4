//
//------------------------------------------
// QUERY
//------------------------------------------
//
printjson(
//
// QUERY BEGIN - Write your query here.
//

res = db.my_bank_collection.find(  {"eyeColor":"blue", "balance": {$lte : 1500}})


 

//
// QUERY END
//
)
//