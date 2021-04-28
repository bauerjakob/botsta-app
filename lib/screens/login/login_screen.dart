import 'package:botsta_app/logic/blocs/authentication_bloc.dart';
import 'package:botsta_app/models/authentication_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var authBloc = context.read<AuthenticationBloc>();
    if (authBloc.state.state != AuthState.Unknown) {
      authBloc.add(UpdateAuthenticationEvent(authBloc.state.state));
    }

    return Scaffold(
      body: Center(
              child: Container(
          child: MaterialButton(child: Text('Login'), onPressed: () {
            context.read<AuthenticationBloc>()..add(new UpdateAuthenticationEvent(AuthState.Authenticated));
          },),
        ),
      ),
    );
  }
}