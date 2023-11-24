import 'package:ctotek/app/utils/utils.dart';
import 'package:ctotek/app/widgets/bg_testimonial.dart';
import 'package:ctotek/app/widgets/slide_image.dart';
import 'package:ctotek/core/providers/scroll_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Body extends StatefulWidget {
  final ScrollProvider scrollProvider;
  const Body({super.key, required this.scrollProvider});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isShow = false;
  late VoidCallback myListener;

  @override
  void initState() {
    super.initState();
    myListener = (){
      final positions = widget.scrollProvider.itemPositionsListener.itemPositions.value;
      final firstVisible = positions.first.index;
      final lastVisible = positions.last.index;
      setState(() {
        isShow = firstVisible > 0 && lastVisible > 1;
      });
    };
    widget.scrollProvider.itemPositionsListener.itemPositions.addListener(myListener);
  }
  @override
  void dispose() {
    widget.scrollProvider.itemPositionsListener.itemPositions
      .removeListener(myListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    return Stack(
      children: [
        const SlideImages(),
        if (isShow) const BgTestimonial(),
        ScrollablePositionedList.builder(
            itemCount: BodyUtils.views(scrollProvider).length,
            itemBuilder: (context,index) => BodyUtils.views(scrollProvider)[index],
            itemScrollController: scrollProvider.itemScrollController,
            scrollOffsetController: scrollProvider.scrollOffsetController,
            itemPositionsListener: scrollProvider.itemPositionsListener,
            scrollOffsetListener: scrollProvider.scrollOffsetListener,
          )
      ],
    );
  }
}
