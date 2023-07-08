import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takamul_task/screens/menu_about_desc.dart';
import 'package:takamul_task/screens/menu_about_no.dart';
import 'package:takamul_task/screens/menu_about_terms.dart';
import 'package:get/get.dart';
import 'package:takamul_task/shared/widget/custom_bottom_nav.dart';
import '../shared/widget/custom_appbar.dart';
import '../shared/widget/custom_text.dart';
import 'menu_about_faq.dart';

class MenuAboutAppScreen extends StatelessWidget {
  const MenuAboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: customAppBar(title: "   عن التطبيق"),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            const SizedBox(
              width: double.infinity,
              height: 200,
              child: Image(
                image: AssetImage("assets/images/about.png"),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            cardContainer(
                asset: "assets/images/question.svg",
                title: "نبذه عن نصح",
                onPressed: () {
                  Get.to(() => const MenuAboutScreen());
                }),
            cardContainer(
                asset: "assets/images/statement.svg",
                title: " بيان اخلاء مسؤوليه",
                onPressed: () {
                  Get.to(() => const MenuAboutDescScreen());
                }),
            cardContainer(
                asset: "assets/images/terms.svg",
                title: "  الشروط والاحكام ",
                onPressed: () {
                  Get.to(() => const MenuAboutTermsScreen());
                }),
            cardContainer(
                asset: "assets/images/information(2).svg",
                title: "   الاسئله الشائعه  ",
                onPressed: () {
                  Get.to(() =>  MenuAboutFAQScreen());
                }),
          ]),
        ),
        bottomNavigationBar: const CutomBottomNav(),
      ),
    );
  }
}

Widget cardContainer({
  required String title,
  required String asset,
  dynamic onPressed,
}) {
  return Container(
    width: double.infinity,
    height: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(asset, semanticsLabel: 'Logo'),
            const SizedBox(
              width: 20,
            ),
            CustomText(
              title: title,
              fontSize: 21,
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios_outlined),
              onPressed: onPressed,
            )
          ],
        ),
      ),
    ),
  );
}
