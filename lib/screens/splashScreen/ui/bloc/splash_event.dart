abstract class SplashEvent{}

class FetchData extends SplashEvent{}

class SwitchToLogin extends SplashEvent{}

class SwitchToDashboard extends SplashEvent{
  final String emailID;
  final String password;
  SwitchToDashboard({this.emailID = "",this.password = ""});
}

class SwitchToWelcome extends SplashEvent{}

class SwitchToSignup extends SplashEvent{}

