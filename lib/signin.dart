import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './auth/auth.dart';
class Signin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SigninState();

}

class SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: context.bloc<AuthBloc>(),
      builder: (_, state)=> Scaffold(
        appBar: AppBar(
          title: Text(context.bloc<AuthBloc>().state.toString()),
        ),
        body: Container(
          child: Center(
            child: context.bloc<AuthBloc>().state is Authenticated ?
              RaisedButton(
                onPressed: ()=> context.bloc<AuthBloc>().add(AuthEvents.UnAuthenticate),
                child: Text('Logout'),
            )
            :
            RaisedButton(
              onPressed: ()=> context.bloc<AuthBloc>().add(AuthEvents.Authenticate),
              child: Text('Login'),
            ),
          ),
        ),
      ),
    );
  }
}