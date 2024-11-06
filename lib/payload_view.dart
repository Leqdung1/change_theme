import 'dart:math';
import 'package:bloc_payload/bloc/theme_bloc.dart';
import 'package:bloc_payload/bloc/theme_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PayloadView extends StatelessWidget {
  const PayloadView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final int number = Random().nextInt(10);
            context.read<ThemeBloc>().add(ChangeThemeState(random: number));
            print('number: $number');
          },
          child: const Text('Change theme'),
        ),
      ),
    );
  }
}
