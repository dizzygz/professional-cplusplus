#ifndef SPREADSHEETCELL_H
#define SPREADSHEETCELL_H

#include <string>

class SpreadsheetCell {
public:
  SpreadsheetCell();                                 // default ctor
  SpreadsheetCell(double initialValue);              // ctor
  SpreadsheetCell(const std::string& initialValue);  // ctor
  SpreadsheetCell(const SpreadsheetCell& src);       // copy ctor

  void setValue(double inValue);
  double getValue() const;

  void setString(const std::string& inString);
  const std::string& getString() const;

private:
  std::string doubleToString(double inValue) const;
  double stringToDouble(const std::string& inString) const;

  double mValue;
  std::string mString;
};

#endif /* SPREADSHEETCELL_H */
