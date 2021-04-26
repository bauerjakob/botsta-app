part of 'graphql_bloc.dart';

abstract class GraphqlEvent extends Equatable {
  const GraphqlEvent();

  @override
  List<Object> get props => [];
}

class GraphqlEventInitial extends GraphqlEvent { }

