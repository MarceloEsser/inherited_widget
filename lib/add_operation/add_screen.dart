import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'add_provider.dart';

class AddScreen extends StatelessWidget {
  static const String route = "/add";

  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = AddProvider.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(provider.counter.toString()),
            TextButton(
              onPressed: () {
                provider.increaseCounter();
              },
              child: Row(
                children: const [
                  Icon(Icons.add),
                  Text("add operation"),
                ],
              ),
            ),
            ElevatedButton(
                child: const Text("back"),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
