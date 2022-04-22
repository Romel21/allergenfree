import 'package:allergenfree/design/img.dart';
import 'package:allergenfree/screens/auth/authenticate.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 700,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://i.pinimg.com/564x/8f/c0/8f/8fc08fd48cd8eda6dfca9ef25047c865.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 194),
                  child: Image.asset(
                    Img.logo,
                    scale: 2.5,
                  )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Column(
                  children: const [
                    Text(
                      'Allergen\nFree',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 48,
                        fontFamily: 'Spinnaker',
                        color: Color(0xFF889452),
                      ),
                    )
                  ],
                ),
              )),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, bottom: 30.0),
                    child: SizedBox(
                      height: 52,
                      width: 167,
                      child: OutlinedButton(
                        onPressed: () => Navigator.of(context)
                            .pushNamed(Authenticate.routeName),
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            side: const BorderSide(
                                width: 1, color: Color(0xFF889452))),
                        child: const Text(
                          'LOG IN',
                          style: TextStyle(
                              fontFamily: 'Spinnaker',
                              fontSize: 14,
                              color: Color(0xFF889452)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0, bottom: 30.0),
                    child: SizedBox(
                      height: 52,
                      width: 167,
                      child: ElevatedButton(
                        onPressed: () => Navigator.of(context)
                            .pushNamed(Authenticate.routeName),
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF889452),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        child: const Text(
                          'REGISTER',
                          style: TextStyle(
                              fontFamily: 'Spinnaker',
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
