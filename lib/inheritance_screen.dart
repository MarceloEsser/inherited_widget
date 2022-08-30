import 'package:flutter/material.dart';
import 'package:inherited_widget/inheritance/inherited.dart';

class InheritanceScreen extends StatelessWidget {
  InheritanceScreen({Key? key}) : super(key: key);
  
  Inherited? provider;

  @override
  Widget build(BuildContext context) {
    provider = Inherited.of(context);
    
    return Container();
  }
}