import 'package:botsta_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';

class BotstaApiClient {
  final GraphQLClient _graphQLClient;

  const BotstaApiClient({@required GraphQLClient graphQLClient}) 
    : assert(graphQLClient != null), _graphQLClient = graphQLClient;

  factory BotstaApiClient.create() {
    final httpLink = HttpLink(AppConstants.BOTSTA_ENDPOINT);
    final link = Link.from([httpLink]);
    return BotstaApiClient(
      graphQLClient: GraphQLClient(cache: GraphQLCache(), link: link),
    );
  }

}