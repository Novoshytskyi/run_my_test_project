// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:run_my_test_project/coin_data.dart';
// import 'package:run_my_test_project/components/big_dotted_border_container.dart';
// import 'package:run_my_test_project/components/progress_bar_container.dart';
// import 'package:run_my_test_project/components/small_dotted_border_container.dart';
// import 'package:run_my_test_project/components/start_button.dart';
// import 'package:run_my_test_project/components/svg_icon_with_shadow_button.dart';
// import 'package:run_my_test_project/colors_constants.dart';
// import 'package:run_my_test_project/components/tab_bar.dart';

// class MainEmptyPage extends StatefulWidget {
//   const MainEmptyPage({super.key, required this.title});

//   final String title;

//   @override
//   State<MainEmptyPage> createState() => _MainEmptyPageState();
// }

// class _MainEmptyPageState extends State<MainEmptyPage> {
//   String selectedCurrency = 'UAH';
//   String bitcoinValue = '?';
//   String receivedData = '00.0000';

//   Future getData() async {
//     try {
//       double data = await CoinData().getCoinData(selectedCurrency);
//       setState(() {
//         bitcoinValue = data.toStringAsFixed(0);
//         receivedData = '1 BTC = $bitcoinValue $selectedCurrency';
//       });
//     } catch (e) {
//       debugPrint(e.toString());
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor,
//       body: ListView(
//         children: <Widget>[
//           Stack(
//             children: [
//               // Некоторые изображения в .svg не отображаются, поэтому в .png
//               Image.asset('assets/images/mask_group.png'),
//               Center(
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 78.0),
//                   child: SvgPicture.asset(
//                     'assets/images/pp.svg',
//                     width: 152.00,
//                     height: 152.00,
//                   ),
//                 ),
//               ),

//               Positioned(
//                 top: 78.0,
//                 right: 25.0,
//                 child: SvgIconWithShadowButton(
//                   icon: SvgPicture.asset(
//                     'assets/icons/settings.svg',
//                     height: 32.0,
//                     width: 32.0,
//                     colorFilter: iconColorFilter,
//                   ),
//                   onPress: () {},
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 16.0,
//           ),
//           Column(
//             children: [
//               const Text(
//                 'Hello, d.push91@gmail.com',
//                 style: TextStyle(
//                   color: mainTextColor,
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.w800,
//                   fontFamily: 'Avenir',
//                   fontStyle: FontStyle.italic,
//                 ),
//               ),
//               const SizedBox(
//                 height: 4.0,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset('assets/icons/ic_coin.png'),
//                   const SizedBox(
//                     width: 10.0,
//                   ),
//                   Text(
//                     receivedData,
//                     style: const TextStyle(
//                         color: mainTextColor,
//                         fontSize: 14.0,
//                         fontWeight: FontWeight.w600,
//                         fontFamily: 'Poppins'),
//                   ),
//                 ],
//               )
//             ],
//           ),
//           const SizedBox(
//             height: 38.0,
//           ),
//           Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(
//                   left: 24.0,
//                   right: 24.0,
//                   top: 8.0,
//                   bottom: 25.0,
//                 ),
//                 child: Column(
//                   children: [
//                     const BigDottedBorderContainer(),
//                     const SizedBox(
//                       height: 28.0,
//                     ),
//                     const Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         SmallDottedBorderContainer(),
//                         SmallDottedBorderContainer(),
//                         SmallDottedBorderContainer(),
//                         SmallDottedBorderContainer(),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 40.0,
//                     ),
//                     ProgressBarContainer(
//                       icon: SvgPicture.asset(
//                         'assets/icons/durability.svg',
//                         colorFilter: iconColorFilter,
//                       ),
//                       text: '0.0K /50K',
//                     ),
//                     const SizedBox(
//                       height: 18.0,
//                     ),
//                     ProgressBarContainer(
//                       icon: SvgPicture.asset(
//                         'assets/icons/power.svg',
//                         colorFilter: iconColorFilter,
//                       ),
//                       text: '0.0/0.0',
//                     ),
//                     const SizedBox(
//                       height: 48.0,
//                     ),
//                     StartButton(
//                       text: 'Start',
//                       onPress: () {
//                         setState(() {
//                           selectedCurrency = 'EUR';
//                           getData();
//                         });
//                       },
//                     ),
//                     const SizedBox(
//                       height: 26.0,
//                     ),
//                     const TabBarNew(),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:run_my_test_project/coin_data.dart';
import 'package:run_my_test_project/components/big_dotted_border_container.dart';
import 'package:run_my_test_project/components/progress_bar_container.dart';
import 'package:run_my_test_project/components/small_dotted_border_container.dart';
import 'package:run_my_test_project/components/start_button.dart';
import 'package:run_my_test_project/components/svg_icon_with_shadow_button.dart';
import 'package:run_my_test_project/colors_constants.dart';
import 'package:run_my_test_project/components/tab_bar.dart';

class MainEmptyPage extends StatefulWidget {
  const MainEmptyPage({super.key, required this.title});

  final String title;

  @override
  State<MainEmptyPage> createState() => _MainEmptyPageState();
}

class _MainEmptyPageState extends State<MainEmptyPage> {
  String selectedCurrency = 'UAH';
  String bitcoinValue = '?';
  String receivedData = '00.0000';

  Future getData() async {
    try {
      double data = await CoinData().getCoinData(selectedCurrency);
      setState(() {
        bitcoinValue = data.toStringAsFixed(0);
        receivedData = '1 BTC = $bitcoinValue $selectedCurrency';
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    // getData(); //!!!!!!!!!!!!!!!!!!!!!!!!
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          ListView(
            children: <Widget>[
              Stack(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 135.0),
                      child: Container(
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/rectangle_9_.png',
                              fit: BoxFit.fill,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 119.0,
                                ),
                                const Text(
                                  'Hello, d.push91@gmail.com',
                                  style: TextStyle(
                                    color: mainTextColor,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'Avenir',
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/icons/ic_coin.png'),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      receivedData,
                                      style: const TextStyle(
                                          color: mainTextColor,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 48.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 24.0,
                                    right: 24.0,
                                    top: 0.0,
                                    bottom: 25.0,
                                  ),
                                  child: Column(
                                    children: [
                                      const BigDottedBorderContainer(),
                                      const SizedBox(
                                        height: 28.0,
                                      ),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SmallDottedBorderContainer(),
                                          SmallDottedBorderContainer(),
                                          SmallDottedBorderContainer(),
                                          SmallDottedBorderContainer(),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 40.0,
                                      ),
                                      ProgressBarContainer(
                                        icon: SvgPicture.asset(
                                          'assets/icons/durability.svg',
                                          colorFilter: iconColorFilter,
                                        ),
                                        text: '0.0K /50K',
                                      ),
                                      const SizedBox(
                                        height: 18.0,
                                      ),
                                      ProgressBarContainer(
                                        icon: SvgPicture.asset(
                                          'assets/icons/power.svg',
                                          colorFilter: iconColorFilter,
                                        ),
                                        text: '0.0/0.0',
                                      ),
                                      const SizedBox(
                                        height: 44.0,
                                      ),
                                      StartButton(
                                        text: 'Start',
                                        onPress: () {
                                          setState(() {
                                            selectedCurrency = 'EUR';
                                            getData();
                                          });
                                        },
                                      ),
                                      const SizedBox(
                                        height: 20.0,
                                      ),
                                      const TabBarNew(),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Некоторые изображения в .svg не отображаются, поэтому в .png
                  Image.asset(
                    'assets/images/mask_group.png',
                    fit: BoxFit.fill,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 78.0),
                      child: SvgPicture.asset(
                        'assets/images/pp.svg',
                        width: 152.00,
                        height: 152.00,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 78.0,
                    right: 25.0,
                    child: SvgIconWithShadowButton(
                      icon: SvgPicture.asset(
                        'assets/icons/settings.svg',
                        height: 32.0,
                        width: 32.0,
                        colorFilter: iconColorFilter,
                      ),
                      onPress: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
