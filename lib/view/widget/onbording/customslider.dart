import 'package:ecommerce/controllar/onbording_controllar.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CusomcustomsliderOnBording extends GetView<OnBordingControllarImp> {
  const CusomcustomsliderOnBording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      itemCount: OnBoardingList.length,
      itemBuilder: (context, i) {
        return Column(children: [
          Text(
            OnBoardingList[i].title!,
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 80,
          ),
          Image.asset(
            OnBoardingList[i].image!,
            width: 200,
            height: 230,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              OnBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          )
        ]);
      },
    );
  }
}
