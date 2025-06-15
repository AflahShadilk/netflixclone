import 'package:flutter/material.dart';
import 'package:netflixclone/presentation/downloads/screen_download.dart';
import 'package:netflixclone/presentation/fast_laugh/fast_laugh.dart';
import 'package:netflixclone/presentation/home/screen_home.dart';
import 'package:netflixclone/presentation/main_page/widgets/bottomnav.dart';
import 'package:netflixclone/presentation/new_and_hot/screen_hot.dart';
import 'package:netflixclone/presentation/screen_search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});

  final _pages = [
    const ScreenHome(),
    const ScreenNewHot(),
    const FastLaugh(),
    const ScreenSearch(),
    const ScreenDownload()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context,int index,child) {
          return _pages[index];
        }
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
