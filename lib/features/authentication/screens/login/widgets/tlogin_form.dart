import 'package:flutter/material.dart';
import 'package:flutter_projects/features/authentication/screens/signup/sgn_up_page.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_string.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTextStrings.email,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),

            //Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTextStrings.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),

            // Remember Password and forget password

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    Text(TTextStrings.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(TTextStrings.forgetPassword),
                ),
              ],
            ),

            const SizedBox(height: TSizes.spaceBtwSections),
            // SignIn Button
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  TTextStrings.signIn,
                ),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            //Create An Account
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => const SignUpPage());
                },
                child: Text(
                  TTextStrings.createAccount,
                ),
              ),
            ),

            const SizedBox(width: TSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
