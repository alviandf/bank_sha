import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightBackgroundColor,
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            Container(
              width: 155,
              height: 50,
              margin: const EdgeInsets.only(top: 100, bottom: 50),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img_logo_light.png'),
                ),
              ),
            ),
            Text(
              'Sign In &\nGrow Your Finance',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  // NOTE: EMAIL INPUT
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email Address',
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  // NOTE: PASSWORD INPUT
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text('Forgot Password', style: blueTextStyle),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        // carouselController.nextPage();
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: purpleColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Sign In',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 24,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInPage(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Text(
                  'Create New Account',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
