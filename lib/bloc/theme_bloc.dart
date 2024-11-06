import 'package:bloc_payload/bloc/theme_event.dart';
import 'package:bloc_payload/bloc/theme_state.dart';
import 'package:bloc/bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<ChangeThemeState>((event, emit) {
      if (event.random % 2 == 0) {
        emit(state.copyWith(appTheme: AppTheme.dark));
      } else {
        emit(state.copyWith(appTheme: AppTheme.light));
      }
    });
  }
}
