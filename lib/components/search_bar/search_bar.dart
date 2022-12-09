import 'package:base_application/components/text_field/text_field_x.dart';
import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/theme/text_style.dart';
import 'package:flutter/material.dart';

import '../../core/media_query_x.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<double> sizeAnimationSearchBar;
  late Animation<double> oneToZeroAnimation;

  late Animation<double> zeroToOneAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));

    sizeAnimationSearchBar = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeInOutCirc, reverseCurve: Curves.easeOutCirc));

    oneToZeroAnimation = Tween<double>(begin: 1.0, end: 0.0)
        .animate(CurvedAnimation(parent: animationController, curve: Curves.linearToEaseOut));

    zeroToOneAnimation = Tween(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: animationController, curve: Curves.linearToEaseOut));
  }

  final focusNode = FocusNode();

  bool hasFocus = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        hasFocus = !hasFocus;
        animationController.forward();
        //     Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
      } else {
        hasFocus = !hasFocus;
        animationController.reverse();
      }
    });
    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    focusNode.removeListener(() {});
    animationController.dispose();
    animationController.removeListener(() {});
    super.dispose();
  }

  final double searchBarPadding = 20.w;
  final double width = MediaQueryX.width;

  final Size leadingSize = Size(40.w, 40.h);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: searchBarPadding),
      child: Row(
        children: [
          Transform.translate(
            offset: Offset(zeroToOneAnimation.value * -(leadingSize.width), 0),
            child: Container(
              alignment: Alignment.center,
              width: oneToZeroAnimation.value * leadingSize.width,
              height: oneToZeroAnimation.value * leadingSize.height,
              decoration: const BoxDecoration(color: Colors.amber),
              child: const CircleAvatar(radius: 5),
            ),
          ),
          Transform.translate(
            offset: Offset(zeroToOneAnimation.value * -(searchBarPadding), 0),
            child: Container(
              alignment: Alignment.center,
              height: 40.h,
              width: width - 120.w,
              child: TextFieldX(
                hintText: "Search",
                focusNode: focusNode,
                borderRadius: 20,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(zeroToOneAnimation.value * (leadingSize.width), 0),
            child: Container(
              alignment: Alignment.center,
              width: oneToZeroAnimation.value * 40.w,
              height: oneToZeroAnimation.value * 40.w,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const CircleAvatar(radius: 5),
            ),
          ),
          GestureDetector(
            onTap: () {
              focusNode.unfocus();
            },
            child: FadeTransition(
              opacity: zeroToOneAnimation,
              child: Transform.translate(
                offset: Offset(oneToZeroAnimation.value * (-leadingSize.width), 0),
                child: Container(
                    alignment: Alignment.center,
                    width: zeroToOneAnimation.value * 40.w,
                    height: zeroToOneAnimation.value * 40.w,
                    child: FittedBox(child: Text("Cancel", style: TextStylesX(context).s12W500))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



// ColoredBox(
//         color: Colors.amber,
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             AnimatedOpacity(
//               duration: const Duration(seconds: 1),
//               opacity: !hasFocus ? 1 : 0,
//               child: AnimatedContainer(
//                 curve: Curves.easeInOutCirc,
//                 duration: const Duration(seconds: 1),
//                 width: !hasFocus ? 40 : 0,
//                 height: !hasFocus ? 40 : 0,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: Colors.green,
//                 ),
//               ),
//             ),
//             Container(
//               height: sizeAnimation.value,
//               width: sizeAnimation.value,
//               color: colorAnimation.value,
//             ),
//             AnimatedOpacity(
//               duration: const Duration(seconds: 1),
//               opacity: !hasFocus ? 1 : 0,
//               child: AnimatedContainer(
//                 curve: Curves.easeInOutCirc,
//                 duration: const Duration(seconds: 1),
//                 width: !hasFocus ? 40 : 0,
//                 height: !hasFocus ? 40 : 0,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: Colors.green,
//                 ),
//               ),
//             ),
//             AnimatedOpacity(
//               duration: const Duration(seconds: 1),
//               opacity: hasFocus ? 1 : 0,
//               child: AnimatedContainer(
//                 alignment: Alignment.center,
//                 curve: Curves.easeInOutCirc,
//                 duration: const Duration(seconds: 1),
//                 width: hasFocus ? 40 : 0,
//                 height: hasFocus ? 60 : 0,
//                 child: Text(
//                   "data",
//                   maxLines: 1,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),