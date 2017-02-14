CC=clang++
CFLAGS=-std=c++14 -Wall -Wextra -Wpedantic -g -O0 -DDEBUG
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

ch13: clean
	@$(CP) $(SRC)/ch13/01_ReadIntegerFile/IntegerFile.txt $(BIN)/IntegerFile.txt
	$(CC) $(CFLAGS) -o $(BIN)/01_RIF_NoExceptionHandling $(SRC)/ch13/01_ReadIntegerFile/01_NoExceptionHandling.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_RIF_BasicExceptions $(SRC)/ch13/01_ReadIntegerFile/02_BasicExceptions.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_RIF_ThrowInt $(SRC)/ch13/01_ReadIntegerFile/03_ThrowInt.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_RIF_ThrowCharStar $(SRC)/ch13/01_ReadIntegerFile/04_ThrowCharStar.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_RIF_CatchByValue $(SRC)/ch13/01_ReadIntegerFile/05_CatchByValue.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_RIF_CatchByNonConstReference $(SRC)/ch13/01_ReadIntegerFile/06_CatchByNonConstReference.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_RIF_ThrowingMultipleBasic $(SRC)/ch13/01_ReadIntegerFile/07_ThrowingMultipleBasic.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_RIF_ThrowingTwoTypes $(SRC)/ch13/01_ReadIntegerFile/08_ThrowingTwoTypes.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_RIF_MatchingAnyException $(SRC)/ch13/01_ReadIntegerFile/09_MatchingAnyException.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_RIF_TerminateHandler $(SRC)/ch13/01_ReadIntegerFile/10_TerminateHandler.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_RIF_ThrowList $(SRC)/ch13/01_ReadIntegerFile/11_ThrowList.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_RIF_noexcept $(SRC)/ch13/01_ReadIntegerFile/12_noexcept.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_RIF_UnexpectedExceptions $(SRC)/ch13/01_ReadIntegerFile/13_UnexpectedExceptions.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_SafeDivide $(SRC)/ch13/02_SafeDivide/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_Rethrow $(SRC)/ch13/03_Rethrow/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_EAP_UsingWhat $(SRC)/ch13/05_ExceptionsAndPolymorphism/01_UsingWhat.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_EAP_CatchingPolymorphicallyCorrectOne $(SRC)/ch13/05_ExceptionsAndPolymorphism/02_CatchingPolymorphicallyCorrectOne.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_EAP_CatchingPolymorphicallyCorrectTwo $(SRC)/ch13/05_ExceptionsAndPolymorphism/03_CatchingPolymorphicallyCorrectTwo.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_EAP_WritingExceptions $(SRC)/ch13/05_ExceptionsAndPolymorphism/05_WritingExceptions.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_NestedException $(SRC)/ch13/06_NestedException/NestedException.cpp
	$(CC) $(CFLAGS) -o $(BIN)/07_SU_BadCode $(SRC)/ch13/07_StackUnwinding/01_BadCode.cpp
	$(CC) $(CFLAGS) -o $(BIN)/07_SU_SmartPointer $(SRC)/ch13/07_StackUnwinding/02_SmartPointer.cpp
	$(CC) $(CFLAGS) -o $(BIN)/07_SU_CatchAndRethrow $(SRC)/ch13/07_StackUnwinding/03_CatchAndRethrow.cpp
	$(CC) $(CFLAGS) -o $(BIN)/09_ConstructorError $(SRC)/ch13/09_ConstructorError/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/10_FunctionTryBlock $(SRC)/ch13/10_FunctionTryBlock/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/11_GameBoardNoExceptions $(SRC)/ch13/11_GameBoard/NoExceptions/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/11_GameBoardWithExceptions $(SRC)/ch13/11_GameBoard/WithExceptions/*.cpp

ch14: clean
	$(CC) $(CFLAGS) -o $(BIN)/01_ArithmeticOperators $(SRC)/ch14/01_ArithmeticOperators/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_StreamOperators $(SRC)/ch14/02_StreamOperators/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_SubscriptOperator $(SRC)/ch14/03_SubscriptOperator/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_AssociativeArray $(SRC)/ch14/04_AssociativeArray/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_Functors $(SRC)/ch14/05_Functors/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_DereferenceOps $(SRC)/ch14/06_DereferenceOps/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/07_ConversionsSpreadsheetCell $(SRC)/ch14/07_ConversionsSpreadsheetCell/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/08_ConversionsPointer1 $(SRC)/ch14/08_ConversionsPointer/SpreadsheetCell.cpp $(SRC)/ch14/08_ConversionsPointer/PointerTest.cpp
	$(CC) $(CFLAGS) -o $(BIN)/08_ConversionsPointer2 $(SRC)/ch14/08_ConversionsPointer/SpreadsheetCell.cpp $(SRC)/ch14/08_ConversionsPointer/PointerBoolTest.cpp
	$(CC) $(CFLAGS) -o $(BIN)/09_Memory $(SRC)/ch14/09_Memory/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/10_ExplicitDelete $(SRC)/ch14/10_ExplicitDelete/*.cpp

ch15: clean
	$(CC) $(CFLAGS) -o $(BIN)/01_NumericLimits $(SRC)/ch15/01_numeric_limits/numeric_limits.cpp

ch16: clean
	@$(CP) $(SRC)/ch16/11_StudentEnrollment/course1.txt $(BIN)/course1.txt && $(CP) $(SRC)/ch16/11_StudentEnrollment/course2.txt $(BIN)/course2.txt && $(CP) $(SRC)/ch16/11_StudentEnrollment/course3.txt $(BIN)/course3.txt && $(CP) $(SRC)/ch16/11_StudentEnrollment/dropped.txt $(BIN)/dropped.txt
	$(CC) $(CFLAGS) -o $(BIN)/01_TestScores $(SRC)/ch16/01_TestScores/01_TestScores.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_TestScoresDynamic $(SRC)/ch16/01_TestScores/02_TestScoresDynamic.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_TestScoresIterator $(SRC)/ch16/01_TestScores/03_TestScoresIterator.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_VectorCopyAssign $(SRC)/ch16/03_VectorCopyAssign/demo.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_VectorCompare $(SRC)/ch16/04_VectorCompare/compare.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_VectorIteratorsAccesingFields $(SRC)/ch16/05_VectorIterators/01_AccessingFields.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_VectorIteratorsConstIterator $(SRC)/ch16/05_VectorIterators/02_ConstIterator.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_VectorIteratorsOps $(SRC)/ch16/05_VectorIterators/04_IteratorOps.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_VectorAddRemove $(SRC)/ch16/06_VectorAddRemove/AddRemove.cpp
	$(CC) $(CFLAGS) -o $(BIN)/07_CreateVectorOfSize $(SRC)/ch16/07_CreateVectorOfSize/CreateVectorOfSize.cpp
	$(CC) $(CFLAGS) -o $(BIN)/08_MovePushBack $(SRC)/ch16/08_MovePushBack/MovePushBack.cpp
	$(CC) $(CFLAGS) -o $(BIN)/09_RoundRobin $(SRC)/ch16/09_RoundRobin/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/10_ListSplice $(SRC)/ch16/10_ListSplice/ListSplice.cpp
	$(CC) $(CFLAGS) -o $(BIN)/11_StudentEnrollment $(SRC)/ch16/11_StudentEnrollment/Enrollment.cpp
	$(CC) $(CFLAGS) -o $(BIN)/12_ForwardList $(SRC)/ch16/12_ForwardList/forward_list.cpp
	$(CC) $(CFLAGS) -o $(BIN)/13_StdArray $(SRC)/ch16/13_std_array/std_array.cpp
	$(CC) $(CFLAGS) -o $(BIN)/14_PacketBuffer $(SRC)/ch16/14_PacketBuffer/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/15_ErrorCorrelatorPqueue $(SRC)/ch16/15_ErrorCorrelatorPqueue/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/16_ErrorCorrelatorStack $(SRC)/ch16/16_ErrorCorrelatorStack/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/17_Pair $(SRC)/ch16/17_Pair/PairTest.cpp
	$(CC) $(CFLAGS) -o $(BIN)/18_Map $(SRC)/ch16/18_MapBasics/01_Map.cpp
	$(CC) $(CFLAGS) -o $(BIN)/18_MapUniformInit $(SRC)/ch16/18_MapBasics/02_MapUniformInit.cpp
	$(CC) $(CFLAGS) -o $(BIN)/18_MapInsert $(SRC)/ch16/18_MapBasics/03_MapInsert.cpp
	$(CC) $(CFLAGS) -o $(BIN)/18_MapIndexOperator $(SRC)/ch16/18_MapBasics/04_MapIndexOperator.cpp
	$(CC) $(CFLAGS) -o $(BIN)/18_MapIterators $(SRC)/ch16/18_MapBasics/06_MapIterators.cpp
	$(CC) $(CFLAGS) -o $(BIN)/18_MapLookup $(SRC)/ch16/18_MapBasics/07_MapLookup.cpp
	$(CC) $(CFLAGS) -o $(BIN)/18_MapFind $(SRC)/ch16/18_MapBasics/08_MapFind.cpp
	$(CC) $(CFLAGS) -o $(BIN)/18_MapErase $(SRC)/ch16/18_MapBasics/09_MapErase.cpp
	$(CC) $(CFLAGS) -o $(BIN)/19_BankAccount $(SRC)/ch16/19_BankAccount/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/20_BuddyList $(SRC)/ch16/20_BuddyList/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/21_AccessControlList $(SRC)/ch16/21_AccessControlList/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/22_CustomHash $(SRC)/ch16/22_CustomHash/CustomHash.cpp
	$(CC) $(CFLAGS) -o $(BIN)/23_UnorderedMap $(SRC)/ch16/23_unordered_map/unordered_map.cpp
	$(CC) $(CFLAGS) -o $(BIN)/24_PhoneBook $(SRC)/ch16/24_PhoneBook/PhoneBook.cpp
	$(CC) $(CFLAGS) -o $(BIN)/25_ArrayIterators $(SRC)/ch16/25_ArrayIterators/ArrayIterators.cpp
	$(CC) $(CFLAGS) -o $(BIN)/26_StringContainer $(SRC)/ch16/26_StringContainers/StringExample.cpp
	$(CC) $(CFLAGS) -o $(BIN)/27_BitsetBasics $(SRC)/ch16/27_BitsetBasics/01_BitsetBasics.cpp
	$(CC) $(CFLAGS) -o $(BIN)/27_BitsetBasicsBitwiseOperators $(SRC)/ch16/27_BitsetBasics/02_BitwiseOperators.cpp
	$(CC) $(CFLAGS) -o $(BIN)/28_CableCompany $(SRC)/ch16/28_CableCompany/*.cpp
