import 'package:botsta_app/config/lang/app_language.dart';
import 'package:botsta_app/config/lang/app_localizations.dart';
import 'package:botsta_app/config/routes/routes_config.dart';
import 'package:botsta_app/config/themes/bloc/theme_bloc.dart';
import 'package:botsta_app/startup.dart';
import 'package:botsta_app/utils/extentions/context_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'package:botsta_app/config/themes/themes.dart';

Future<void> main() async {
  configureServices();
  WidgetsFlutterBinding.ensureInitialized();
  var appLanguage = AppLanguage();
  await appLanguage.fetchLocale();
  runApp(MyApp(appLanguage: appLanguage));
}

class MyApp extends StatelessWidget {
  final AppLanguage appLanguage;

  MyApp({this.appLanguage});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppLanguage>(
      create: (_) => appLanguage,
      child: Consumer<AppLanguage>(
        builder: (context, model, child) {
          return BlocProvider<ThemeBloc>(
            create: (context) => ThemeBloc(),//..add(ThemeEventInitial()),
            child: BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return MaterialApp(
                  locale: model.appLocal,
                  supportedLocales: AppLocalizations.supportedLocales,
                  localizationsDelegates:
                      AppLocalizations.localizationsDelegates,
                  title: 'Botsta',
                  debugShowCheckedModeBanner: false,
                  theme: state.themeData,
                  onGenerateRoute: RouteConfig.ROUTER.generator,
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var appLanguage = Provider.of<AppLanguage>(context);
    appLanguage.changeLanguage(Locale('en'));

    return Scaffold(
      appBar: AppBar(
        title: Text(context.translate('title')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              context.translate('title'),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ThemeBloc>().add(ThemeEventUpdate(theme: AppTheme.Dark));
          _incrementCounter();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
