import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:useful_points/controller/choose_lang/choose_lang_controller.dart';
import 'package:useful_points/data/storage/app/locals/words.dart';
import 'package:useful_points/data/tools/constants/images.dart';
import 'package:useful_points/views/pages/choose_lang/widget/lang_item.dart';
import 'package:useful_points/views/widgets/custom_app_bar.dart';
import 'package:useful_points/views/widgets/custom_button.dart';

class ChooseLangPage extends StatelessWidget {
  const ChooseLangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ChooseLangController(),
        builder: (controller) {
          return Scaffold(
            appBar: CustomAppBar(title: Words.chooseLang.tr,),
            body: Column(
              children: [
                InkWell(
                  onTap: () => controller.changeLang('uz'),
                  child: LangItem(isCurrent: controller.currentLang == 'uz', title: Words.uzLang.tr, logo: CustomImages.uzIcon),
                ),
                InkWell(
                  onTap: () => controller.changeLang('ru'),
                  child: LangItem(isCurrent: controller.currentLang == 'ru', title: Words.ruLang.tr, logo: CustomImages.ruIcon),
                ),
                InkWell(
                  onTap: () => controller.changeLang('en'),
                  child: LangItem(isCurrent: controller.currentLang == 'en', title: Words.enLang.tr, logo: CustomImages.enIcon),
                ),
                InkWell(
                  onTap: () => controller.changeLang('fr'),
                  child: LangItem(isCurrent: controller.currentLang == 'fr', title: Words.frLang.tr, logo: CustomImages.frIcon),
                ),
                const Spacer(),
                InkWell(
                  onTap: () => controller.continueAction(),
                  child: CustomButton(title: Words.actionContinue.tr),
                ),
              ],
            ),
          );
        }
    );
  }
}
