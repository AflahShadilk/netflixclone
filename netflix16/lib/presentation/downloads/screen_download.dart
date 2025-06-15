import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixclone/domain/core/colors/colors.dart';
import 'package:netflixclone/domain/core/constants/constants.dart';
import 'package:netflixclone/presentation/downloads/widgets/disk.dart';
import 'package:netflixclone/presentation/widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  const ScreenDownload({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        // ignore: sort_child_properties_last
        child: AppBarWidget(
          title: "Downloads",
        ),
        preferredSize: Size.fromHeight(50),
      ),
      body: ListView(
        children: [
          kHeight,
          const _SmartDownloads(),
          kHeight,
          kHeight,
          Text("Introducing Downloads for you",
          textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: GoogleFonts.montserrat(fontWeight: FontWeight.w500).fontFamily,
            fontSize: 22,
            fontWeight: FontWeight.w900,
            color: kButtonColorWhiten
          ),
          ),
          kHeight,
          const Padding(
            padding:  EdgeInsets.all(8.0),
            child: Text(
              textAlign: TextAlign.center,
                "We will download a personalised selection of movies and shows for you, so there is\n always something to watch on your\n device",
            style: TextStyle(
              fontSize: 16,
            ),
            ),
          ),
          kHeight,
          const Disk(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kButtonColor,
                  foregroundColor: kButtonColorWhiten,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(2)
                  ),
                ),
                onPressed: () {},
                child: Text("Set up",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: GoogleFonts.montserrat(fontWeight: FontWeight.w500).fontFamily,
                ),
                )),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(2)
                  ),
                  backgroundColor: kButtonColorWhiten,
                  foregroundColor: Colors.black,

                ),
                onPressed: () {},
                child: const Text("See what you can dowload",
                  style: TextStyle(

                      fontSize: 16,

                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.settings,
          color: whiteColor,
        ),
        kWidth,
        Text("Smart Downloads",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w900
          ),
        ),
      ],
    );
  }
}
