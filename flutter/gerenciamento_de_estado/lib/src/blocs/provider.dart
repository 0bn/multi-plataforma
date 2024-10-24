import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget{

    final bloc = Bloc();

    static Bloc of (BuildContext context){
      return context.dependOnInheritedWidgetOfExactType<Provider>()!.bloc;
    }
    
    @override 
    bool updateShouldNotify(covariant InheritedWidget oldWidget){
        return true;
    } 

    Provider({super.key, required super.child});
}
