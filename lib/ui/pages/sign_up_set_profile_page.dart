import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/buttons.dart';
import '../widgets/forms.dart';

class SignUpSetProfilePage extends StatefulWidget {

  const SignUpSetProfilePage({Key? key}) : super(key: key);

  @override
  State<SignUpSetProfilePage> createState() => _SignUpSetProfilePageState();
}

class _SignUpSetProfilePageState extends State<SignUpSetProfilePage> {
  String? imgProfile;

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
            'Join Us to Unlock\nYour Growth',
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
                InkWell(
                  onTap: () {
                    setState(() {
                      imgProfile = 'assets/img_profile.png';
                    });
                  },
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: lightBackgroundColor,
                      shape: BoxShape.circle,
                      image: imgProfile != null
                          ? DecorationImage(
                              image: AssetImage(imgProfile!),
                              fit: BoxFit.cover,
                            )
                          : null,
                    ),
                    child: imgProfile == null ? Center(
                      child: Image.asset(
                        'assets/ic_upload.png',
                        width: 32,
                        height: 32,
                      ),
                    ) : null,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Shayna Hanna',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomFormField(
                  title: 'Set PIN (6 digit number)',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-set-ktp');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
