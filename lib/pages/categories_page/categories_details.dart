import 'package:ecom/const/bg_widget.dart';
import 'package:ecom/const/const.dart';
import 'package:ecom/pages/categories_page/item_details.dart';
import 'package:flutter/material.dart';

class CategoriesDetails extends StatelessWidget {
  final String? title;

  const CategoriesDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    6,
                    (index) => "Baby clothing"
                        .text
                        .size(12)
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .makeCentered()
                        .box
                        .white
                        .roundedLg
                        .size(120, 50)
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .white
                        .make(),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: lightGrey,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        mainAxisExtent: 250,
                      ),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Image.asset(
                                imgPi5,
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 10),
                            "iphone"
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                            const SizedBox(height: 10),
                            "\$600"
                                .text
                                .fontFamily(bold)
                                .color(redColor)
                                .size(16)
                                .make(),
                          ],
                        ).box
                            .margin(const EdgeInsets.symmetric(horizontal: 4))
                            .white
                            .rounded
                            .padding(const EdgeInsets.all(8))
                            .make()
                            .onTap(() {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return const ItemDetails(title: "dummy_title");
                                  },
                                ),
                              );
                            });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
