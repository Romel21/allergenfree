import 'package:flutter/material.dart';

import '../../widgets/recipes/recipes_body.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({Key? key}) : super(key: key);

  static const routeName = '/recipes-screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RecipesBody(),
    );
  }
}

