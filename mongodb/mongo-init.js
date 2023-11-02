db = new Mongo().getDB("Fortune_Tracker");

db.createCollection('Transaction', { capped: false });
db.createCollection('Ledger', { capped: false });

db.Transaction.createIndex({ RecordTime: 1 });
