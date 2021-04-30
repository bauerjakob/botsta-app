import 'package:botsta_app/config/lang/bloc/localization_bloc.dart';
import 'package:botsta_app/config/themes/themes.dart';
import 'package:botsta_app/constants/app_constants.dart';
import 'package:botsta_app/logic/bloc/authentication_bloc.dart';
import 'package:botsta_app/models/authentication_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extentions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.translate('SETTINGS.title')),
      ),
      body: Container(
        child: ListView(
          children: [
            Text(context.translate('SETTINGS.theme.title')),
            BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return CupertinoSegmentedControl(
                  children: {
                    AppTheme.Light: Text(context.translate('SETTINGS.theme.light')),
                    AppTheme.Dark: Text(context.translate('SETTINGS.theme.dark'))
                  },
                  onValueChanged: (obj) {
                    context.read<ThemeBloc>().add(new ThemeEventUpdate(theme: obj as AppTheme));
                  },
                  groupValue: state.appTheme,
                );
              },
            ),
            Text(context.translate('SETTINGS.localization.title')),
            BlocBuilder<LocalizationBloc, LocalizationState>(
              builder: (context, state) {
                return CupertinoSegmentedControl(
                  children: {
                    AppConstants.LANGCODE_EN: Text(context.translate('SETTINGS.localization.english')),
                    AppConstants.LANGCODE_DE: Text(context.translate('SETTINGS.localization.german'))
                  },
                  onValueChanged: (obj) {
                    context.read<LocalizationBloc>().add(new UpdateLocalizationEvent(Locale(obj as String)));
                  },
                  groupValue: state.locale.languageCode,
                );
              },
            ),
            MaterialButton(child: Text(context.translate('SETTINGS.logout')), onPressed: () {
              context.read<AuthenticationBloc>().add(UpdateAuthenticationEvent(AuthState.Unauthenticated));
            },)
          ],
        ),
      ),
    );
  }
}
