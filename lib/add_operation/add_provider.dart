import 'package:flutter/widgets.dart';

class AddProvider extends InheritedWidget {
  final int counter;
  final Function increaseCounter;

  const AddProvider({
    Key? key,
    required super.child,
    required this.increaseCounter,
    required this.counter,
  }) : super(key: key);

  @override
  bool updateShouldNotify(covariant AddProvider oldWidget) {
    return counter != oldWidget.counter;
  }

  static AddProvider of(BuildContext context) {
    final AddProvider? instance =
    context.dependOnInheritedWidgetOfExactType<AddProvider>();
    assert(instance != null, 'No instance found on this context');
    return instance!;
  }
}
