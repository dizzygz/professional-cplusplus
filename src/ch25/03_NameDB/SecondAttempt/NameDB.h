#ifndef NAMEDB_H
#define NAMEDB_H

#include <map>
#include <string>

class NameDB {
public:
  NameDB(const std::string& nameFile);

  int getNameRank(const std::string& name) const;
  int getAbsoluteNumber(const std::string& name) const;

private:
  std::map<std::string, int> mNames;

  bool nameExistsAndIncrement(const std::string& name);
  void addNewName(const std::string& name);
};

#endif /* NAMEDB_H */
