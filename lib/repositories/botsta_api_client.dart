import 'package:botsta_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';

class BotstaApiClient {
  final GraphQLClient _client;

  const BotstaApiClient({required GraphQLClient client}): _client = client;

  factory BotstaApiClient.create() {
    final httpLink = HttpLink(AppConstants.BOTSTA_ENDPOINT, defaultHeaders: { 
      'Authorization': 'Bearer ' 
    });
    
    final link = Link.from([httpLink]);
    return BotstaApiClient(
      client: GraphQLClient(cache: GraphQLCache(), link: link),
    );
  }


  Future<QueryResult> performQuery(String query, {Map<String, dynamic>? variables}) async {
    QueryOptions options = QueryOptions(document: gql(query), variables: variables!);
    final result = await _client.query(options);
    return result;
  }

  Future<QueryResult> performMutation(String query, {Map<String, dynamic>? variables}) async {
    MutationOptions options = MutationOptions(document: gql(query), variables: variables!);
    final result = await _client.mutate(options);
    return result;
  }

}