import 'package:ctotek/app/changes/links.dart';
import 'package:ctotek/app/changes/strings.dart';
import 'package:ctotek/app/utils/navbar_utils.dart';
import 'package:ctotek/app/widgets/navbar_footer_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterWeb extends StatefulWidget {
  const FooterWeb({super.key});

  @override
  State<FooterWeb> createState() => _FooterWebState();
}

class _FooterWebState extends State<FooterWeb> {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...NavBarUtils.names
                  .asMap()
                  .entries
                  .map((e) => NavBarFooterButton(label: e.value, index: e.key)),
            ],
          ),
          SizedBox(height: 4.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FooterIcon(0,'assets/icons/youtube.png'),
              SizedBox(width: 2.w,),
              FooterIcon(1,'assets/icons/globe.png'),
              SizedBox(width: 2.w,),
              FooterIcon(2,'assets/icons/linkedin.png'),
              SizedBox(width: 2.w,),
              FooterIcon(3,'assets/icons/instagram.png'),
              SizedBox(width: 2.w,),
              FooterIcon(4,'assets/icons/tik-tok.png'),
            ],
          ),
          SizedBox(height: 4.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Privacy Policy',style: TextStyle(
                color: Colors.white54
              ),),
              SizedBox(width: 2.w,),
              Text(
                'Cookie Policy',style: TextStyle(color: Colors.white54),
              )
            ],
          ),
          SizedBox(height: 3.h,),
          Text(
            footerCopyright,style: TextStyle(color: Colors.white54),
          )
        ],
      ),
    );
  }
  FooterIcon(int index,String img){
    return Container(
      height: 6.h,
      width: 6.w,
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: (){
          switch(index){
            case 0:
              launch(
                youtube,
              );
              break;
            case 1:
              launch(myPortfolio,);
              break;
            case 2:
              launch(linkedin,);
              break;
            case 3:
              launch(instagram,);
            case 3:
              launch(tiktok,);
              break;
          }
        },
        child: Image.asset(img,color: Colors.grey,),
      ),
    );
  }
}
