import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//AppBar
AppBar appBar(String name, bool type, Color color) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: color,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/icons/eclipse.png'),
                radius: 12,
              ),
              const SizedBox(width: 12),
              Text(name),
            ],
          ),
        ),
        type? SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/icons/filter.svg'),
                    const SizedBox(width: 20),
                    SvgPicture.asset('assets/icons/line.svg'),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.search,
                      ),
                    ),
                  ],
                ),
              )
            : Container(),
      ],
    ),
  );
}


