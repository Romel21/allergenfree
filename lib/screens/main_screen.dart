import 'package:flutter/material.dart';

import '../widgets/main_body.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const routeName = '/welcome';

  @override
  Widget build(BuildContext context) {
    return const MainBody();
  }
}
