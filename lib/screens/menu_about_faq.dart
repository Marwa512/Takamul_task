import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takamul_task/shared/widget/custom_appbar.dart';

import '../shared/widget/custom_bottom_nav.dart';
import '../shared/widget/custom_text.dart';

// ignore: must_be_immutable
class MenuAboutFAQScreen extends StatelessWidget {
  MenuAboutFAQScreen({super.key});

  List<String> faqList = [
    "ماهو نصح؟",
    "  ماهو عنوانكم؟",
    "هل انتم مرخصون؟",
    "ماهو رابط موقعكم",
  ];
  List<String> expandList = [
    " يقوم المستثمر بانشاء حساب في داول واذا رغب في اظهار معاملات والمحفظه والمواقف عليه ربط حسابه في محفظه داول",
    "  ",
    "",
    "",
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: customAppBar(title: "الاسئله الشائعه"),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 370,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return cardContainer(title: faqList[index], expandedText: expandList[index]);
                  },
                  itemCount: 4,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                title: "تواصل معنا",
                color: Colors.grey,
              ),
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/images/whatsapp.svg",
                          semanticsLabel: 'Logo'),
                      const SizedBox(
                        width: 5,
                      ),
                      const CustomText(
                        title: "عبر واتساب",
                        fontSize: 21,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: const CutomBottomNav(),
      ),
    );
  }
}

Widget cardContainer({
  required String title,
  String? expandedText,
  dynamic onPressed,
  bool whatsapp = false,
}) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.grey[100],
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: ExpansionTile(
        shape: const Border.symmetric(vertical: BorderSide.none),
        title: CustomText(title: title),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 5,
              ),
              CustomText(
                title: expandedText ?? "",
                fontSize: 15,
              ),

            ],
          ),
        ],
      ),
    ),
  );
}
