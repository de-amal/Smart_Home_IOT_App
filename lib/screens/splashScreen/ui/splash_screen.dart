import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projects/screens/dashboard/dashboard_screen.dart';
import 'package:projects/screens/loginPage/ui/login_page.dart';
import 'package:projects/screens/splashScreen/ui/bloc/splash_event.dart';

import 'bloc/splash_bloc.dart';
import 'bloc/splash_state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  Widget splashWidget(SplashState state,BuildContext context){
    if (state.status == SplashStatus.isLoading){
      BlocProvider.of<SplashBloc>(context).add(FetchData());
      return Scaffold(
        body: Center(
          child: SvgPicture.asset(
            'assets/images/smartHomeSplash.svg',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover, // Makes the SVG cover the entire screen
          ),
        ),
      );
    }
    else if (state.status == SplashStatus.isLoggedIn){
      return DashboardScreen();
    }
    else if (state.status == SplashStatus.notLoggedIn){
        return LoginPage(state.screen);
    }
      return SizedBox(height: 10,);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SplashBloc(),
      child: BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
      return WillPopScope(
          child: splashWidget(state,context),
          onWillPop: () async {
            // Show confirmation dialog
            return _showExitDialog(context);
          });
    },
    ));
  }
}

Future<bool> _showExitDialog(BuildContext context) async {
  return await showDialog<bool>(
    context: context,
    barrierDismissible: false, // Prevent dismissing by tapping outside
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Exit App'),
        content: Text('Are you sure you want to exit the app?'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(false); // Do not close the app
            },
            child: Text('No'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(true); // Close the app
            },
            child: Text('Yes'),
          ),
        ],
      );
    },
  ) ??
      false; // Return false if the dialog was dismissed by tapping outside
}

