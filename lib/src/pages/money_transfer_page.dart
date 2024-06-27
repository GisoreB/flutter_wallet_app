import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wallet_app/src/theme/light_color.dart';
import 'package:flutter_wallet_app/src/widgets/title_text.dart';

class MoneyTransferPage extends StatefulWidget {
  const MoneyTransferPage({super.key});

  @override
  _MoneyTransferPageState createState() => _MoneyTransferPageState();
}

class _MoneyTransferPageState extends State<MoneyTransferPage> {
  Align _buttonWidget() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            height: MediaQuery.of(context).size.height * .48,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    childAspectRatio: 1.5,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    children: <Widget>[
                      _countButton("1"),
                      _countButton("2"),
                      _countButton("3"),
                      _countButton("4"),
                      _countButton("5"),
                      _countButton("6"),
                      _countButton("7"),
                      _countButton("8"),
                      _countButton("9"),
                      _icon(Icons.euro_symbol, true),
                      _countButton("0"),
                      _icon(Icons.backspace, false),
                    ],
                  ),
                ),
                _transferButton()
              ],
            )));
  }

  Widget _transferButton() {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: const BoxDecoration(
            color: LightColor.navyBlue2,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Wrap(
          children: <Widget>[
            Transform.rotate(
              angle: 70,
              child: const Icon(
                Icons.swap_calls,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10),
            const TitleText(
              text: "Transfer",
              color: Colors.white,
            ),
          ],
        ));
  }

  Widget _icon(IconData icon, bool isBackground) {
    return Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                  color: isBackground
                      ? LightColor.lightGrey
                      : Theme.of(context).colorScheme.background,
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Icon(icon),
            ),
            !isBackground
                ? const SizedBox()
                : const Text(
              "Change",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: LightColor.navyBlue2),
            )
          ],
        ));
  }

  Widget _countButton(String text) {
    return Material(
        child: InkWell(
            onTap: () {
              if (kDebugMode) {
                print("Tapped");
              }
            },
            child: Container(
              alignment: Alignment.center,
              child: TitleText(
                text: text,
              ),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                    Container(
                      height: 55,
                      width: 60,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://jshopping.in/images/detailed/591/ibboll-Fashion-Mens-Optical-Glasses-Frames-Classic-Square-Wrap-Frame-Luxury-Brand-Men-Clear-Eyeglasses-Frame.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Sending money to DTB',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 140,
                        padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: LightColor.navyBlue2,
                            borderRadius:
                            BorderRadius.all(Radius.circular(15))),
                        child: const TitleText(
                          text: "kes 185,000",
                          color: Colors.white,
                        )),
                    const Expanded(
                      flex: 2,
                      child: SizedBox(),
                    )
                  ],
                ),
              ),
              const Positioned(
                left: -140,
                top: -270,
                child: CircleAvatar(
                  radius: 190,
                  backgroundColor: LightColor.lightBlue2,
                ),
              ),
              const Positioned(
                left: -130,
                top: -300,
                child: CircleAvatar(
                  radius: 190,
                  backgroundColor: LightColor.lightBlue1,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .4,
                right: -150,
                child: const CircleAvatar(
                  radius: 130,
                  backgroundColor: LightColor.yellow2,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .4,
                right: -180,
                child: const CircleAvatar(
                  radius: 130,
                  backgroundColor: LightColor.yellow,
                ),
              ),
              const Positioned(
                  left: 0,
                  top: 40,
                  child: Row(
                    children: <Widget>[
                      BackButton(color: Colors.white,),
                      SizedBox(width: 20),
                      TitleText(
                        text: "Transfer",
                        color: Colors.white,
                      )
                    ],
                  )),
              _buttonWidget(),
            ],
          ),
        ));
  }
}