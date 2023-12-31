// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:futbol_web_page/platform_details.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePgeState createState() => HomePgeState();
}

class HomePgeState extends State<HomePage> {
  @override
  void initState() {
    if ((PlatformDetails().isMobile || PlatformDetails().isDesktop) &&
        UniversalPlatform.isAndroid) {
      launchUrlString(
          'https://play.google.com/store/apps/details?id=com.livescore.cyprus');
    } else if ((PlatformDetails().isMobile || PlatformDetails().isDesktop) &&
        UniversalPlatform.isIOS) {
      launchUrlString('https://apps.apple.com/app/id6449159778');
    } else if ((PlatformDetails().isMobile || PlatformDetails().isDesktop) &&
        UniversalPlatform.isWindows) {
      print('Windows Platform');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Follow Us',
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15.0),
            ),
            IconButton(
              tooltip: 'Facebook',
              onPressed: () {
                launchUrlString(
                    'https://www.facebook.com/profile.php?id=100094163409496');
              },
              icon: const Icon(
                Icons.facebook,
                color: Colors.lightBlue,
                size: 20.0,
              ),
            ),
            // IconButton(
            //   tooltip: 'GitHub',
            //   onPressed: () {
            //     launchUrlString('https://github.com/hadjimamas');
            //   },
            //   icon: const Icon(
            //     FontAwesomeIcons.github,
            //     color: Colors.grey,
            //     size: 20.0,
            //   ),
            // ),
            IconButton(
              tooltip: 'Privacy Policy',
              onPressed: () {
                launchUrlString(
                    'https://github.com/Hadjimamas/Privacy_Policy_Futbol/blob/main/PrivacyPolicy.md');
              },
              icon: const Icon(Icons.privacy_tip_outlined,
                  color: Colors.grey, size: 20.0),
            ),
          ],
        ),
      ],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Image.asset('assets/home_page.png', scale: 5),
                    Container(
                      padding: const EdgeInsets.only(left: 100),
                      child: Image.asset('assets/standings.png', scale: 5),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                const SelectableText(
                  'Futbol - Cyprus Livescore',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'DOWNLOAD NOW!',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        launchUrlString(
                            'https://play.google.com/store/apps/details?id=com.livescore.cyprus');
                      },
                      child:
                          Image.asset('assets/getOnGooglePlay.png', scale: 3),
                    ),
                    InkWell(
                      onTap: () {
                        launchUrlString(
                            'https://apps.apple.com/app/id6449159778');
                      },
                      child: Image.asset('assets/getOniOS.png', scale: 5),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
