// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobileowner/Homepage/pages/homepage.dart';
import 'package:mobileowner/auth/Login/Bloc/authentication_cubit.dart';
import 'package:mobileowner/auth/Login/Bloc/authentication_state.dart';
import 'package:mobileowner/auth/Login/model/login_mutation_response.dart';
import 'package:mobileowner/auth/Login/mutation/login.dart';
import 'package:mobileowner/graphql/garphql_provider.dart';
import 'package:mobileowner/utils/color_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/size_config.dart';
import '../../../utils/textfield.dart';
import '../model/login_variable.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String? contact;
  String? password;
  bool _obscureText = true;
  late AuthenticationCubit authCubit;
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: refreshclientt,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstant.primary,
          body: BlocConsumer<AuthenticationCubit, AuthenticationState>(
            listener: (context, state) {
              if (state is AuthenticationSuccess) {
              } else if (state is AuthenticationError) {
                print('error');
              }
              // TODO: implement listener
            },
            builder: (context, state) {
              return Mutation<LoginMutationResponse>(
                options: MutationOptions(
                    document: mutation,
                    onCompleted: (data) {
                      if (data != null) {
                        authCubit.login(LoginMutationResponseUser.fromJson(
                          data['login'] as Map<String, dynamic>,
                        ) as LoginMutationResponse);
                        String token = data['login']['accessToken'];
                        _saveAuthTokenToSharedPreferences(token);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => HomePage(),
                          ),
                        );
                      }
                    },
                    onError: (error) {
                      String errorMessage = "An error occured";

                      if (error!.graphqlErrors.isNotEmpty) {
                        errorMessage = error.graphqlErrors.first.message;
                      } else {
                        errorMessage = error.toString();
                      }
                    }),
                builder: ((runMutation, result) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: displayWidth(context) * 0.04,
                      vertical: displayWidth(context) * 0.18,
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Text('Welcome to loyalty App',
                              textScaleFactor: 1,
                              style: Theme.of(context).textTheme.displayMedium),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: Text(
                            'Login to continue ',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        CustomTextFormField(
                          hintText: 'Phone Number',
                          keyboardType: TextInputType.phone,
                          onSaved: (input) => contact = input,
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.numeric(),
                            FormBuilderValidators.required()
                          ]),
                          obscureText: false,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        CustomTextFormField(
                          hintText: 'Password',
                          onSaved: (input) => password = input,
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                            FormBuilderValidators.minLength(4,
                                errorText:
                                    "Password should be minimum 4 characters"),
                          ]),
                          obscureText: true,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText =
                                    !_obscureText; // Toggle the obscureText value
                              });
                            },
                            child: Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: ColorConstant.bluesub,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            // String? deviceToken = await getDeviceToken();
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              runMutation(LoginInput(
                                      contact: contact!,
                                      password: password!,
                                      loginType: "OWNER",
                                      devicetoken: "abc",
                                      rememberMe: "false")
                                  .toJson());
                            }
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                              backgroundColor: MaterialStatePropertyAll(
                                  ColorConstant.buttoncolor)),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 16,
                                color: ColorConstant.bluesub,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: displayWidth(context) * 0.14,
                            top: displayHeight(context) * 0.06,
                          ),
                          child: Row(
                            children: [
                              Center(
                                child: Text("Don't have an account?",
                                    textScaleFactor: 1.0,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall),
                              ),
                              InkWell(
                                child: Text(
                                  'Signup',
                                  textScaleFactor: 1,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                          color: ColorConstant.buttoncolor,
                                          fontWeight: FontWeight.w500),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, '/signup');
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );

                  // return Text('hello');
                }),
              );
            },
          ),
        ),
      ),
    );
  }

  Future<void> _saveAuthTokenToSharedPreferences(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('authToken', token);
  }
}
