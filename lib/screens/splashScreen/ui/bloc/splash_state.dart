
enum SplashStatus{ isLoading, isLoggedIn, notLoggedIn}

class SplashState{
  final SplashStatus status;
  SplashState({this.status = SplashStatus.isLoading});

  SplashState copyWith({SplashStatus? status}){
    return SplashState( status: status ?? this.status);
  }
}