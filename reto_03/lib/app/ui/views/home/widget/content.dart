import 'package:app_reto_03/app/ui/components/titles.dart';
import 'package:app_reto_03/app/ui/views/home/widget/cards_list_widget.dart';
import 'package:app_reto_03/app/ui/views/home/widget/list_categories_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home_controller.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => Expanded(
        child: Container(
          padding: const EdgeInsets.only(
            left: 15.0,
            right: 15.0,
          ),
          width: double.infinity,
          child: ListView(
            children: const [
              SizedBox(
                width: double.infinity,
                height: 60.0,
                child: ListCategoriesWidget(),
              ),
              SizedBox(
                height: 20.0,
              ),
              Titles(
                text: "Fastest delivery time",
              ),
              SizedBox(
                height: 15.0,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 250.0,
                  child: CardsListWidget())
            ],
          ),
        ),
      ),
    );
  }
}
