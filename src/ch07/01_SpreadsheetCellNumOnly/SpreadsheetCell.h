#ifndef SPREADSHEETCELL_H
#define SPREADSHEETCELL_H

class SpreadsheetCell {
public:
  void setValue(double inValue);
  double getValue() const;

private:
  double mValue;
};

#endif /* SPREADSHEETCELL_H */
