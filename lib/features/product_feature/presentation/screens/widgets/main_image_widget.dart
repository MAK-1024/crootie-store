import 'package:flutter/cupertino.dart';

class MainImage extends StatelessWidget {
  const MainImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
      child: AspectRatio(
        aspectRatio: 1,
        child: Image.network(
            'https://th.bing.com/th/id/OIP.GKUJU3E9IgYXuSmjxKKIUQHaJ3?rs=1&pid=ImgDetMain'),
      ),
    );
  }
}
