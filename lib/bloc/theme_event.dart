import 'dart:math';

import 'package:equatable/equatable.dart';

class ThemeEvent extends Equatable{
  @override
  
  List<Object?> get props => [];
  
}

class ChangeThemeState extends ThemeEvent {
  final int random;

   ChangeThemeState({required this.random});

  @override
  List<Object> get props => [random];

  @override 
  String toString() => '$random';
}