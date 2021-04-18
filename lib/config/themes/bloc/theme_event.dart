part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ThemeEventInitial extends ThemeEvent { }

class ThemeEventUpdate extends ThemeEvent {
  final AppTheme theme;

  const ThemeEventUpdate({@required this.theme});

  @override
  List<Object> get props => [theme];
}