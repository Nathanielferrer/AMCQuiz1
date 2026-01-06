import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(  //MaterialApp’s purpose is how the widget theme will be displayed and the design of the app, including the title.
    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold( //It controls the overall design of the app like the theme, title, and what screen shows first.
    appBar: AppBar(title: const Text('All Widgets')),   //The AppBar contains the title and works like a navbar, or in short, the title of the app.
    body: Center( //This is used to position the widgets at the center of the screen, similar to Flexbox position.  
      child: Container(  //Container is used for the layout and styling of the contents, such as spacing and so on.
        padding: const EdgeInsets.all(20),
        child: Column(  //The Column positions widgets vertically from top to bottom.
          children: [
            Row(  //The Row’s purpose is to position widgets horizontally from left to right.
              children: [
                const Icon(Icons.star),
                const Text('Flutter'),  //This is the text that will be displayed on the screen beside the icon.
              ],
            ),
          ],
        ),
      ),
    ),
  );
}