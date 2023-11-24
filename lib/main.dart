import 'package:bloc_counter/core/cubits/counter_cubit.dart';
import 'package:bloc_counter/view/home_page/home_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    const CounterApp(),
  );
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: ThemeData.light().primaryColor,
          foregroundColor: Colors.white,
        ),
      ),
      home: BlocProvider(
        create: (_) => CounterCubit(),
        child: const HomePageView(),
      ),
    );
  }
}
