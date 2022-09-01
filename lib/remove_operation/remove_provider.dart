import 'package:flutter/widgets.dart';

class RemoveProvider extends InheritedWidget {
  final int counter;
  final Function increaseCounter;

  const RemoveProvider({
    Key? key,
    required super.child,
    required this.increaseCounter,
    required this.counter,
  }) : super(key: key);

  @override
  bool updateShouldNotify(covariant RemoveProvider oldWidget) {
    return counter != oldWidget.counter;
  }

  static RemoveProvider of(BuildContext context) {
    final RemoveProvider? instance =
    context.dependOnInheritedWidgetOfExactType<RemoveProvider>();
    assert(instance != null, 'No instance found on this context');
    return instance!;
  }
}
