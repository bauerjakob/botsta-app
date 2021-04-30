import 'package:botsta_app/constants/constants.dart';
import 'package:botsta_app/logic/bloc/graphql_bloc.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';

class BotstaApiClient {
  final GraphQLClient _client;

  const BotstaApiClient({required GraphQLClient client}) : _client = client;

  factory BotstaApiClient.create(String? token) {
    AuthLink? authLink;

    if (token != null) {
      authLink = AuthLink(
  getToken: () async => 'Bearer $token',
);
    }

final httpLink = HttpLink(
  AppConstants.BOTSTA_ENDPOINT,
);


var link = authLink != null ? authLink.concat(httpLink) : httpLink;

/// subscriptions must be split otherwise `HttpLink` will. swallow them
// if (websocketEndpoint != null){
//   final _wsLink = WebSocketLink(websockeEndpoint);
//   _link = Link.split((request) => request.isSubscription, _wsLink, _link);
// }

var client = GraphQLClient(
  cache: GraphQLCache(),
  link: link,
);

// ...

    // final httpLink =
    //     HttpLink(AppConstants.BOTSTA_ENDPOINT, defaultHeaders: headers);
    //final link = Link.from([httpLink]);

    return BotstaApiClient(
      client: client,
    );
  }

  Future<QueryResult> performQuery(String query,
      {Map<String, dynamic>? variables}) async {
    QueryOptions options =
        QueryOptions(document: gql(query), variables: variables!);
    final result = await _client.query(options);
    return result;
  }

  Future<QueryResult> performMutation(String query,
      {Map<String, dynamic>? variables }) async {

    MutationOptions options =
        MutationOptions(document: gql(query), variables: variables ?? Map<String, dynamic>());
    final result = await _client.mutate(options);
    return result;
  }
}
