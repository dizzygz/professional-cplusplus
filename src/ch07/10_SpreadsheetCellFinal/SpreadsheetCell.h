#ifndef _SPREADSHEETCELL_H_
#define _SPREADSHEETCELL_H_

#include <string>

class SpreadsheetCell {
public:
  SpreadsheetCell();                                 // default ctor
  SpreadsheetCell(double initialValue);              // double ctor
  SpreadsheetCell(const std::string& initialValue);  // string ctor
  SpreadsheetCell(const SpreadsheetCell& src);       // copy ctor
  virtual ~SpreadsheetCell() = default;              // destructor

  // assignment operator
  SpreadsheetCell& operator=(const SpreadsheetCell& rhs);

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

#endif /* _SPREADSHEETCELL_H_ */
