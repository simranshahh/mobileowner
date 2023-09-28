import 'package:graphql_flutter/graphql_flutter.dart';

@override
final mutation = gql('''
       mutation Login(\$loginInput: LoginInput!) {
  login(loginInput: \$loginInput) {
    accessToken
    user {
      createdOn
      customer {
        contact
        customerName
        dob
        email
        updatedOn
      }
    }
  }
}
        ''');
