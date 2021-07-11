import 'package:botsta_app/config/routes/routes.dart';
import 'package:botsta_app/config/routes/routes_config.dart';
import 'package:botsta_app/logic/bloc/authentication_bloc.dart';
import 'package:botsta_app/models/authentication_state.dart';
import 'package:botsta_app/services/local_storage_service.dart';
import 'package:botsta_app/services/secure_storage_service.dart';
import 'package:botsta_app/startup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    var authBloc = context.read<AuthenticationBloc>();
    // if (authBloc.state.state != AuthState.Unknown) {
    //   var state = authBloc.state.state;
    //   // authBloc.add(UpdateAuthenticationEvent(AuthState.Unknown));
    //   authBloc.add(UpdateAuthenticationEvent(state));
    // }

    if (authBloc.state is AuthenticationStateAuthenticationFailed) {
      RoutesConfig.ROUTER.navigateTo(context, Routes.ERROR, clearStack: true);
    }

    var secureStorage = getIt.get<SecureStorageService>();
    secureStorage.refreshToken.then((token) {
      if (token != null) {
        // authBloc.add(UpdateAuthenticationEvent(AuthState.Unknown));
        authBloc.add(AuthenticationEventAuthenticated());
      } else {
        //  authBloc.add(UpdateAuthenticationEvent(AuthState.Unknown));
          authBloc.add(AuthenticationEventUnauthenticated());
      }
    });

    return Scaffold(
        body: Center(
      child: Container(
        child: CircularProgressIndicator(),
      ),
    ));
  }
}
