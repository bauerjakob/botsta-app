part of 'localization_bloc.dart';

class LocalizationState extends Equatable {
  final Locale locale;
  const LocalizationState(this.locale);
  
  @override
  List<Object> get props => [locale];
}

class LocalizationInitial extends LocalizationState {
  LocalizationInitial(): super(Locale(AppConstants.LANGCODE_DEFAULT));
}
