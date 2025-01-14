import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/screens/splashScreen/ui/bloc/splash_bloc.dart';
import 'package:projects/screens/splashScreen/ui/bloc/splash_event.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            BlocProvider.of<SplashBloc>(context).add(SwitchToDashboard());
            print('LOGGED IN');
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}
