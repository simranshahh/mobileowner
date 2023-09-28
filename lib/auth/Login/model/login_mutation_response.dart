// class LoginMutationResponse {
//   String accessToken;
//   LoginMutationResponseUser user;

//   LoginMutationResponse({
//     required this.accessToken,
//     required this.user,
//   });
//   Map<String, dynamic> toMap() {
//     return {
//       'access_token': accessToken,
//       'user': user,
//     };
//   }

//   LoginMutationResponse.fromJson(Map<String, dynamic> json)
//       : accessToken = json['accessToken'],
//         user = LoginMutationResponseUser.fromJson(json['user']);
// }


class LoginMutationResponse {
  String accessToken;
  LoginMutationResponseUser user;

  LoginMutationResponse({
    required this.accessToken,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return {
      'accessToken': accessToken,
      'user': user
          .toMap(), // Assuming LoginMutationResponseUser has a toMap() function as well
    };
  }

  factory LoginMutationResponse.fromJson(Map<String, dynamic> json) {
    return LoginMutationResponse(
      accessToken: json['accessToken'],
      user: LoginMutationResponseUser.fromJson(json['user']),
    );
  }
}

// Save accessToken using shared preferences

class LoginMutationResponseUser {
  int id;

  int customerId;
  DateTime createdOn;
  // LoginMutationResponseUserCustomer customer;

  LoginMutationResponseUser({
    required this.id,
    required this.createdOn,
    required this.customerId,
    // required this.customer,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'createdOn': createdOn.toString(),
      'customerId': customerId,
      // 'customer': customer.toMap(),
    };
  }

  LoginMutationResponseUser.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        createdOn = DateTime.parse(json['createdOn']),
        customerId = json['customerId'];
  // customer = LoginMutationResponseUserCustomer.fromJson(json["customer"]);
}

// class LoginMutationResponseUserCustomer {
//   String email;

//   LoginMutationResponseUserCustomer({
//     required this.email,
//   });
//   Map<String, dynamic> toMap() {
//     return {
//       'email': email,
//     };
//   }

//   LoginMutationResponseUserCustomer.fromJson(Map<String, dynamic> json)
//       : email = json['email'];
// }
