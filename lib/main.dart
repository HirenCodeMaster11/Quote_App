import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screens/Topic/topic.dart';
import 'Screens/quoteScreen/quoteScreen.dart';
import 'Screens/splashcreen.dart';
import 'Screens/theme/themeScreen.dart';

void main()
{
  runApp(QuoteApp());
}

class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/to',
      routes: {
        '/' : (context) => SplashScreen(),
        '/quote' : (context) => QuoteScreen(),
        '/theme' : (context) => ThemeScreen(),
        '/to' : (context) => TopicScreen(),
      },
    );
  }
}
