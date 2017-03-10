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

ch17: clean
	$(CC) $(CFLAGS) -o $(BIN)/01_AlgorithmOverview_Find $(SRC)/ch17/01_AlgorithmOverview/01_Find.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_AlgorithmOverview_FindIf $(SRC)/ch17/01_AlgorithmOverview/02_FindIf.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_AlgorithmOverview_FindIfLambda $(SRC)/ch17/01_AlgorithmOverview/03_FindIfLambda.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_AlgorithmOverview_Accumulate $(SRC)/ch17/01_AlgorithmOverview/04_Accumulate.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_Lambdas_Basic $(SRC)/ch17/02_Lambdas/01_LambdaBasic.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_Lambdas_FindIfGeneric $(SRC)/ch17/02_Lambdas/02_FindIfGenericLambda.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_Lambdas_MultiplyBy2 $(SRC)/ch17/02_Lambdas/03_multiplyBy2Lambda.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_Lambdas_Callback $(SRC)/ch17/02_Lambdas/04_callback.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_Lambdas_CountIf $(SRC)/ch17/02_Lambdas/05_count_if.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_Lambdas_CountIfRef $(SRC)/ch17/02_Lambdas/06_count_if_ref.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_Lambdas_Generate $(SRC)/ch17/02_Lambdas/07_generate.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_Functors_Arithmetic $(SRC)/ch17/03_FunctionObjects/01_Arithmetic.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_Functors_QueueLess $(SRC)/ch17/03_FunctionObjects/02_QueueLess.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_Functors_QueueGreater $(SRC)/ch17/03_FunctionObjects/03_QueueGreater.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_Functors_LogicalFunctors $(SRC)/ch17/03_FunctionObjects/04_LogicalFunctors.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_Functors_Bind $(SRC)/ch17/03_FunctionObjects/05_bind.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_Functors_Ref $(SRC)/ch17/03_FunctionObjects/06_Ref.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_Functors_Binders $(SRC)/ch17/03_FunctionObjects/07_Binders.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_Functors_Negators $(SRC)/ch17/03_FunctionObjects/08_Negators.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_Functors_EmptyString $(SRC)/ch17/03_FunctionObjects/09_EmptyString.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_Functors_EmptyStringPtr $(SRC)/ch17/03_FunctionObjects/10_EmptyStringPtr.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_Functors_WritingFunctionObject $(SRC)/ch17/03_FunctionObjects/11_WritingFunctionObject.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_Functors_WritingFunctionObjectLocal $(SRC)/ch17/03_FunctionObjects/12_WritingFunctionObjectLocal.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_NMA_SearchAlgorithms $(SRC)/ch17/04_NonModifyingAlgorithms/01_SearchAlgorithms.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_NMA_ComparisonAlgorithms $(SRC)/ch17/04_NonModifyingAlgorithms/02_ComparisonAlgorithms.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_NMA_UtilityAlgorithms $(SRC)/ch17/04_NonModifyingAlgorithms/03_utilities.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_MA_TransformLambda $(SRC)/ch17/05_ModifyingAlgorithms/01_TransformLambda.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_MA_TransformLambdaBinary $(SRC)/ch17/05_ModifyingAlgorithms/02_TransformLambdaBinary.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_MA_Copy $(SRC)/ch17/05_ModifyingAlgorithms/03_copy.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_MA_CopyBackward $(SRC)/ch17/05_ModifyingAlgorithms/04_copy_backward.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_MA_CopyIf $(SRC)/ch17/05_ModifyingAlgorithms/05_copy_if.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_MA_CopyN $(SRC)/ch17/05_ModifyingAlgorithms/06_copy_n.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_MA_Move $(SRC)/ch17/05_ModifyingAlgorithms/07_move.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_MA_Replace $(SRC)/ch17/05_ModifyingAlgorithms/08_Replace.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_MA_Remove $(SRC)/ch17/05_ModifyingAlgorithms/09_Remove.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_OA_ForEachBasicLambda $(SRC)/ch17/06_OperationalAlgorithms/01_ForEachBasicLambda.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_OA_ForEachBasic $(SRC)/ch17/06_OperationalAlgorithms/02_ForEachBasic.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_OA_SumAndProdLambda $(SRC)/ch17/06_OperationalAlgorithms/03_SumAndProdLambda.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_OA_SumAndProd $(SRC)/ch17/06_OperationalAlgorithms/04_SumAndProd.cpp
	$(CC) $(CFLAGS) -o $(BIN)/07_PA_PartitionCopy $(SRC)/ch17/07_PartitionAlgorithms/01_partition_copy.cpp
	$(CC) $(CFLAGS) -o $(BIN)/07_PA_Partition $(SRC)/ch17/07_PartitionAlgorithms/02_partition.cpp
	$(CC) $(CFLAGS) -o $(BIN)/08_Sorting $(SRC)/ch17/08_SortingAlgorithms/Sorting.cpp
	$(CC) $(CFLAGS) -o $(BIN)/09_BinarySearch $(SRC)/ch17/09_BinarySearchAlgorithms/binary_search.cpp
	$(CC) $(CFLAGS) -o $(BIN)/10_SetAlgorithms $(SRC)/ch17/10_SetAlgorithms/01_Sets.cpp
	$(CC) $(CFLAGS) -o $(BIN)/10_SetAlgorithmsMerge $(SRC)/ch17/10_SetAlgorithms/02_merge.cpp
	$(CC) $(CFLAGS) -o $(BIN)/11_MinMax $(SRC)/ch17/11_MinMaxAlgorithms/min_max.cpp
	$(CC) $(CFLAGS) -o $(BIN)/12_NA_InnerProduct $(SRC)/ch17/12_NumericalAlgorithms/01_inner_product.cpp
	$(CC) $(CFLAGS) -o $(BIN)/12_NA_Iota $(SRC)/ch17/12_NumericalAlgorithms/02_iota.cpp
	$(CC) $(CFLAGS) -o $(BIN)/13_AuditVoterRolls $(SRC)/ch17/13_AuditVoterRolls/main.cpp

ch18: clean
	$(CC) $(CFLAGS) -o $(BIN)/01_WideStrings $(SRC)/ch18/01_WideStrings/wcout.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_CharTypes $(SRC)/ch18/02_CharTypes/CharTypes.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_Locales $(SRC)/ch18/03_Locales/Locales.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_Facets $(SRC)/ch18/04_Facets/use_facet.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_Regex_MatchDates1 $(SRC)/ch18/05_RegularExpressions/01_regex_match_dates_1.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_Regex_MatchDates2 $(SRC)/ch18/05_RegularExpressions/02_regex_match_dates_2.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_Regex_Search $(SRC)/ch18/05_RegularExpressions/03_regex_search_comments.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_Regex_Iterator $(SRC)/ch18/05_RegularExpressions/04_regex_iterator.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_Regex_TokenIterator1 $(SRC)/ch18/05_RegularExpressions/05_regex_token_iterator_1.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_Regex_TokenIterator2 $(SRC)/ch18/05_RegularExpressions/06_regex_token_iterator_2.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_Regex_TokenIterator3 $(SRC)/ch18/05_RegularExpressions/07_regex_token_iterator_3.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_Regex_Replace1 $(SRC)/ch18/05_RegularExpressions/08_regex_replace_1.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_Regex_Replace2 $(SRC)/ch18/05_RegularExpressions/09_regex_replace_2.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_Regex_Replace3 $(SRC)/ch18/05_RegularExpressions/10_regex_replace_3.cpp

ch19: clean
	$(CC) $(CFLAGS) -o $(BIN)/01_Function $(SRC)/ch19/01_Function/01_function.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_FunctionCountIf $(SRC)/ch19/01_Function/02_function_count_if.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_FunctionCallback $(SRC)/ch19/01_Function/03_function_callback.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_Ratios $(SRC)/ch19/02_Ratio/ratios.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_ChronoDurations $(SRC)/ch19/03_Chrono/01_durations.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_ChronoNowPutTime $(SRC)/ch19/03_Chrono/02_now_put_time.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_ChronoNow $(SRC)/ch19/03_Chrono/03_now.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_ChronoTiming $(SRC)/ch19/03_Chrono/04_timing.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_ChronoTimePoint $(SRC)/ch19/03_Chrono/05_time_point.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_RandomOld $(SRC)/ch19/04_Random/01_old.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_RandomDevice $(SRC)/ch19/04_Random/02_random_device.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_RandomBasic $(SRC)/ch19/04_Random/03_basic.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_RandomGenerate $(SRC)/ch19/04_Random/04_generate.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_RandomGenerateFunction $(SRC)/ch19/04_Random/05_generate_function.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_RandomDistribution $(SRC)/ch19/04_Random/06_uniform_int_distribution.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_Pair $(SRC)/ch19/05_Tuple/01_pair.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_Tuple $(SRC)/ch19/05_Tuple/02_tuple.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_TupleTie $(SRC)/ch19/05_Tuple/03_tuple_tie.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_TupleCat $(SRC)/ch19/05_Tuple/04_tuple_cat.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_TupleComparison $(SRC)/ch19/05_Tuple/05_tuple_comparison.cpp

ch20: clean
	$(CC) $(CFLAGS) -o $(BIN)/01_IA_ReverseIterators $(SRC)/ch20/01_IteratorAdapters/01_ReverseIterators.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_IA_OutputStreamIterators $(SRC)/ch20/01_IteratorAdapters/02_OutputStreamIterators.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_IA_InputStreamIterators $(SRC)/ch20/01_IteratorAdapters/03_InputStreamIterators.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_IA_BackInsertIterator $(SRC)/ch20/01_IteratorAdapters/04_BackInsertIterator.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_IA_InsertIterator $(SRC)/ch20/01_IteratorAdapters/05_InsertIterator.cpp
	$(CC) $(CFLAGS) -o $(BIN)/01_IA_MoveIterators $(SRC)/ch20/01_IteratorAdapters/06_MoveIterators.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_WA_FindAll $(SRC)/ch20/02_WritingAlgorithms/01_FindAll.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_WA_IteratorTraitsTest $(SRC)/ch20/02_WritingAlgorithms/02_IteratorTraitsTest.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_BasicHashMap $(SRC)/ch20/03_BasicHashmap/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_FinalHashMap $(SRC)/ch20/04_FinalHashmap/main.cpp

ch21: clean
	$(CC) $(CFLAGS) -o $(BIN)/01_GridTemplateContainer $(SRC)/ch21/01_GridTemplateContainer/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_GridTemplateContainerDefault $(SRC)/ch21/02_GridTemplateContainerDefault/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_GridTemplateContainerTemplateTemplate $(SRC)/ch21/03_GridTemplateContainerTemplateTemplate/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_GridDefaultElementValue1 $(SRC)/ch21/04_GridDefaultElementValue/SpreadsheetCell.cpp $(SRC)/ch21/04_GridDefaultElementValue/GridTest.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_GridDefaultElementValue2 $(SRC)/ch21/04_GridDefaultElementValue/SpreadsheetCell.cpp $(SRC)/ch21/04_GridDefaultElementValue/GridTestRefNonType.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_GridPartialString1 $(SRC)/ch21/05_GridPartialString/GridTest.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_GridPartialString2 $(SRC)/ch21/05_GridPartialString/GridTestString.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_GridPartialPtr $(SRC)/ch21/06_GridPartialPtr/main.cpp
	$(CC) $(CFLAGS) -o $(BIN)/07_FunctionTemplatePtr $(SRC)/ch21/07_FunctionTemplatePtr/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/08_OneDGrid $(SRC)/ch21/08_OneDGrid/OneDGridTest.cpp
	$(CC) $(CFLAGS) -o $(BIN)/09_NDGrid $(SRC)/ch21/09_NDGrid/NDGridTest.cpp
	$(CC) $(CFLAGS) -o $(BIN)/10_TypeInference $(SRC)/ch21/10_TypeInference/TypeInference.cpp
	$(CC) $(CFLAGS) -o $(BIN)/11_VarArgs $(SRC)/ch21/11_VarArgs/VarArgsWithVariadicTemplates.cpp
	$(CC) $(CFLAGS) -o $(BIN)/12_VariadicMixins $(SRC)/ch21/12_VariadicMixins/VariadicMixins.cpp
	$(CC) $(CFLAGS) -o $(BIN)/13_Factorial $(SRC)/ch21/13_Factorial/Factorial.cpp
	$(CC) $(CFLAGS) -o $(BIN)/14_LoopUnrolling $(SRC)/ch21/14_LoopUnrolling/LoopUnrolling.cpp
	$(CC) $(CFLAGS) -o $(BIN)/15_PrintTuple $(SRC)/ch21/15_PrintTuple/01_PrintTuple.cpp
	$(CC) $(CFLAGS) -o $(BIN)/15_PrintTupleSimplified $(SRC)/ch21/15_PrintTuple/02_PrintTupleSimplified.cpp
	$(CC) $(CFLAGS) -o $(BIN)/16_TypeTraits_Basic $(SRC)/ch21/16_TypeTraits/01_basic.cpp
	$(CC) $(CFLAGS) -o $(BIN)/16_TypeTraits_Is_Integral $(SRC)/ch21/16_TypeTraits/02_is_integral.cpp
	$(CC) $(CFLAGS) -o $(BIN)/16_TypeTraits_Is_Same $(SRC)/ch21/16_TypeTraits/03_is_same.cpp
	$(CC) $(CFLAGS) -o $(BIN)/16_TypeTraits_Enable_If $(SRC)/ch21/16_TypeTraits/04_enable_if.cpp

ch22: clean
	$(CC) $(CFLAGS) -o $(BIN)/01_ArrayDelete $(SRC)/ch22/01_ArrayDelete/ArrayDelete.cpp
	$(CC) $(CFLAGS) -o $(BIN)/02_TicTacToe $(SRC)/ch22/02_tictactoe/tictactoe.cpp
	$(CC) $(CFLAGS) -o $(BIN)/03_CharacterBoard $(SRC)/ch22/03_CharacterBoard/CharacterBoard.cpp
	$(CC) $(CFLAGS) -o $(BIN)/04_ArraysAndPointers $(SRC)/ch22/04_ArraysAndPointers/ArraysAndPointers.cpp
	$(CC) $(CFLAGS) -o $(BIN)/05_FunctionPointers $(SRC)/ch22/05_FunctionPointers/FunctionPointers.cpp
	$(CC) $(CFLAGS) -o $(BIN)/06_PtrsToMethodsAndMembers $(SRC)/ch22/06_PtrsToMethodsAndMembers/*.cpp
	$(CC) $(CFLAGS) -o $(BIN)/07_UniquePtr $(SRC)/ch22/07_unique_ptr/unique_ptr_malloc_int.cpp
	$(CC) $(CFLAGS) -o $(BIN)/08_SharedPtr_MallocInt $(SRC)/ch22/08_shared_ptr/01_shared_ptr_malloc_int.cpp
	$(CC) $(CFLAGS) -o $(BIN)/08_SharedPtr_File $(SRC)/ch22/08_shared_ptr/02_shared_ptr_file.cpp
	$(CC) $(CFLAGS) -o $(BIN)/08_SharedPtr_DoubleDelete $(SRC)/ch22/08_shared_ptr/03_shared_ptr_double_delete.cpp
	$(CC) $(CFLAGS) -o $(BIN)/08_SharedPtr_ReturnFromFunction $(SRC)/ch22/08_shared_ptr/04_shared_ptr_return_from_function.cpp
	$(CC) $(CFLAGS) -o $(BIN)/09_Leaky $(SRC)/ch22/09_Leaky/Leaky.cpp

ch23: clean
	# $(CC) $(CFLAGS) -pthread -o $(BIN)/01_Thread_function $(SRC)/ch23/01_thread/01_ThreadFunction.cpp
	# $(CC) $(CFLAGS) -pthread -o $(BIN)/01_Thread_FunctionObject $(SRC)/ch23/01_thread/02_ThreadFunctionObject.cpp
	# $(CC) $(CFLAGS) -pthread -o $(BIN)/01_Thread_Lambda $(SRC)/ch23/01_thread/03_ThreadLambda.cpp
	# $(CC) $(CFLAGS) -pthread -o $(BIN)/01_Thread_MemFunc $(SRC)/ch23/01_thread/04_ThreadMemFunc.cpp
	# $(CC) $(CFLAGS) -pthread -o $(BIN)/02_ExceptionsWithThreads $(SRC)/ch23/02_ExceptionsWithThreads/ExceptionsWithThreads.cpp
	# $(CC) $(CFLAGS) -pthread -o $(BIN)/03_Atomics_IncFuncNonAtomic $(SRC)/ch23/03_atomic/01_inc_func_non_atomic.cpp
	# $(CC) $(CFLAGS) -pthread -o $(BIN)/03_Atomics_IncFuncAtomic $(SRC)/ch23/03_atomic/02_inc_func_atomic.cpp
	# $(CC) $(CFLAGS) -pthread -o $(BIN)/03_Atomics_IncFuncAtomicOptimal $(SRC)/ch23/03_atomic/03_inc_func_atomic_optimal.cpp
	# $(CC) $(CFLAGS) -pthread -o $(BIN)/03_Atomics_FetchAdd $(SRC)/ch23/03_atomic/04_fetch_add.cpp
	# $(CC) $(CFLAGS) -pthread -o $(BIN)/04_Mutex_MultipleLocks $(SRC)/ch23/04_mutex/01_multiple_locks.cpp
	# $(CC) $(CFLAGS) -pthread -o $(BIN)/04_Mutex_CallOnce $(SRC)/ch23/04_mutex/02_call_once.cpp
	# $(CC) $(CFLAGS) -pthread -o $(BIN)/04_Mutex_ThreadFunctionObjectWithMutex $(SRC)/ch23/04_mutex/03_ThreadFunctionObjectWithMutex.cpp
	# $(CC) $(CFLAGS) -pthread -o $(BIN)/04_Mutex_ThreadFunctionObjectWithTimedMutex $(SRC)/ch23/04_mutex/04_ThreadFunctionObjectWithTimedMutex.cpp
	# $(CC) $(CFLAGS) -pthread -o $(BIN)/04_Mutex_DoubleCheckedLocking $(SRC)/ch23/04_mutex/05_double_checked_locking.cpp
	# $(CC) $(CFLAGS) -pthread -o $(BIN)/05_Future_PackagedTask $(SRC)/ch23/05_future/01_packaged_task.cpp
	# $(CC) $(CFLAGS) -pthread -o $(BIN)/05_Future_Async $(SRC)/ch23/05_future/02_async.cpp
	# $(CC) $(CFLAGS) -pthread -o $(BIN)/05_Future_AsyncErrorHandling $(SRC)/ch23/05_future/03_async_error_handling.cpp
	$(CC) $(CFLAGS) -pthread -o $(BIN)/06_Logger_FirstVersion $(SRC)/ch23/06_Logger/FirstVersion/*.cpp
	$(CC) $(CFLAGS) -pthread -o $(BIN)/06_Logger_FinalVersion $(SRC)/ch23/06_Logger/FinalVersion/*.cpp
