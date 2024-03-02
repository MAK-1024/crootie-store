import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/style.dart';

class ColorList extends StatefulWidget {
  const ColorList({super.key});

  @override
  State<ColorList> createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  static List<Color> colors = [
    const Color.fromRGBO(155, 66, 6, 1),
    const Color.fromRGBO(17, 0, 215, 1),
    const Color.fromRGBO(34, 34, 34, 1),
    const Color.fromRGBO(215, 0, 0, 1),
  ];
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.h,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        children: [
          Text(
            'الالوان',
            style: AppStyle.textStyle24.copyWith(fontWeight: FontWeight.w600),
          ),
          const Spacer(),

          SizedBox(
            width: 160.w,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: colors.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: colors[index],
                        child: Center(
                          child: _selectIndex == index
                              ? const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                )
                              : null,
                        ),
                      ),
                    ),
                  );
                }),
          ),

          // Container(
          //   padding: EdgeInsets.only(left: 10,right: 10),
          //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          //   child: DropdownButtonHideUnderline(
          //     child: DropdownButton(
          //       value: _value,
          //       isExpanded: false,
          //       hint: Text('Choose Size ',style: TextStyle(fontSize: 15,color: Color.fromRGBO(0, 0, 0, 0.6)),),
          //       items: [
          //         DropdownMenuItem(
          //           value: 1,
          //           child:Text('40'),
          //         ),
          //         DropdownMenuItem(
          //           value: 2,
          //           child:Text('41'),
          //         ),
          //         DropdownMenuItem(
          //           value: 3,
          //           child:Text('42'),
          //         ),
          //         DropdownMenuItem(
          //           value: 4,
          //           child:Text('43'),
          //         ),
          //
          //       ],
          //
          //       onChanged: (value){
          //         setState(() {
          //           _value = value ?? 0 ;
          //         });
          //       },
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
