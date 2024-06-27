import 'package:flutter/material.dart';
import 'package:flutter_wallet_app/src/theme/light_color.dart';
import 'package:flutter_wallet_app/src/widgets/balance_card.dart';
import 'package:flutter_wallet_app/src/widgets/bottom_navigation_bar.dart';
import 'package:flutter_wallet_app/src/widgets/title_text.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _appBar() {
    return Row(
      children: <Widget>[
        const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://avatars.githubusercontent.com/u/144854877?s=400&u=54c5869147250d926f3f70618250ab37b7f76abe&v=4"),
        ),
        const SizedBox(width: 15),
        const TitleText(text: "Hello,"),
        Text(' KazunguDev,',
            style: GoogleFonts.mulish(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: LightColor.navyBlue2)),
        const Expanded(
          child: SizedBox(),
        ),
        Icon(
          Icons.short_text,
          color: Theme.of(context).iconTheme.color,
        )
      ],
    );
  }

  Widget _operationsWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _icon(Icons.transfer_within_a_station, "Transfer"),
        _icon(Icons.phone, "Airtime"),
        _icon(Icons.payment, "Pay Bills"),
        _icon(Icons.code, "Qr Pay"),
      ],
    );
  }

  Widget _icon(IconData icon, String text) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/transfer');
          },
          child: Container(
            height: 80,
            width: 80,
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Color(0xfff3f3f3),
                      offset: Offset(5, 5),
                      blurRadius: 10)
                ]),
            child: Icon(icon),
          ),
        ),
        Text(text,
            style: GoogleFonts.mulish(
                textStyle: Theme.of(context).textTheme.headlineMedium,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: const Color(0xff76797e))),
      ],
    );
  }

  Widget _transectionList() {
    return Column(
      children: <Widget>[
        _transection("Flight Ticket", "23 Feb 2024"),
        _transection("Electricity Bill", "25 Apr 2024"),
        _transection("Flight Ticket", "03 Jul 2024"),
      ],
    );
  }

  Widget _transection(String text, String time) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          color: LightColor.navyBlue1,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: const Icon(Icons.hd, color: Colors.white),
      ),
      contentPadding: const EdgeInsets.symmetric(),
      title: TitleText(
        text: text,
        fontSize: 14,
      ),
      subtitle: Text(time),
      trailing: Container(
          height: 30,
          width: 60,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: LightColor.lightGrey,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Text('-20,000 KES',
              style: GoogleFonts.mulish(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: LightColor.navyBlue2))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomNavigation(),
        body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 35),
                      _appBar(),
                      const SizedBox(
                        height: 40,
                      ),
                      const TitleText(text: "My wallet"),
                      const SizedBox(
                        height: 20,
                      ),
                      const BalanceCard(),
                      const SizedBox(
                        height: 50,
                      ),
                      const TitleText(
                        text: "Operations",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      _operationsWidget(),
                      const SizedBox(
                        height: 40,
                      ),
                      const TitleText(
                        text: "Transactions",
                      ),
                      _transectionList(),
                    ],
                  )),
            )));
  }
}