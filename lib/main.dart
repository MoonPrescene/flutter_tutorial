import 'package:flutter/material.dart';
import 'package:flutter_application_hello_world/User.dart';
import 'package:flutter_application_hello_world/item_user_view.dart';
import 'package:flutter_application_hello_world/item_user_view_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      themeMode: ThemeMode.dark,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  final List _listUser = [
    User("Guts",
        "https://upload.wikimedia.org/wikipedia/en/d/db/GutsBerserk.PNG"),
    User("Griffith",
        "https://kodoani.com/uploads/images/2021/06/image_750x_60c87116893d3.jpg"),
    User("Casca",
        "https://i.pinimg.com/736x/49/20/b3/4920b3a6291f1d323b69e41a41701c2b.jpg"),
    User("Guts",
        "https://upload.wikimedia.org/wikipedia/en/d/db/GutsBerserk.PNG"),
    User("Guts",
        "https://upload.wikimedia.org/wikipedia/en/d/db/GutsBerserk.PNG"),
    User("Guts",
        "https://upload.wikimedia.org/wikipedia/en/d/db/GutsBerserk.PNG"),
    User("Guts",
        "https://upload.wikimedia.org/wikipedia/en/d/db/GutsBerserk.PNG"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(top: 25.0),
                child: ListView.builder(
                  itemCount: _listUser.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ItemView(user: _listUser[index]);
                  },
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: ListView.builder(
                  itemCount: _listUser.length,
                  itemBuilder: (context, index) {
                    return ItemView2(user: _listUser[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
