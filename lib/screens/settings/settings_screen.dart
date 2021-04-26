import 'package:botsta_app/config/themes/themes.dart';
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
            Text('Theme'),
            BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return CupertinoSegmentedControl(
                  children: {
                    AppTheme.Light: Text('Light'),
                    AppTheme.Dark: Text('Dark')
                  },
                  onValueChanged: (obj) {
                    context.read<ThemeBloc>().add(new ThemeEventUpdate(theme: obj as AppTheme));
                  },
                  groupValue: state.appTheme,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
