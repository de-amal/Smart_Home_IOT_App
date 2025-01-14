import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../splashScreen/ui/bloc/splash_bloc.dart';
import '../../splashScreen/ui/bloc/splash_event.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi...'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            BlocProvider.of<SplashBloc>(context).add(SwitchToLogin());
            print('LOGGED OUT');
          },
          child: Text('Logout'),
        ),
      ),
    );
  }
}
