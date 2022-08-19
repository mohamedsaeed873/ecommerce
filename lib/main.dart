import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/localizthon/changelocal.dart';
import 'package:ecommerce/core/localizthon/tranzlthon.dart';
import 'package:ecommerce/core/services/service.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/view/screens/langouge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalControler controler = Get.put(LocalControler());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslations(),
      title: 'E_commerce',
      locale: controler.langugae,
      theme: ThemeData(
          fontFamily: 'PlayfairDisplay',
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
            headline2: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
            bodyText1: TextStyle(
                height: 2,
                color: AppColor.gray,
                fontWeight: FontWeight.bold,
                fontSize: 17),
            bodyText2: TextStyle(height: 2, color: AppColor.gray, fontSize: 15),
          )),
      home: const Language(),
      routes: routes,
    );
  }
}
