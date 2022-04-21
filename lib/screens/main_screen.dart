import 'package:allergenfree/screens/auth/authenticate.dart';
import 'package:allergenfree/screens/home/home.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://i.pinimg.com/564x/8f/c0/8f/8fc08fd48cd8eda6dfca9ef25047c865.jpg'),
            fit: BoxFit.cover),
      ),
    );
  }
}
