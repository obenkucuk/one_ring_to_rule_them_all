import 'package:base_application/core/search_screen/controller/search_controller.dart';
import 'package:base_application/core/search_screen/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController>(
      init: SearchController(),
      builder: (controller) => const SearchView(),
    );
  }
}
