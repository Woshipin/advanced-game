import 'package:adventuregame/story.dart';

class StoryBrain {

  int _storyNumber = 0;

  List<Story> _storyData = [
    Story(
        storyTitle:
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.',
        storybook: 'Story 1'),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.',
        storybook: 'Story 2'),
    Story(
        storyTitle:
        'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.',
        storybook: 'Story 3'),
    Story(
        storyTitle:
        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: '',
        storybook: 'Story 4'),
    Story(
        storyTitle:
        'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: '',
        storybook: 'Story 5'),
    Story(
        storyTitle:
        'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '',
        storybook: 'Story 6'),
  ];

  // Getter || Accessor
  // Get storyTitle from the _storyData
  String getStory(){
    return _storyData[_storyNumber].storyTitle;
  }

  // Get choice 1 from the _storyData
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  // Get choice 1 from the _storyData
  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  String getStoryBook() {
    return _storyData[_storyNumber].storybook;
  }

  void nextStory(int choiceNumber) {

    // Story 0
    if(choiceNumber == 1 && _storyNumber == 0){
      _storyNumber = 2;
    }
    else if(choiceNumber == 2 && _storyNumber == 0){
      _storyNumber = 1;
    }

    // Story 1
    else if(choiceNumber == 1 && _storyNumber == 1){
      _storyNumber = 2;
    }
    else if(choiceNumber == 2 && _storyNumber == 1){
      _storyNumber = 3;
    }

    // Story 2
    else if(choiceNumber == 1 && _storyNumber == 2){
      _storyNumber = 5;
    }
    else if(choiceNumber == 2 && _storyNumber == 2){
      _storyNumber = 4;
    }

    // Story 3
    else if(_storyNumber == 3) {
      restart();
    }

    // Story 4
    else if(_storyNumber == 4) {
      restart();
    }

    // Story 5
    else{
      restart();
    }
  }

  // Set the storyNumber to 0 for restarting the story
  void restart() {
    _storyNumber = 0;
  }

  // When storyNumber is 3, 4, 5 will return false, otherwise will return true
  bool buttonShouldBeVisible() {
    if(_storyNumber == 0) {
      return true;
    }
    else if(_storyNumber == 1){
      return true;
    }
    else if(_storyNumber == 2){
      return true;
    }
    else if(_storyNumber == 3){
      return false;
    }
    else if(_storyNumber == 4){
      return false;
    }
    else {
      return false;
    }
  }
}