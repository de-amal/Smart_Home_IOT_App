enum SplashStatus { isLoading, isLoggedIn, notLoggedIn }

enum DisplayScreen { Welcome, Login, Signup }

class SplashState {
  final SplashStatus status;
  final DisplayScreen screen;
  SplashState(
      {this.status = SplashStatus.isLoading,
      this.screen = DisplayScreen.Welcome,});

  SplashState copyWith(
      {SplashStatus? status,
      DisplayScreen? screen,
      String? emailId,
      String? password}) {
    return SplashState(
        status: status ?? this.status,
        screen: screen ?? this.screen,);
  }
}
