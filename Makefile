CC=clang++
CFLAGS=-std=c++14 -Wall -Wextra -Wpedantic -g -O0
SRC=src
BIN=bin
RM=rm -rf
CP=cp -rf

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

ch10: clean
	$(CC) $(CFLAGS) -o $(BIN)/01_ReferenceVariables $(SRC)/ch10/01_References/ReferenceVariables.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_ReferenceDataMembers $(SRC)/ch10/01_References/ReferenceDataMembers.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_ReferenceParameters $(SRC)/ch10/01_References/ReferenceParameters.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_OddsEvensPtrs $(SRC)/ch10/01_References/OddsEvensPtrs.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_OddsEvensRefs $(SRC)/ch10/01_References/OddsEvensRefs.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_OddsEvensVector $(SRC)/ch10/01_References/OddsEvensVector.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_RvalueReferences $(SRC)/ch10/01_References/RvalueReferences.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_SpreadsheetMoveSemantics $(SRC)/ch10/02_SpreadsheetMoveSemantics/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_Const $(SRC)/ch10/03_Const/Const.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_Constexpr1 $(SRC)/ch10/04_Constexpr/constexpr.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_Constexpr2 $(SRC)/ch10/04_Constexpr/constexprClasses.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_Static1 $(SRC)/ch10/05_Static/FirstFile.cpp $(SRC)/ch10/05_Static/AnotherFile.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_Static2 $(SRC)/ch10/05_Static/StaticsInFunctions.cpp
	$(CC) $(CFLAGS) -o $(BIN)/07_Extern $(SRC)/ch10/07_Extern/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/11_Scope $(SRC)/ch10/11_Scope/Scope.cpp
	$(CC) $(CFLAGS) -o $(BIN)/13_InitializerLists $(SRC)/ch10/13_InitializerLists/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/14_ExplicitConversionOperators $(SRC)/ch10/14_ExplicitConversionOperators/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/15_UserDefinedLiterals $(SRC)/ch10/15_UserDefinedLiterals/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/17_VarArgs1 $(SRC)/ch10/17_VarArgs/PrintfDemo.cpp
	$(CC) $(CFLAGS) -o $(BIN)/17_VarArgs2 $(SRC)/ch10/17_VarArgs/VarArgs.cpp
	$(CC) $(CFLAGS) -o $(BIN)/18_Macros $(SRC)/ch10/18_Macros/Square.cpp

ch11: clean
	$(CC) $(CFLAGS) -o $(BIN)/01_GameBoard $(SRC)/ch11/01_GameBoard/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_Grid1 $(SRC)/ch11/02_Grid/01_MethodsInHeader/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_Grid2 $(SRC)/ch11/02_Grid/02_MethodsInSeparateHeader/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_Grid3 $(SRC)/ch11/02_Grid/03_MethodsInSource/SpreadsheetCell.cpp $(SRC)/ch11/02_Grid/03_MethodsInSource/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_Grid4 $(SRC)/ch11/02_Grid/04_ExplicitInstantiations/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_GridNonType $(SRC)/ch11/03_GridNonType/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_GridNonTypeDefault $(SRC)/ch11/04_GridNonTypeDefault/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_GridMethodTemplates $(SRC)/ch11/05_MethodTemplates/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_GridMethodTemplatesNonType $(SRC)/ch11/06_MethodTemplatesNonType/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/07_GridSpecialization $(SRC)/ch11/07_GridSpecialization/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/08_GridInheritance $(SRC)/ch11/08_GridInheritance/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/09_AlternativeFunctionSyntax $(SRC)/ch11/09_AlternativeFunctionSyntax/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/10_FunctionTemplate1 $(SRC)/ch11/10_FunctionTemplate/01_FindTemplate.cpp $(SRC)/ch11/10_FunctionTemplate/SpreadsheetCell.cpp
	$(CC) $(CFLAGS) -o $(BIN)/10_FunctionTemplate2 $(SRC)/ch11/10_FunctionTemplate/02_FindTemplateSpecialization.cpp
	$(CC) $(CFLAGS) -o $(BIN)/10_FunctionTemplate3 $(SRC)/ch11/10_FunctionTemplate/03_FindTemplateOverload.cpp
	$(CC) $(CFLAGS) -o $(BIN)/10_FunctionTemplate4 $(SRC)/ch11/10_FunctionTemplate/04_FindTemplateSpecialOverload.cpp
	$(CC) $(CFLAGS) -o $(BIN)/11_FriendFunctionTemplates $(SRC)/ch11/11_FriendFunctionTemplates/main.cpp

ch12: clean
	$(CC) $(CFLAGS) -o $(BIN)/01_OutputBasics $(SRC)/ch12/01_OutputBasics/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_Write $(SRC)/ch12/02_Write/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_Put $(SRC)/ch12/03_Put/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_Flush $(SRC)/ch12/04_Flush/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_Exceptions $(SRC)/ch12/05_Exceptions/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_OutputManipulators $(SRC)/ch12/06_Manipulator/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/07_Input $(SRC)/ch12/07_Input/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/08_Get $(SRC)/ch12/08_Get/Get.cpp
	$(CC) $(CFLAGS) -o $(BIN)/09_Unget $(SRC)/ch12/09_Unget/Unget.cpp
	$(CC) $(CFLAGS) -o $(BIN)/10_Peek $(SRC)/ch12/10_Peek/Peek.cpp
	$(CC) $(CFLAGS) -o $(BIN)/11_Getline $(SRC)/ch12/11_Getline/Getline.cpp
	$(CC) $(CFLAGS) -o $(BIN)/12_ErrorCheck $(SRC)/ch12/12_ErrorCheck/ErrorCheck.cpp
	$(CC) $(CFLAGS) -o $(BIN)/13_Muffin $(SRC)/ch12/13_Muffin/Muffin.cpp
	$(CC) $(CFLAGS) -o $(BIN)/14_StringStream $(SRC)/ch12/14_StringStream/StringStream.cpp
	$(CC) $(CFLAGS) -o $(BIN)/15_FileStream1 $(SRC)/ch12/15_FileStream/FileStream1.cpp
	$(CC) $(CFLAGS) -o $(BIN)/15_FileStream2 $(SRC)/ch12/15_FileStream/FileStream2.cpp
	@$(CP) $(SRC)/ch12/16_tie/input.txt $(BIN)/input.txt && $(CC) $(CFLAGS) -o $(BIN)/16_tie $(SRC)/ch12/16_tie/tie.cpp
	@$(CP) $(SRC)/ch12/17_Bidirectional/data.txt $(BIN)/data.txt && $(CC) $(CFLAGS) -o $(BIN)/17_Bidirectional $(SRC)/ch12/17_Bidirectional/Bidirectional.cpp
