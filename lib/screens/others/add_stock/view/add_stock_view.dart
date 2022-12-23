import 'package:base_application/components/buttons/material_button_x.dart';
import 'package:base_application/components/dropdown/my_dropdown.dart';
import 'package:base_application/constants/size_constants.dart';
import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/core/media_query_x.dart';
import 'package:base_application/screens/main_screens/portfolio_screen/controller/portfolio_controller.dart';
import 'package:base_application/screens/others/add_stock/controller/add_stock_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../components/text_field/text_field_x.dart';

class AddStockView extends GetView<AddStockController> {
  const AddStockView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add New Stock'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 48.h,
                child: MyDropdownWidget(
                  backgroundColor: Colors.white,
                  itemsList: const ['1', '2', '3'],
                  getSelectedValue: (p0) => null,
                  dropdownWidth: MediaQueryX.width - 40.w,
                ),
              ),
              const Text('Hisse Adı'),
              TextFieldX(
                borderRadius: 0,
                hintText: 'Lütfen hisse adını giriniz',
                fillColor: Theme.of(context).colorScheme.primaryContainer,
                focusNode: controller.nameFocus,
                nextFocus: controller.numberFocus,
                onChanged: (stockName) => controller.portfolioModel.stockName = stockName,
              ),
              const Text('Lot Sayısı'),
              TextFieldX(
                hintText: 'Lütfen lot miktarını giriniz',
                fillColor: Theme.of(context).colorScheme.primaryContainer,
                focusNode: controller.numberFocus,
                nextFocus: controller.costFocus,
                onChanged: (numberOfLots) => controller.portfolioModel.numberOfLots = double.parse(numberOfLots),
              ),
              const Text('Birim Maliyet'),
              TextFieldX(
                hintText: 'Lütfen birim maliyeti giriniz',
                fillColor: Theme.of(context).colorScheme.primaryContainer,
                focusNode: controller.costFocus,
                textInputAction: TextInputAction.done,
                onChanged: (unitCost) => controller.portfolioModel.unitCost = double.parse(unitCost),
              ),
              const Hero(
                tag: 'oben',
                child: SizedBox.square(
                  dimension: 100,
                  child: ColoredBox(color: Colors.amber),
                ),
              ),
              const Spacer(),
              MaterialButtonX(
                  buttonText: 'Ekle',
                  onTap: () {
                    Get.find<PortfolioController>().portfolioList.value.add(controller.portfolioModel);
                    context.pop();
                  }),
              SizedBox(height: MediaQueryX.padding.bottom)
            ],
          ),
        ));
  }
}
