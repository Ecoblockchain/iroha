#include "MerkleRepository.hpp"

#include <leveldb/db.h>
#include <leveldb/write_batch.h>

#include <string>
#include <memory>
#include <iostream>

#include <msgpack.hpp>
#include "../util/Logger.hpp"
#include "../crypto/Merkle.hpp"

namespace TransactionRepository {
  std::shared_ptr<leveldb::DB> db;

  bool printStatus(leveldb::Status const status) {
    if (!status.ok()) {
      logger(status.ToString());
      return false;
    }
    return true;
  }

  Entity convertEntity(std::string buffer) {
    Entity entity;
    msgpack::object_handle oh = msgpack::unpack(buffer.data(), buffer.size());
    msgpack::object obj = oh.get();
    obj.convert(entity);
    return entity;
  }

  std::string convertBuffer(Entity entity) {
    msgpack::sbuffer buf;
    msgpack::pack(buf, entity);
    return buf.data();
  }

  void loadDb() {
    leveldb::DB* tmpDb;
    leveldb::Options options;
    options.create_if_missing = true;
    printStatus(leveldb::DB::Open(options, "/tmp/irohadb", &tmpDb));
    db.reset(tmpDb);
  }

  bool add(std::string uuid, Entity entity) {
    if (db == nullptr) loadDb();
    return printStatus(
      db->Put(leveldb::WriteOptions(), uuid, convertBuffer(entity)));
  }

  bool remove(std::string uuid) {
    if (db == nullptr) loadDb();
    return printStatus(db->Delete(leveldb::WriteOptions(), uuid));
  }

  bool update(std::string uuid, Entity entity) {
    if (db == nullptr) loadDb();
    std::string tmpValue;
    if (printStatus(db->Get(leveldb::ReadOptions(), uuid, &tmpValue))) {
      leveldb::WriteBatch batch;
      batch.Delete(uuid);
      batch.Put(uuid, convertBuffer(entity));
      return printStatus(db->Write(leveldb::WriteOptions(), &batch));
    }
    return false;
  }
  Entity find(std::string uuid) {
    if (db == nullptr) loadDb();
    Entity value;
    std::string readData;
    printStatus(db->Get(leveldb::ReadOptions(), uuid, &readData));
    return convertEntity(readData);
  }
}  // namespace MerkleRepository