#ifndef STRINGSPREADSHEETCELL_H
#define STRINGSPREADSHEETCELL_H

#include "SpreadsheetCell.h"
class DoubleSpreadsheetCell;

class StringSpreadsheetCell : public SpreadsheetCell {
public:
  StringSpreadsheetCell();
  StringSpreadsheetCell(const DoubleSpreadsheetCell& inDoubleCell);

  virtual void set(const std::string& inString) override;
  virtual std::string getString() const override;

private:
  std::string mValue;
};

#endif /* STRINGSPREADSHEETCELL_H */
