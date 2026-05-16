import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store__app/features/home/logic/cubit/prouduct_cubit.dart';
import 'package:store__app/features/splash/presentation/screens/splash_screen.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProuductCubit()..getAllProduct(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: SplashScreen()),
    );
  }
}
