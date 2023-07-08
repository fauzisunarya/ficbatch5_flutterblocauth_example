import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth_bloc/auth_bloc.dart';
import '../auth_bloc/auth_event.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to FIC Batch 5'),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                context.read<AuthBloc>().add(LoginEvent());
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
