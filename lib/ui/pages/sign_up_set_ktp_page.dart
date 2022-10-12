import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/buttons.dart';
import '../widgets/forms.dart';

class SignUpSetKtpPage extends StatefulWidget {

  const SignUpSetKtpPage({Key? key}) : super(key: key);

  @override
  State<SignUpSetKtpPage> createState() => _SignUpSetKtpPageState();
}

class _SignUpSetKtpPageState extends State<SignUpSetKtpPage> {
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
            'Verify Your\nAccount',
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
                  'Passport/ID Card',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          CustomTextWidget(title: 'Skip for Now', onPressed: () {
            Navigator.pushNamed(context, '/sign-up-success');
          }),
        ],
      ),
    );
  }
}
