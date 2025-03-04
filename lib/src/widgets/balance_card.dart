import 'package:flutter/material.dart';
import 'package:flutter_wallet_app/src/theme/light_color.dart';
import 'package:google_fonts/google_fonts.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .27,
            color: LightColor.navyBlue1,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Total Balance,',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: LightColor.lightNavyBlue),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '6,354,500',
                          style: GoogleFonts.mulish(
                              textStyle: Theme.of(context).textTheme.headlineMedium,
                              fontSize: 35,
                              fontWeight: FontWeight.w800,
                              color: LightColor.yellow2),
                        ),
                        Text(
                          ' KES',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w500,
                              color: LightColor.yellow.withAlpha(200)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Eq:',
                          style: GoogleFonts.mulish(
                              textStyle: Theme.of(context).textTheme.headlineMedium,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: LightColor.lightNavyBlue),
                        ),
                        const Text(
                          ' kes 1,000,000',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: 85,
                        padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(12)),
                            border: Border.all(color: Colors.white, width: 1)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            Text("Top up",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ))
                  ],
                ),
                const Positioned(
                  left: -170,
                  top: -170,
                  child: CircleAvatar(
                    radius: 130,
                    backgroundColor: LightColor.lightBlue2,
                  ),
                ),
                const Positioned(
                  left: -160,
                  top: -190,
                  child: CircleAvatar(
                    radius: 130,
                    backgroundColor: LightColor.lightBlue1,
                  ),
                ),
                const Positioned(
                  right: -170,
                  bottom: -170,
                  child: CircleAvatar(
                    radius: 130,
                    backgroundColor: LightColor.yellow2,
                  ),
                ),
                const Positioned(
                  right: -160,
                  bottom: -190,
                  child: CircleAvatar(
                    radius: 130,
                    backgroundColor: LightColor.yellow,
                  ),
                )
              ],
            ),
          )),
    );
  }
}