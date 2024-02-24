import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomHomeAppbarWidget extends StatelessWidget {
  const CustomHomeAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          color: Colors.white,
          elevation: 1,
          child: SizedBox(
            height: 35,
            width: 35,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.square_grid_2x2,
                  size: 20,
                )),
          ),
        ),
        const Spacer(),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          color: Colors.white,
          elevation: 1,
          child: SizedBox(
            height: 35,
            width: 35,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.bell,
                  size: 20,
                )),
          ),
        ),
      ],
    );
  }
}
