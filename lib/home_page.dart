import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePgeState createState() => HomePgeState();
}

class HomePgeState extends State<HomePage> {
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
              //padding: const EdgeInsets.only(bottom: 10.0),
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
            IconButton(
              tooltip: 'Instagram',
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.instagram,
                color: Colors.pinkAccent,
                size: 20.0,
              ),
            ),
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
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  'assets/home_page.png',
                  scale: 2,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 500),
                  child: Image.asset('assets/standings.png', scale: 2),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Futbol - Cyprus Livescore App',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                 const Text(
                  'DOWNLOAD NOW!',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          launchUrlString(
                              'https://play.google.com/store/apps/details?id=com.livescore.cyprus');
                        },
                        child: Image.asset('assets/getOnGooglePlay.png',
                            scale: 3)),
                    InkWell(
                        onTap: () {
                          launchUrlString(
                              'https://apps.apple.com/app/id6449159778');
                        },
                        child: Image.asset('assets/getOniOS.png', scale: 5))
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
