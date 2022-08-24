import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';


//Person Svg Icons on profile page
Widget personIcon(){
  return SvgPicture.asset('assets/icons/person.svg');
}


//Flag Svg(Uzb and USA)
Widget flagSvg(String path){
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: SvgPicture.asset(path),
  );
}


