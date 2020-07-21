import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth.dart';

class AuthBloc extends Bloc<AuthEvents, AuthState> {
  @override
  AuthState get initialState => UnAuthenticated();

  @override
  Stream<AuthState> mapEventToState(AuthEvents event) async* {

    switch(event){
      case AuthEvents.Authenticate:
        yield Authenticated();
        break;

      case AuthEvents.UnAuthenticate:
        yield UnAuthenticated();
        break;
    }
  }
}