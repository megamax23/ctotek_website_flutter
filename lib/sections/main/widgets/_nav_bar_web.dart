
import 'package:ctotek/app/changes/strings.dart';
import 'package:ctotek/core/providers/scroll_provider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NavBarWeb extends StatefulWidget {
  final ScrollProvider scrollProvider;
  const NavBarWeb({super.key, required this.scrollProvider});

  @override
  State<NavBarWeb> createState() => _NavBarWebState();
}

class _NavBarWebState extends State<NavBarWeb> with SingleTickerProviderStateMixin{
  bool isShow = true;
  late VoidCallback myListener;
  late Animation<Color?> _colorAnimation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    myListener = (){
      final positions = widget.scrollProvider.itemPositionsListener.itemPositions.value;
      positions.forEach((element) {
          if(element.index == 0){
            setState(() {
              isShow = element.itemTrailingEdge > 0.8;
            });
          }
          if (isShow){
            _controller.forward();
          }else{
            _controller.reverse();
          }
        }
      );
    };
    _controller = AnimationController(vsync: this,duration: const Duration(seconds: 1));
    _controller.addListener(() {
      setState(() {

      });
    });
    _colorAnimation = ColorTween(
      begin: Colors.black,
      end: Colors.transparent,
    ).animate(_controller);
    widget.scrollProvider.itemPositionsListener.itemPositions
      .addListener(myListener);
  }
  @override
  void dispose() {
    widget.scrollProvider.itemPositionsListener.itemPositions
        .removeListener(myListener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 100.w,
      color: _colorAnimation.value  ,
      padding: EdgeInsets.symmetric(horizontal: 40.w /12, vertical: 10),
      child: Row(
        children: [
          Text(
            logoname,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20, fontWeight: FontWeight.w600,
            ),
          ),
          const Expanded(child: SizedBox()),
          IconButton(onPressed: (){}, icon: const Icon(Icons.menu,color: Colors.white,)),
          const Text('menu',style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w600),)
        ],
        
      ),
    );
  }
}
