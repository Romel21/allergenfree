import 'package:flutter/material.dart';

import '../design/img.dart';
import '../screens/auth/login_screen.dart';
import '../screens/create_account/create_account_screen.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.85,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i.pinimg.com/564x/8f/c0/8f/8fc08fd48cd8eda6dfca9ef25047c865.jpg'),
                  fit: BoxFit.fill,
                ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: SizedBox(
                        height: 52,
                        width: 167,
                        child: OutlinedButton(
                          onPressed: () => Navigator.of(context)
                              .pushNamed(LoginScreen.routeName),
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
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: SizedBox(
                        height: 52,
                        width: 167,
                        child: ElevatedButton(
                          onPressed: () => Navigator.of(context)
                              .pushNamed(CreateAccountScreen.routeName),
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
      ),
    );
  }
}
