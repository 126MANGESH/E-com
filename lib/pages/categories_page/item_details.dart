import 'package:ecom/const/const.dart';
import 'package:ecom/const/list.dart';
import 'package:ecom/const/toggle_butten.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final String? title;

  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share, color: darkFontGrey)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline, color: darkFontGrey)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VxSwiper.builder(
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      reverse: true,
                      height: 300,
                      aspectRatio: 16 / 9,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          imgFc5,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                    10.heightBox,
                    title!.text.size(16).color(darkFontGrey).fontFamily(semibold).make(),
                    10.heightBox,
                    VxRating(
                      padding: 9,
                      onRatingUpdate: (value) {},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      count: 5,
                      size: 25,
                      stepInt: true,
                    ),
                    10.heightBox,
                    "\$3000".text.size(22).color(redColor).fontFamily(bold).make(),
                    20.heightBox,
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Seller".text.size(12).color(darkFontGrey).fontFamily(semibold).make(),
                            "In house Product".text.color(Vx.black).fontFamily(bold).make(),
                          ],
                        ),
                        const Spacer(),
                        CircleAvatar(
                          child: IconButton(onPressed: () {}, icon: const Icon(Icons.phone_callback)),
                        ),
                        10.widthBox,
                        CircleAvatar(
                          child: IconButton(onPressed: () {}, icon: const Icon(Icons.message_rounded)),
                        ),
                      ],
                    ),
                    20.heightBox,
                    Column(
                      children: [
                        const ToggleButtonsExample(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            "Color".text.color(fontGrey).fontFamily(semibold).size(11).make(),
                            Row(
                              children: List.generate(
                                3,
                                (index) => VxBox()
                                    .size(40, 40)
                                    .roundedFull
                                    .color(Vx.randomPrimaryColor)
                                    .margin(const EdgeInsets.symmetric(horizontal: 6))
                                    .make(),
                              ),
                            ).box.padding(const EdgeInsets.all(8)).make(),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            "Quantity".text.color(fontGrey).fontFamily(semibold).size(11).make(),
                            5.0.widthBox,
                            IconButton(onPressed: () {}, icon: const Icon(Icons.remove_circle)),
                            "0".text.color(darkFontGrey).fontFamily(bold).size(11).make(),
                            IconButton(onPressed: () {}, icon: const Icon(Icons.add_circle)),
                            "(0 Available)".text.size(8).color(fontGrey).fontFamily(semibold).make(),
                          ],
                        ),
                        10.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            "Total".text.color(fontGrey).fontFamily(semibold).size(11).make(),
                            30.widthBox,
                            "\$0.00".text.color(darkFontGrey).fontFamily(bold).size(11).make(),
                          ],
                        ),
                      ],
                    ),
                    10.heightBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Description".text.color(fontGrey).fontFamily(semibold).size(11).make(),
                        10.heightBox,
                        title!.text.color(darkFontGrey).fontFamily(bold).size(11).make(),
                        "It is a dummy item and dummy description here".text.color(fontGrey).fontFamily(semibold).size(11).make(),
                        30.heightBox,
                        "Height =".text.color(fontGrey).fontFamily(semibold).size(11).make(),
                        0.5.heightBox,
                        "Width =".text.color(fontGrey).fontFamily(semibold).size(11).make(),
                      ],
                    ),
                    ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: List.generate(
                        5,
                        (index) => ListTile(
                          title: itemsbuttonslist[index].text.fontFamily(semibold).make(),
                          trailing: const Icon(Icons.arrow_forward),
                        ),
                      ),
                    ),
                    20.heightBox,
                    "Products You May Also Like".text.color(fontGrey).fontFamily(semibold).size(11).make(),
                    10.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          8,
                          (index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                imgP1,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              10.heightBox,
                              "Laptop 4GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                              10.heightBox,
                              "\$600".text.fontFamily(bold).color(redColor).size(16).make(),
                            ],
                          ).box.margin(
                            const EdgeInsets.symmetric(horizontal: 4),
                          ).white.rounded.padding(const EdgeInsets.all(8)).make(),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: redColor),
              child: const Text(
                "Add to cart",
                style: TextStyle(fontSize: 22, color: whiteColor, fontFamily: bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
