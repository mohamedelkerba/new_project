// This extension provides convenient navigation methods for the BuildContext.
// It adds methods to easily push, replace, and remove routes within the Navigator.

import 'package:flutter/cupertino.dart';

extension Navigation on BuildContext{

  Future<dynamic> pushNamed(String routeName , {Object? arguments}){
    return Navigator.of(this).pushNamed(routeName , arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName , {Object? arguments}){
    return Navigator.of(this).pushReplacementNamed(routeName , arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName , {Object? arguments ,required RoutePredicate predicate,}){
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName ,predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop;

}