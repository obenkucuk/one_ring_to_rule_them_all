import 'package:base_application/screens/read_asset/controller/read_asset_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../components/dropdown/dropdown_button.dart';

class ReadAssetView extends GetView<ReadAssetController> {
  const ReadAssetView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: (details) {
        controller.closeO();
      },
      onTap: () => controller.closeO(),
      child: Scaffold(
        key: controller.scaffoldKey,
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              MyDropdownWidget(
                itemsList: const ["1", "2", "3"],
                getSelectedValue: (p0) => print(p0),
              ),
              SizedBox(
                key: controller.dimensionalKey,
                height: 200,
                width: 75,
                child: CompositedTransformTarget(
                  link: controller.layerLink,
                  child: ElevatedButton(
                    onPressed: () {
                      print(controller.instance.size);
                      controller.showO();
                      // BottomSheetX.showBottomSheet(
                      //   const SizedBox(),
                      //   context,
                      //   title: "title",
                      // );
                    },
                    child: const Text("oben"),
                  ),
                ),
              ),
              Expanded(
                child: FutureBuilder(
                  future: controller.loadCountryData(),
                  initialData: const [],
                  builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Text(snapshot.data![index].symbol.toString());
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
