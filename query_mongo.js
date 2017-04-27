use qubeship;
print ( "use qubeship;" );
print ( "db.endPoint.insertMany(" );
db.endPoint.find({"orgId":"150e18f6-0165-34ad-ad30-8577b03eadb4", $or: [ { "_id": ObjectId("58e3fad42a0603000b3e58a8") }, { "_id": ObjectId("58e3fad42a0603000b3e58a8") } ]}).toArray()
print ( ");" );
use toolchain;
print ( "use toolchain;" );
print ( "db.Toolchain.insertMany(" );
db.Toolchain.find({"orgId":"150e18f6-0165-34ad-ad30-8577b03eadb4", $or: [ { "_id": ObjectId("58e56a68acac5a0020e2b930") }, { "_id": ObjectId("58e3fad09a148400216611cc") } ]}).toArray()
print ( ");" );


use opinions;
print ( "use opinions;" );
print ( "db.Opinion.insertMany(" );
db.Opinion.find({"orgId":"150e18f6-0165-34ad-ad30-8577b03eadb4", $or: [ { "_id": ObjectId("58e5596a13d0cc000e88a95d") } ]}).toArray()
print ( ");" );