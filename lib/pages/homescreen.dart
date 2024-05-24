import 'package:ecom/const/const.dart';
import 'package:ecom/const/feacture_butten.dart';
import 'package:ecom/const/home_buttons.dart';
import 'package:ecom/const/list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: screenWidth,
      height: screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            _buildSearchBar(context),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    _buildSwiper(slidersList),
                    _buildHomeButtons(context),
                    _buildSwiper(secondslidersList),
                    _buildHomeButtonsForCategories(context),
                    _buildFeatureCategories(),
                    _buildFeatureProduct(),
                    _buildSwiper(secondslidersList),
                    _buildAllProduct(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      color: lightGrey,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: searchanything,
          hintStyle: const TextStyle(color: textfieldGrey),
          filled: true,
          fillColor: Colors.transparent,
          suffix: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ),
      ),
    );
  }

  Widget _buildSwiper(List<String> imageList) {
    return VxSwiper.builder(
      aspectRatio: 16 / 9,
      autoPlay: true,
      height: 150,
      enlargeCenterPage: true,
      itemCount: imageList.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [redColor, Vx.yellow100]),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: redColor),
          ),
          child: Image.asset(imageList[index], fit: BoxFit.fitWidth),
        );
      },
    );
  }

  Widget _buildHomeButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        2,
        (index) => homebuttons(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width / 2.5,
          icon: index == 0 ? icTodaysDeal : icFlashDeal,
          title: index == 0 ? "todays Dell" : "Flash Sell",
          onPress: index == 0 ? () {} : () {},
        ),
      ),
    );
  }

  Widget _buildHomeButtonsForCategories(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        3,
        (index) => homebuttons(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width / 3.5,
          icon: index == 0 ? icTopCategories : index == 1 ? icBrands : icTopSeller,
          title: index == 0 ? "Top Categories" : index == 1 ? "Brands" : "Top Seller",
          onPress: index == 0 ? () {} : () {},
        ),
      ),
    );
  }

  Widget _buildFeatureCategories() {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Feature Categories",
            style: TextStyle(fontFamily: bold, fontSize: 24, color: darkFontGrey),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              3,
              (index) => Column(
                children: [
                  featureButton(icon: featureListimages1[index], title: featuredTitles1[index]),
                  10.heightBox,
                  featureButton(icon: featureListimages2[index], title: featuredTitles2[index]),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFeatureProduct() {
    return Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          featureproduct.text.black.fontFamily(bold).size(18).make(),
          10.heightBox,
          SingleChildScrollView(
            padding: const EdgeInsets.all(11),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                8,
                (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(imgP1, width: 150, fit: BoxFit.cover),
                    10.heightBox,
                    "Laptop 4GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                    10.heightBox,
                    "\$600".text.fontFamily(bold).color(redColor).size(16).make(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAllProduct() {
    return Column(
      children: [
        _buildSwiper(secondslidersList),
        30.heightBox,
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "All Product",
            style: TextStyle(fontFamily: bold, fontSize: 24, color: darkFontGrey),
          ),
        ),
        30.heightBox,
        GridView.builder(
          shrinkWrap: true,
          itemCount: 6,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            mainAxisExtent: 300,
          ),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(imgPi5, width: 150, fit: BoxFit.cover),
                10.heightBox,
                "iphone".text.fontFamily(semibold).color(darkFontGrey).make(),
                10.heightBox,
                "\$600".text.fontFamily(bold).color(redColor).size(16).make(),
              ],
            ).box.rounded.margin(const EdgeInsets.symmetric(horizontal: 4)).white.rounded.padding(const EdgeInsets.all(8)).make();
          },
        ),
      ],
    );
  }
}
