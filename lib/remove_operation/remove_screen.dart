import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'remove_provider.dart';

class RemoveScreen extends StatelessWidget {
  static const String route = "/remove";

  const RemoveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = RemoveProvider.of(context);

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
                  Icon(Icons.remove),
                  Text("remove operation"),
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
