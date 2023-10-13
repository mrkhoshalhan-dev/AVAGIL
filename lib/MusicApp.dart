import 'package:app/box_page.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MusicApp extends StatefulWidget {
  const MusicApp({super.key});

  @override
  State<MusicApp> createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  // =============================================

  // ===========================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                // ==============back bt and menu

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: BoxPage(
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    Text(
                      " A V A G I L",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: BoxPage(
                        child: Icon(Icons.menu_sharp),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 25,
                ),
                // =================end=================
                // --------------------------cover---name art name muxic-------
                BoxPage(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset("assets/images.jpg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Naser Masoudi",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Biya Beshim Kouhan Jor",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 32.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                // ========================end cover===name art name muxic============
                // ======================start time================================
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("0:00"),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text("3:10"),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),

                //============================end=====time======================
                // ============================liner bar===================================
                BoxPage(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.8,
                    progressColor: Colors.blue,
                    backgroundColor: Colors.transparent,
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),

                // ========================play============================
                SizedBox(
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(
                        child: BoxPage(
                          child: Icon(Icons.skip_previous),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                       child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal:20.0),
                         child: BoxPage(
                            child: Icon(Icons.play_arrow),
                          ),
                       ),
                      ),
                      Expanded(
                        child: BoxPage(
                          child: Icon(Icons.skip_next),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
