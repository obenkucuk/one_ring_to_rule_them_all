import 'package:base_application/components/buttons/icon_button_x.dart';
import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/router/router.dart';

import 'package:base_application/screens/main_screens/portfolio_screen/controller/portfolio_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class PortfolioView extends GetView<PortfolioController> {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Portföy',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        actions: [
          Hero(tag: 'oben', child: IconButtonX(onTap: () => context.pushNamed(RoutesNames.addStock), icon: Icons.add))
        ],
      ),
      body: GetBuilder<PortfolioController>(
        id: PortfolioScreenUpdateKeys.portfolio,
        builder: (controller) {
          return ListView.separated(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const Text('aaaa');
            },
            separatorBuilder: (context, index) => SizedBox(height: 10.h),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
