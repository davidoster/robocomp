//******************************************************************
// 
//  Generated by IDSL to IDL Translator
//  
//  File name: ASREchord.idl
//  Source: ASREchord.idsl
//  
//******************************************************************   
#ifndef ROBOCOMPASRECHORD_ICE
#define ROBOCOMPASRECHORD_ICE

module RoboCompASREchord{
	sequence <string> WordsRecognized;
	["cpp:comparable"]
	struct TSentence{
		WordsRecognized words;
		int acquisitionHour;
		int acquisitionSecs;
		int acquisitionDay;
		bool blockingCall;
		string grammarUsed;
	};
	["cpp:comparable"]
	struct TestConfig{
		string testType;
		string language;
		string tense;
		string person;
	};

	interface MSKASREvent{
		void  newSentenceAvailable(TSentence sentence);
	};
	interface MSKASRConfig{
		void  setTestConfig(TestConfig config);
		void  setTestQuestion(int questionNumber);
	};
};
  
#endif