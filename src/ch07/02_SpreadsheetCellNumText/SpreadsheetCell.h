#ifndef SPREADSHEETCELL_H
#define SPREADSHEETCELL_H

#include <string>

class SpreadsheetCell {
public:
  void setValue(double inValue);
  double getValue() const;

  void setString(const std::string& inString);
  const std::string& getSting() const;

private:
  std::string doubleToString(double inValue) const;
  double stringToDouble(const std::string& inString) const;

  double mValue;
  std::string mString;
};

#endif /* SPREADSHEETCELL_H */
