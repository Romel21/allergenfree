import 'package:flutter/material.dart';

import '../../widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomeBody(),
    );
  }
}

