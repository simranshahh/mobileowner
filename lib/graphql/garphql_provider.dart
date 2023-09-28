import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jwt_decoder/jwt_decoder.dart'; // Add this line to your imports
import 'package:shared_preferences/shared_preferences.dart';

final HttpLink httpLink = HttpLink(
//   "http://182.93.94.10:4004/graphql",
// );
    "http://192.168.10.32:3333/graphql");

final AuthLink authLink = AuthLink(
  getToken: () async {
    final token = await getRefreshToken();

    return 'Bearer $token';
  },
);
final AuthLink refreshLink = AuthLink(
  getToken: () async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final authToken = prefs.getString('authToken') ?? '';
    return 'Bearer $authToken';
  },
);
final Link link = authLink.concat(httpLink);
final Link blink = refreshLink.concat(httpLink);
GraphQLClient clientToQuery() => GraphQLClient(
      cache: GraphQLCache(),
      link: link,
    );
GraphQLClient clientt = GraphQLClient(
  link: link,
  cache: GraphQLCache(),
);
GraphQLClient refreshclient = GraphQLClient(
  link: blink,
  cache: GraphQLCache(),
);
final ValueNotifier<GraphQLClient> refreshclientt =
    ValueNotifier<GraphQLClient>(
  GraphQLClient(
    link: blink,
    cache: GraphQLCache(),
  ),
);
final ValueNotifier<GraphQLClient> client = ValueNotifier<GraphQLClient>(
  GraphQLClient(
    link: link,
    cache: GraphQLCache(),
  ),
);

Future<String> getRefreshToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final authToken = prefs.getString('authToken') ?? '';
  if (kDebugMode) {
    print(authToken);
  }
  Map<String, dynamic> tokenPayload = JwtDecoder.decode(authToken);

  if (!tokenPayload.containsKey('exp')) {
    throw Exception('Invalid token payload or missing expiration timestamp');
  }

  int expirationTimestamp =
      tokenPayload['exp'] * 1000; // Convert to milliseconds
  int refreshThreshold = 9 * 60 * 1000; // 1 minutes in milliseconds
  int refreshTime = expirationTimestamp - refreshThreshold;
  if (kDebugMode) {
    print('from gettoken');
  }
  if (kDebugMode) {
    print(expirationTimestamp);
  }
  DateTime expirationDateTime =
      DateTime.fromMillisecondsSinceEpoch(expirationTimestamp);
  if (kDebugMode) {
    print('Token expiration: $expirationDateTime');
  }

  if (refreshTime < DateTime.now().millisecondsSinceEpoch) {
    if (kDebugMode) {
      print('from token expiry');
    }
    QueryResult result = await refreshclient.mutate(MutationOptions(
      document: gql("""
mutation Mutation {
  refresh {
    accessToken
  }
}
"""),
    ));
    String refreshToken = result.data?['refresh']['accessToken'];
    prefs.setString('authToken', refreshToken);

    return refreshToken;
  } else {
    if (kDebugMode) {
      print('from non expire');
    }
    return authToken;
  }
}
