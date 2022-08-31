import 'package:flutter/material.dart';
import 'package:inherited_widget/inheritance/inherited.dart';

class InheritanceScreen extends StatelessWidget {
  const InheritanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterState = Inherited.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue,
        title: const Text(
          'Counter Inherited Widget Demo',
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Column(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child:Text('Items add & remove: ${counterState.counter}',
              style: const TextStyle(fontSize: 20),
            ),
          ),


          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: FloatingActionButton(
                    onPressed: () {
                      counterState.decreaseCounter();
                    },
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: FloatingActionButton(
                    onPressed: () {
                      counterState.increaseCounter();
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}