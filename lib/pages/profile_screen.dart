import 'package:ecom/const/bg_widget.dart';
import 'package:ecom/const/const.dart';
import 'package:ecom/const/list.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                10.heightBox,
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.edit,
                      color: whiteColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        imgProfile2,
                        width: 65,
                        fit: BoxFit.cover,
                      ).box.roundedFull.clip(Clip.antiAlias).make(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Your Name".text.size(15).fontFamily(bold).color(Vx.black).make(),
                          5.heightBox,
                          "EmailId".text.size(8).fontFamily(semibold).color(fontGrey).make(),
                        ],
                      ),
                      const Spacer(),
                      OutlinedButton(
                        onPressed: () {},
                        child: "Login".text.makeCentered(),
                      ),
                    ],
                  ),
                ),
                30.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          "00".text.size(11).fontFamily(semibold).color(fontGrey).make(),
                          "Cart Items".text.size(12).fontFamily(bold).color(Vx.black).make(),
                        ],
                      ).box.height(48).width(70).make(),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          "258".text.size(11).fontFamily(semibold).color(fontGrey).make(),
                          "Your Order".text.size(12).fontFamily(bold).color(Vx.black).make(),
                        ],
                      ).box.height(40).width(75).make(),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          "10".text.size(11).fontFamily(semibold).color(fontGrey).make(),
                          "Wish List".text.size(12).fontFamily(bold).color(Vx.black).make(),
                        ],
                      ).box.height(40).width(70).make(),
                    ),
                  ],
                ),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildProfileAction(Icons.translate, "Language"),
                    buildProfileAction(Icons.edit_location, "Location"),
                    buildProfileAction(Icons.edit, "Edit Profile"),
                  ],
                ),
                Container(
                  color: whiteColor,
                  padding: const EdgeInsets.symmetric(horizontal: 11),
                  margin: const EdgeInsets.all(12),
                  child: Column(
                    children: ListTile.divideTiles(
                      context: context,
                      tiles: List.generate(
                        profileiconsList.length,
                        (index) {
                          return ListTile(
                            leading: Image.asset(profileiconsList[index], width: 22),
                            title: profileitemsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                          );
                        },
                      ),
                    ).toList(),
                  ),
                ).box.make(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildProfileAction(IconData icon, String label) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(icon),
        ),
        InkWell(
          child: label.text.make(),
        ),
      ],
    );
  }
}
