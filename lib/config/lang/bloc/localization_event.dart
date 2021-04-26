part of 'localization_bloc.dart';

abstract class LocalizationEvent extends Equatable {
  const LocalizationEvent();

  @override
  List<Object> get props => [];
}

class InitialLocalizationEvent extends LocalizationEvent {

}

class UpdateLocalizationEvent extends LocalizationEvent {
  final Locale locale;
  const UpdateLocalizationEvent(this.locale);
}
