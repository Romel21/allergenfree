import 'package:flutter/material.dart';

import '../../widgets/create_account/create_account_body.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  static const routeName = '/register-screen';

  @override
  Widget build(BuildContext context) {
    return CreateAccountBody();
  }
}