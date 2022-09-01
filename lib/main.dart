import 'package:flutter/material.dart';
import 'package:inherited_widget/add_operation/add_provider.dart';
import 'package:inherited_widget/add_operation/add_screen.dart';
import 'package:inherited_widget/remove_operation/remove_provider.dart';
import 'package:inherited_widget/remove_operation/remove_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  void increaseCounter() {
    setState(() {
      count++;
    });
  }

  void decreaseCounter() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        AddScreen.route: (context) => AddProvider(
              counter: count,
              increaseCounter: increaseCounter,
              child: const AddScreen(),
            ),
        RemoveScreen.route: (context) => RemoveProvider(
              counter: count,
              increaseCounter: decreaseCounter,
              child: const RemoveScreen(),
            ),
      },
      home: MyHomePage(count),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage(this.count, {Key? key}) : super(key: key);
  final int count;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(count.toString()),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AddScreen.route);
              },
              child: Row(
                children: const [
                  Icon(Icons.add),
                  Text("add operation"),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RemoveScreen.route);
              },
              child: Row(
                children: const [
                  Icon(Icons.remove),
                  Text("add remove"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
