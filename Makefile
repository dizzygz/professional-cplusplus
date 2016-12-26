CC=clang++
CFLAGS=-std=c++14 -Wall -Wextra -Wpedantic -g -O0
SRC=src
BIN=bin
RM=rm -rf

# The Cleaner
clean:
	@$(RM) $(BIN)/*

ch01: clean
	$(CC) $(CFLAGS) -o $(BIN)/01_helloworld $(SRC)/ch01/01_helloworld/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_namespaces $(SRC)/ch01/02_namespaces/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_variables $(SRC)/ch01/03_variables/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_typetest $(SRC)/ch01/04_typetest/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_enums $(SRC)/ch01/05_enums/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_structs $(SRC)/ch01/06_structs/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/07_arrays $(SRC)/ch01/07_arrays/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/08_functions $(SRC)/ch01/08_functions/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/09_nullpointerconstant $(SRC)/ch01/09_nullpointerconstant/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/10_strings $(SRC)/ch01/10_strings/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/11_exceptions $(SRC)/ch01/11_exceptions/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/12_AirlineTicket $(SRC)/ch01/12_AirlineTicket/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/13_vectortest $(SRC)/ch01/13_vectortest/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/14_EmployeeDB $(SRC)/ch01/14_EmployeeDB/*.cpp

ch02: clean
	$(CC) $(CFLAGS) -o $(BIN)/01_CStrings $(SRC)/ch02/01_CStrings/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_CppStrings $(SRC)/ch02/02_CppStrings/main.cpp

ch03: clean
	$(CC) $(CFLAGS) -o $(BIN)/01_InsertionSort $(SRC)/ch03/01_InsertionSort/main.cpp

ch07: clean
	$(CC) $(CFLAGS) -o $(BIN)/01_SpreadsheetCellNumOnly $(SRC)/ch07/01_SpreadsheetCellNumOnly/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_SpreadsheetCellNumText $(SRC)/ch07/02_SpreadsheetCellNumText/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_SpreadsheetCellThisPointer $(SRC)/ch07/03_SpreadsheetCellThisPointer/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_SpreadsheetCellCtors $(SRC)/ch07/04_SpreadsheetCellCtors/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_SpreadsheetCellDefaultCtor $(SRC)/ch07/05_SpreadsheetCellDefaultCtor/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_SpreadsheetCellCopyCtor $(SRC)/ch07/06_SpreadsheetCellCopyCtor/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/07_InitializerListCtor $(SRC)/ch07/07_InitializerListCtor/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/08_SpreadsheetCellDestructor $(SRC)/ch07/08_SpreadsheetCellDestructor/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/09_SpreadsheetCellAssign $(SRC)/ch07/09_SpreadsheetCellAssign/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/10_SpreadsheetCellFinal $(SRC)/ch07/10_SpreadsheetCellFinal/*.cpp

ch08: clean
	$(CC) $(CFLAGS) -o $(BIN)/01_Spreadsheet $(SRC)/ch08/01_Spreadsheet/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_SpreadsheetNoCopyAssign $(SRC)/ch08/02_SpreadsheetNoCopyAssign/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_SpreadsheetDataMembers $(SRC)/ch08/03_SpreadsheetDataMembers/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_SpreadsheetCellMethods $(SRC)/ch08/04_SpreadsheetCellMethods/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_SpreadsheetDefaultParams $(SRC)/ch08/05_SpreadsheetDefaultParams/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_NestedClasses $(SRC)/ch08/06_NestedClasses/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/07_SpreadsheetCellColors $(SRC)/ch08/07_SpreadsheetCellColors/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/08_FriendMethod $(SRC)/ch08/08_FriendMethod/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/09_Friends $(SRC)/ch08/09_Friends/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/10_OperatorOverloading1 $(SRC)/ch08/10_OperatorOverloading/AddFirstAttempt/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/10_OperatorOverloading2 $(SRC)/ch08/10_OperatorOverloading/AddSecondAttempt/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/10_OperatorOverloading3 $(SRC)/ch08/10_OperatorOverloading/GlobalOperators/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/11_SeparateImpl $(SRC)/ch08/11_SeparateImpl/*.cpp

ch09: clean
	$(CC) $(CFLAGS) -o $(BIN)/01_WeatherPrediction $(SRC)/ch09/01_WeatherPrediction/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_ConstructorChain $(SRC)/ch09/02_ConstructorChain/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_Book $(SRC)/ch09/03_Book/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_PolymorphicSpreadsheet $(SRC)/ch09/04_PolymorphicSpreadsheet/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_DogBird $(SRC)/ch09/05_DogBird/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_Cherry $(SRC)/ch09/06_Cherry/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/07_MilesEstimator $(SRC)/ch09/07_MilesEstimator/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/08_VirtualInheritance $(SRC)/ch09/08_VirtualInheritance/*.cpp
