import 'package:graphql_flutter/graphql_flutter.dart';

@override
final redeempointquery = gql('''
       query FindOwnerRewardLogs {
  findOwnerRewardLogs {
    createdBy
    createdOn
    customerId
    id
    merchantId
    redeem
    remarks
    reward
  }
}
        ''');
