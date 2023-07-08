import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example_auth/auth_bloc/auth_bloc.dart';
import 'package:flutter_bloc_example_auth/pages/home_page.dart';
import 'package:flutter_bloc_example_auth/pages/login_page.dart';

import 'auth_bloc/auth_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is AuthLoading) {
              return Scaffold(
                body: Center(
                  child: const CircularProgressIndicator(),
                ),
              );
            }

            if (state is AuthSuccess) {
              return const HomePage();
            }
            return LoginPage();
          },
        ),
      ),
    );
  }
}
