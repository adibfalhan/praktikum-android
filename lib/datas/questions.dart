import 'package:quiz_app/models/quiz_questions.dart';

const questions = [
  QuizQuestions(
    'What are the main building blocks of flutter Uis?',
    [
      'widgets',
      'components',
      'blocks',
      'function',
    ],
  ),
  QuizQuestions('How are flutter UIs built?',[
    'By combining widgets in code',
    'By combining widgets in visual editor',
    'By defining widgets in config files',
    'By using XCode for IOs and Android studio for android',
  ]),
  QuizQuestions(
    'what\'s the purpose of a statefulwidget',
    [
      'update UI as data changes',
      'update data as UI changes',
      'ignore data changes',
      'render UI that does not depend on data',
    ],
  ),
  QuizQuestions(
    'which widget should you try to use more often: statelesswidget or statefulwidget?',    
    [
      'statelesswidget',
      'statefulwidget',
      'both are equally good',
      'none of the above',
    ],
  ),
  QuizQuestions(
    'what happens if you change data in a statelesswidget?',
    [
      'the UI is not updated',
      'teh UI is update',
      'the closest statefulwidget is updated',
      'any  nested statefulwidgets are updated',
    ],
  ),

];