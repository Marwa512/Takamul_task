import 'package:flutter/material.dart';
import 'package:takamul_task/shared/widget/custom_appbar.dart';
import 'package:takamul_task/shared/widget/custom_text.dart';

import '../shared/widget/custom_bottom_nav.dart';

class MenuAboutTermsScreen extends StatelessWidget {
  const MenuAboutTermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: customAppBar(title: "الشروط والاحكام"),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(children: [
           CustomText(
                title:
                    "خسائر اللازمه ومطالبه حدة بل الاخر لالحلفاء ان غزو واجلاء تلازمت مع  عدد بقوه معركه بلجيكا ب انه ربع اثنان المقيته في اقتنصت المصور حدة وهذه "),
            CustomText(
                title:
                    "   قصف المسرح واستمر الاتحاد في ذات اسيا للغزو الخطه والاخر لالمانيا جهة بل فيي سحثت هيروشيما البريطاني يتم عزيمه باحتلال الايدولوجيه في فصل دحر وقرى الهيمنه الايطاليه 30 استبدال الاستسلام القاذفات على مهل ببعض مئات "),
            CustomText(
                title:
                    "خسائر اللازمه ومطالبه حدة بل الاخر لالحلفاء ان غزو واجلاء تلازمت مع  عدد بقوه معركه بلجيكا ب انه ربع اثنان المقيته في اقتنصت المصور حدة وهذه ")
       
           ]),
        ),
        bottomNavigationBar: const CutomBottomNav(),
      ),
    );
  }
}
