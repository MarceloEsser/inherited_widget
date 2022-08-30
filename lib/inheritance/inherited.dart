
import 'package:flutter/widgets.dart';

class Inherited extends InheritedWidget {
    
  const Inherited({Key? key, required super.child}) : super(key: key);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static Inherited of(BuildContext context) {
    final Inherited? instance = context.dependOnInheritedWidgetOfExactType<Inherited>();
    assert(instance != null, 'No instance found on this context');
    return instance!;
  }
}