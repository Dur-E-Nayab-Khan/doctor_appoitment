import 'package:doctor_appoitment/common/styles/widgets/login_signup/Success_Screen/success_screen.dart';
import 'package:doctor_appoitment/features/authentication/screens/login/login.dart';
import 'package:doctor_appoitment/utils/helpers/helpers_functions.dart';
import 'package:doctor_appoitment/utils/theme/constants/image_strings.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:doctor_appoitment/utils/theme/constants/test_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed:()=> Get.offAll(()=> const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        // padding to give default Equal Space to all sides of screens
        child: Padding(padding: const EdgeInsets.all(Nsize.defaultSpace),
        child: Column(
          children: [
            ///Image
            Image(image: const AssetImage(NImages.deliveredEmailIllustrations), width: NHelperFunctions.screenWidth()*0.6,),
            const SizedBox(height: Nsize.spaceBtwSections,),
            ///Title and Subtitle
            Text(NText.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
            const SizedBox(height: Nsize.spaceBtwItems,),
            Text(NText.confirmEmailtitle,style: Theme.of(context).textTheme.headlineSmall,textAlign: TextAlign.center,),
            const SizedBox(height: Nsize.spaceBtwItems,),
            Text(NText.confirmEmailSubtitle,style: Theme.of(context).textTheme.labelMedium, textAlign:TextAlign.center,),
            const SizedBox(height: Nsize.spaceBtwSections,),
            ///Buttons
          SizedBox(
  width: double.infinity,
  child: ElevatedButton(
    onPressed: () {
      Get.to(
        () => SuccessScreen(
          image: NImages.registerSuccessfull,
          title: NText.createAccountTitle,
          subtitle: NText.registritionWelcomeMessage,
          onPressed: () => Get.to(() => const LoginScreen()),
        ),
      );
    },
    child: const Text(NText.ncontinue),
  ),
),
            const SizedBox(height: Nsize.spaceBtwItems,),
            SizedBox(width: double.infinity,child: TextButton(onPressed: (){}, child: const Text(NText.resentEmail)),),
          ],
        ),
        ),
      ),
    );
  }
}