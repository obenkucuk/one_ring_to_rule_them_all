import 'package:base_application/core/search_screen/controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Hero(
      tag: "search",
      child: Scaffold(
        body: Center(
          child: Text("Search Page"),
        ),
      ),
    );
  }
}
