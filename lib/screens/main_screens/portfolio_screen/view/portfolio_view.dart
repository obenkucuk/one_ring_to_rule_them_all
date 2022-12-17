import 'package:base_application/components/buttons/icon_button_x.dart';
import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/router/router.dart';

import 'package:base_application/screens/main_screens/portfolio_screen/controller/portfolio_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/size_constants.dart';
import '../../../../core/media_query_x.dart';

class PortfolioView extends GetView<PortfolioController> {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portföy"),
        actions: [IconButtonX(onTap: () => context.pushNamed(RoutesNames.addStock), icon: Icons.add)],
      ),
      body: GetBuilder<PortfolioController>(
        id: PortfolioScreenUpdateKeys.portfolio,
        builder: (controller) {
          return ListView.separated(
            itemCount: controller.portfolioList.value.length,
            itemBuilder: (BuildContext context, int index) {
              final item = controller.portfolioList.value[index];
              return Slidable(
                key: UniqueKey(),
                startActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  dismissible: DismissiblePane(onDismissed: () {}),
                  children: [
                    SlidableAction(
                      onPressed: (context) {},
                      backgroundColor: Color(0xFF21B7CA),
                      foregroundColor: Colors.white,
                      icon: Icons.share,
                      label: 'Share',
                    ),
                  ],
                ),

                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  children: [
                    SlidableAction(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(padding15.w)),
                      onPressed: (context) => controller.removePortfolioItem(index),
                      backgroundColor: Color(0xFFFE4A49),
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    ),
                  ],
                ),

                // The child of the Slidable is what the user sees when the
                // component is not dragged.
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding15.w),
                  child: SizedBox(
                    width: MediaQueryX.width,
                    child: AspectRatio(
                      aspectRatio: 5,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: padding15.w, vertical: padding15.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(radius15.w),
                          color: Theme.of(context).colorScheme.primaryContainer,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Hisse Adı"),
                                SizedBox(height: 10.h),
                                Text(item.stockName ?? ""),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Birim Maliyet"),
                                SizedBox(height: 10.h),
                                Text(item.unitCost.toString()),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Lot Sayısı"),
                                SizedBox(height: 10.h),
                                Text(item.numberOfLots.toString()),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Toplam Maliyet"),
                                SizedBox(height: 10.h),
                                Text(((item.unitCost ?? 0.0) * (item.numberOfLots ?? 0.0)).toString()),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(height: 10.h),
          );
        },
      ),
    );
  }
}
