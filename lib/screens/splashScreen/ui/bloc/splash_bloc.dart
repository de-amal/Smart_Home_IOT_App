import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:projects/screens/splashScreen/models/login_response.dart';
import 'package:projects/screens/splashScreen/repository/splash_repository.dart';
import 'package:projects/screens/splashScreen/ui/bloc/splash_event.dart';
import 'package:projects/screens/splashScreen/ui/bloc/splash_state.dart';

class SplashBloc extends Bloc<SplashEvent,SplashState>{
  late SplashRepository _repository = SplashRepository();
  SplashBloc() : super(SplashState()){
    on<FetchData>((event,emit) async {
      await Future.delayed(Duration(seconds: 2));
      emit(state.copyWith(status: SplashStatus.notLoggedIn ));
    });

    on<SwitchToDashboard>((event,emit) {
      String emailID = event.emailID;
      String password = event.password;

      Response response = _repository.loginUser(emailID, password) as Response ;

      if (response != null && response.statusCode == 200) {
        // Login successful
        print('Login successful');
        // print('User UID: ${response.user.uid}');
        // print('Token: ${response.token}');
        emit(state.copyWith(status: SplashStatus.isLoggedIn));
      } else {
        // Login failed or response is null
        print('Login failed or error occurred');
        emit(state.copyWith(status: SplashStatus.notLoggedIn,screen: DisplayScreen.Welcome));
      }


    });

    on<SwitchToLogin>((event,emit) {
      emit(state.copyWith(status: SplashStatus.notLoggedIn,screen: DisplayScreen.Login));
    });

    on<SwitchToSignup>((event,emit){
      emit(state.copyWith(status: SplashStatus.notLoggedIn,screen: DisplayScreen.Signup));
    });

    on<SwitchToWelcome>((event,emit){
      emit(state.copyWith(status: SplashStatus.notLoggedIn,screen: DisplayScreen.Welcome));
    });

  }

}