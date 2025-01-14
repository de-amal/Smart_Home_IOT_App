import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/screens/splashScreen/ui/bloc/splash_event.dart';
import 'package:projects/screens/splashScreen/ui/bloc/splash_state.dart';

class SplashBloc extends Bloc<SplashEvent,SplashState>{
  //TODO ADD REPO
  SplashBloc() : super(SplashState()){

    on<FetchData>((event,emit) async {
      await Future.delayed(Duration(seconds: 2));
      emit(state.copyWith(status: SplashStatus.isLoggedIn ));
    });

  }

}