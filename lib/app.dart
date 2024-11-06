import 'package:bloc_payload/bloc/theme_bloc.dart';
import 'package:bloc_payload/bloc/theme_state.dart';
import 'package:bloc_payload/payload_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (_) => ThemeBloc(),

      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
            return  MaterialApp(
          
          theme: state.appTheme == AppTheme.light ? ThemeData.light() : ThemeData.dark(),
          home: const PayloadView(),
        );
        },
      
      ),
    );
  }
}