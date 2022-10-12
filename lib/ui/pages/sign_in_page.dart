import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
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
                  const CustomFormField(
                    title: 'Email Address',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  // NOTE: PASSWORD INPUT
                  const CustomFormField(
                    title: 'Password',
                    obscureText: true,
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
                  CustomFilledButton(
                    title: ' Sign In',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextWidget(
              title: 'Create New Account',
              onPressed: () {
              },
            ),
          ],
        ));
  }
}
