import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:botsta_app/models/chatroom.dart';
import 'package:equatable/equatable.dart';

part 'graphql_event.dart';
part 'graphql_state.dart';

class GraphqlBloc extends Bloc<GraphqlEvent, GraphqlState> {
  GraphqlBloc() : super(GraphqlInitial());

  @override
  Stream<GraphqlState> mapEventToState(
    GraphqlEvent event,
  ) async* {
    if (event is GraphqlInitial) {
      yield GraphqlInitial();
    }
  }
}
