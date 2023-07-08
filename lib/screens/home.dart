import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:takamul_task/screens/menu_about_app.dart';
import 'package:takamul_task/shared/widget/custom_appbar.dart';
import 'package:takamul_task/shared/widget/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(title: ' الصفحه الرئيسيه'),
      body: const Center(
          child: 
              Text(
        "الصفحه الرئيسيه",
        style: TextStyle(fontFamily: "ScheherazadeNew", fontSize: 21),
      )),
     drawer: Drawer(
  backgroundColor: Colors.white,
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
       Container(
         height: 
         250,
         alignment: Alignment.bottomRight,
         child: DrawerHeader(
           decoration:const BoxDecoration(
            color: Colors.white,
          ),
           child:Column(
            children: [
              SvgPicture.asset("assets/images/user(4).svg"),
               const CustomText(title: "احمد احمد", fontSize: 14,),
            const  CustomText(title: " ahmed-44",fontSize: 14,),
            ],
          ),
         ),
       ),
      
         ListTile(
            leading: const  Icon(Icons.person_2_outlined, color: Color.fromARGB(255, 126, 134, 176),),
           title: const CustomText(title:'الملف الشخصي', fontSize: 18,),
           trailing:const Icon(Icons.arrow_forward_ios_rounded),
           onTap: () {
            
           },
         ),
       ListTile(
            leading: SvgPicture.asset("assets/images/statement.svg"),
           title: const CustomText(title:' فواتيري', fontSize: 18,),
           trailing:const Icon(Icons.arrow_forward_ios_rounded),
           onTap: () {
            
           },
         ),
          ListTile(
            leading: const  Icon(Icons.settings_outlined, color: Color.fromARGB(255, 126, 134, 176),),
           title: const CustomText(title:' الاعدادات', fontSize: 18,),
           trailing:const Icon(Icons.arrow_forward_ios_rounded),
           onTap: () {
            
           },
         ),
         
          ListTile(
            leading:  SvgPicture.asset("assets/images/help.svg"),
           title: const CustomText(title:' مساعده', fontSize: 18,),
           trailing:const Icon(Icons.arrow_forward_ios_rounded),
           onTap: () {
            
           },
         ),
          ListTile(
            leading:SvgPicture.asset("assets/images/information(2).svg"),
           title: const CustomText(title:' عن التطبيق', fontSize: 18,),
           trailing:const Icon(Icons.arrow_forward_ios_rounded),
           onTap: () {
            Get.to(()=> const MenuAboutAppScreen());
           },
         ),
    ],
  ),
),
    );
  }
}
