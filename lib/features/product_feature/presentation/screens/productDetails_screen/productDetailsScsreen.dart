import 'package:crootie_store/core/reusable_compnant/button_compo.dart';
import 'package:crootie_store/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int? _value;
  int _selectIndex = 0;
  int selectedImage = 0;
  static List<Color> colors = [
    const Color.fromRGBO(155, 66, 6, 1),
    const Color.fromRGBO(17, 0, 215, 1),
    const Color.fromRGBO(34, 34, 34, 1),
    const Color.fromRGBO(215, 0, 0, 1),
  ];

  final List<String> imageUrls = [
    'https://i5.walmartimages.com/asr/96554892-e5ec-4838-9cad-449077916242_1.4d5a8a03103fc019f5214f4478df5e1e.jpeg',
    'https://i5.walmartimages.com/asr/96554892-e5ec-4838-9cad-449077916242_1.4d5a8a03103fc019f5214f4478df5e1e.jpeg',
    'https://i5.walmartimages.com/asr/96554892-e5ec-4838-9cad-449077916242_1.4d5a8a03103fc019f5214f4478df5e1e.jpeg',
    'https://i5.walmartimages.com/asr/96554892-e5ec-4838-9cad-449077916242_1.4d5a8a03103fc019f5214f4478df5e1e.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.black,
                  ),
                ),
              ],
              leading: IconButton(
                  onPressed: () {},
                  icon: const Material(
                    elevation: 3,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: Icon(
                          Icons.favorite,
                          color: AppColor.mainColor,
                        )),
                  ))),
          body: Column(children: [
            SizedBox(
              width: 230,
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.network(
                    'https://th.bing.com/th/id/OIP.GKUJU3E9IgYXuSmjxKKIUQHaJ3?rs=1&pid=ImgDetMain'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 220),
              child: Text(
                'معطف شتوي',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 300),
              child: Text(
                'نسائي',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 38,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 90),
                    child: Text(
                      'الالوان',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),

                  ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      scrollDirection: Axis.horizontal,
                      itemCount: colors.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectIndex = index;
                              });
                            },
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
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 80,
                    width: 80,
                    margin: const EdgeInsets.only(right: 15),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColor.mainColor,
                      ),
                    ),
                    child: Image.network(imageUrls[index]),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 290),
              child: Text(
                'الوصف',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'فهذه السترة المصنوعة من اقمشة فاخرة كالصوف الناعم، الكشمير الناعم، او خلاطات الحرير الناعم، لا تشعّ الاناقة فحسب، بل تضمن ايضا الراحة والقدرة على التحمل. وغالبا ما يتضمن تصميمها الرائع غلافا ذا صدر واحد مع ازرار لذيذة، مما يخلق نقطة مركزية تكمِّل تطور السترة عموما.',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomMaterialButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                  ),
                  buttonText: 'اشتري الأن ',
                  buttonColor: AppColor.mainColor,
                  height: 48,
                  minWidth: 180,
                ),
                const Row(
                  children: [
                    Text(
                      '255.83',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "د.ل",
                      style: TextStyle(fontSize: 24, color: AppColor.mainColor),
                    ),
                  ],
                )
              ],
            ),
          ])),
    );
  }
}
