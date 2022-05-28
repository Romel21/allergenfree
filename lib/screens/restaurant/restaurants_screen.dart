import 'package:flutter/material.dart';

import '../../widgets/restaurant/restaurants_body.dart';

class RestaurantsScreen extends StatelessWidget {
  const RestaurantsScreen({Key? key}) : super(key: key);

  static const routeName = '/restaurants-screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RestaurantsBody(),
    );
  }
}

