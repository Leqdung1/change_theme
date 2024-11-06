import 'package:equatable/equatable.dart';

enum AppTheme { light, dark }

class ThemeState extends Equatable {
  final AppTheme appTheme;
  const ThemeState({this.appTheme = AppTheme.light});

  factory ThemeState.initial() {
    return ThemeState();
  }

  @override
  List<Object?> get props => [appTheme];

  @override
  String toString() => '$appTheme';

  ThemeState copyWith({AppTheme? appTheme}) {
    return ThemeState(
      appTheme: appTheme ?? this.appTheme,
    );
  }
}
