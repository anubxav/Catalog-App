// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_catalog/Widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_catalog/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.red800.xl4.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(MyTheme.darkBluishColor),
                shape: MaterialStateProperty.all(const StadiumBorder()),
              ),
              child: "Add to cart".text.xl.make(),
            ).wh(150, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 30,
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(children: [
                  catalog.name.text.xl4
                      .color(MyTheme.darkBluishColor)
                      .bold
                      .make(),
                  catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                  10.heightBox,
                  "The item shown above is an imported product from United Arab Emirates. Therefore the shipping charges has to be paid by the customer itself. The product may take upto 3-4 business weeks to arrive. Happy shopping."
                      .text
                      .textStyle(context.captionStyle)
                      .make()
                      .p16(),
                ]).py64(),
              ),
            ))
          ],
        ).centered(),
      ),
    );
  }
}
