import 'package:flutter/widgets.dart';

class Inherited extends InheritedWidget {
  final int counter;
  final Function increaseCounter;
  final Function decreaseCounter;

  const Inherited({
    Key? key,
    required super.child,
    required this.increaseCounter,
    required this.decreaseCounter,
    required this.counter,
  }) : super(key: key);

  @override
  bool updateShouldNotify(covariant Inherited oldWidget) {
    return counter != oldWidget.counter;
  }

  static Inherited of(BuildContext context) {
    final Inherited? instance =
        context.dependOnInheritedWidgetOfExactType<Inherited>();
    assert(instance != null, 'No instance found on this context');
    return instance!;
  }
}
