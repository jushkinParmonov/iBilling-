import 'package:flutter/material.dart';

//Username
Widget profileUsername(){
  return  const Text(
    'Otabek Abdusamatov',
    style: TextStyle(
      fontSize: 16,
      color: Color(0xff00A795),
      fontWeight: FontWeight.w600,
    ),
  );
}


//User's job description
Widget jobDescription(String text){
  return Text(
    text,
    style: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 12,
    ),
  );
}


//User's information
Widget informationText(String total, String private){
  return Row(
    children: [
      const SizedBox(height: 22),
      Text(
        '$total:',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      const SizedBox(width: 8),
      Text(
        private,
        style: const TextStyle(
          color: Color(0xff999999),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}



//Language text
Widget languageText(String text){
  return  Text(
    text,
    style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400),
  );
}
