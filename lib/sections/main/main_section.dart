

import 'package:ctotek/app/widgets/arrow_on_top.dart';
import 'package:ctotek/core/providers/drawer_provider.dart';
import 'package:ctotek/core/providers/scroll_provider.dart';
import 'package:ctotek/core/res/responsive.dart';
import 'package:ctotek/sections/main/widgets/_body.dart';
import 'package:ctotek/sections/main/widgets/_nav_bar_web.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  final ScrollProvider scrollProvider;
  const MainPage({super.key, required this.scrollProvider});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
        isShow = firstVisible > 0 && lastVisible < 90;
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
    final drawerProvider = Provider.of<DrawerProvider>(context);
    final scrollProvider = Provider.of<ScrollProvider>(context);
    return SafeArea(
      child: Scaffold(
        key: drawerProvider.key,
        extendBodyBehindAppBar: true,//true로 설정되면, 본문의 내용이 AppBar 뒤로 확장됩니다. 이는 AppBar에 투명한 배경을 설정하고 본문의 내용이 AppBar 아래로 스크롤되는 효과를 얻고자 할 때 유용합니다.
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(160),
          child: Responsive(web: NavBarWeb(scrollProvider: scrollProvider,),),
        ),
        body: Stack(
          children: [
            Body(scrollProvider: scrollProvider),
            if(isShow)const ArrowOnTop()
          ],
       ),
    ));
  }
}
