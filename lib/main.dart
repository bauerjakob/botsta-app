import 'dart:io';

import 'package:botsta_app/config/lang/app_localizations.dart';
import 'package:botsta_app/config/lang/bloc/localization_bloc.dart';
import 'package:botsta_app/config/routes/routes_config.dart';
import 'package:botsta_app/config/themes/bloc/theme_bloc.dart';
import 'package:botsta_app/logic/bloc/all_users_bloc.dart';
import 'package:botsta_app/logic/bloc/chatroom_bloc.dart';
import 'package:botsta_app/logic/bloc/message_bloc.dart';
import 'package:botsta_app/logic/cubit/logged_in_user_cubit.dart';
import 'package:botsta_app/models/authentication_state.dart';
import 'package:botsta_app/models/chatroom.dart';
import 'package:botsta_app/models/message.dart';
import 'package:botsta_app/startup.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'package:botsta_app/config/themes/themes.dart';

import 'config/themes/bloc/theme_state.dart';
import 'logic/bloc/authentication_bloc.dart';

Future<void> main() async {
  configureServices();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(
            create: (context) =>
                getIt.get<AuthenticationBloc>()..add(InitialAuthenticationEvent())),
        BlocProvider<ThemeBloc>(
            create: (context) => ThemeBloc()..add(ThemeEventInitial())),
        BlocProvider<LocalizationBloc>(
            create: (context) =>
                LocalizationBloc()..add(InitialLocalizationEvent())),
        BlocProvider<ChatroomBloc>(
            create: (context) =>
                getIt.get<ChatroomBloc>()),
        BlocProvider<MessageBloc>(
            create: (context) =>
                getIt.get<MessageBloc>()),
        BlocProvider<LoggedInUserCubit>(
            create: (context) =>
                getIt.get<LoggedInUserCubit>()),
        BlocProvider<AllUsersBloc>(
            create: (context) =>
                getIt.get<AllUsersBloc>()),
      ],
      child: BlocBuilder<LocalizationBloc, LocalizationState>(
        builder: (context, langState) {
          return BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, themeState) {
              return MaterialApp(
                locale: langState.locale,
                supportedLocales: AppLocalizations.supportedLocales,
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                title: 'Botsta',
                debugShowCheckedModeBanner: false,
                theme: themeState.themeData,
                onGenerateRoute: RoutesConfig.ROUTER.generator
              );
            },
          );
        },
      ),
    );
  }
}
