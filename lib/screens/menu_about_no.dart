import 'package:flutter/material.dart';

import '../shared/widget/custom_appbar.dart';
import '../shared/widget/custom_bottom_nav.dart';
import '../shared/widget/custom_text.dart';

class MenuAboutScreen extends StatelessWidget {
  const MenuAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: customAppBar(title: " عن التطبيق"),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(children: [
            CustomText(
                title:
                    " داول هي منصه تربط المستخدمينالذين يرغبون في نشر مواقفهم ومعملاتهم الاستمثاريه (تسمى الخبراء) والكستخدمين الذين يرغبون في الاطلاع على محافظ الخبراء (تسمى المستثمرين)   "),
            CustomText(
              title:
                  "   يقوم المستثمر بانشاء حساب في داول واذا رغب في اظهار معاملات والمحفظه والمواقف عليه ربط حسابه في محفظه داول لتحويلها الى حساب كبير سقوم تطبيق داول بحساب المحفظه وتحليلها وعرضها بيانيا",
            ),
            CustomText(
              title:
                  " من خلال موقع داول يمكن للمستثمرين الاطلاع على حسابات الخبراء وعرض مواقعهم عن طريق دفع رسوم شهريه يمكن للخبير مشاركه اكثر من محفظه في التطبيق وسيتم عرض المعلومات على المستثمرين بشفافيه كامله",
            ),
          ]),
        ),
        bottomNavigationBar: const CutomBottomNav(),
      ),
    );
  }
}
