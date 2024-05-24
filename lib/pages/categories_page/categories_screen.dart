import 'package:ecom/const/bg_widget.dart';
import 'package:ecom/const/const.dart';
import 'package:ecom/const/list.dart';
import 'package:ecom/pages/categories_page/categories_details.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
   static const categories = [
    menClothingFashion,
    electronics,
    automobile,
    kidtoys,
    sports,
    cellPhone,
    jewelery,
    compAccess,
    farnichar,
  ];

  const CategoriesScreen({Key? key}) : super(key: key);

  get list => categories;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Categories' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),), // Provide a valid widget for the title
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 9,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: 250,
              ),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      categoriesImages[index],
                      height: 120,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    10.heightBox,
                    categories[index].text.fontFamily(semibold).color(darkFontGrey).align(TextAlign.center).make(),
                    10.heightBox,
                    "\$600".text.fontFamily(bold).color(redColor).size(16).shadow(2, 2, 3, Vx.gray100).make(),
                  ],
                ).box.margin(
                  const EdgeInsets.symmetric(horizontal: 4),
                ).white.rounded.clip(Clip.antiAlias).outerShadowSm.padding(
                  const EdgeInsets.all(8),
                ).make().onTap(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => CategoriesDetails(
                        title: categories[index],
                      ),
                    ),
                  );
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
