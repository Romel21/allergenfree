import 'package:flutter/material.dart';

import '../../widgets/user/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static const routeName = '/profile-screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ProfileBody(),
    );
  }
}

