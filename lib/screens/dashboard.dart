import 'package:dio/dio.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:videodownloader/screens/navigationdrawer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sendData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Video Downloader",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 0, 87, 167),
        ),
        drawer: Drawer(
            child: Column(
          children: [
            DrawerHeader(child: Container()),
            Container(
              child: NavigationDrawerActivity(),
            ),
          ],
        )),
        body: Column(
          children: [
            Expanded(
                flex: 3,
                child: Card(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: BorderSide(color: Colors.black)),
                            child: const SizedBox(
                              height: double.infinity,
                              width: double.infinity,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      icon: Icon(
                                        Icons.video_call_outlined,
                                        size: 30,
                                        color: Color.fromARGB(255, 1, 23, 44),
                                      ),
                                      hintText: "Enter Video URL"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
                          child: MaterialButton(
                            onPressed: () {},
                            child: SizedBox(
                              height: double.infinity,
                              width: double.infinity,
                              child: Card(
                                  color: Colors.green,
                                  child: Center(
                                      child: Text(
                                    "Download Video",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ))),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                    child: Text(
                      "Available Videos",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                )),
            Expanded(
                flex: 7,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Card(
                        color: Colors.white,
                        child: SizedBox(
                          height: 60,
                          width: double.infinity,
                          child: ListTile(
                              title: Text("Video Download"),
                              leading: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: Image.network(
                                    "https://cdn1.iconfinder.com/data/icons/logotypes/32/youtube-512.png"),
                              )),
                        ),
                      ),
                    );
                  },
                  itemCount: 5,
                ))
          ],
        ));
  }

  Future<void> sendData() async {
    // DatabaseReference ref = FirebaseDatabase.instance.ref("users/123");
    // await ref.set({
    //   "name": "John",
    //   "age": 18,
    //   "address": {"line1": "100 Mountain View"}
    // });

    //final dio = Dio();
    //final response = await dio.get('https://dart.dev');

    FileDownloader.downloadFile(
        url: "",
        name: "", //THE FILE NAME AFTER DOWNLOADING,
        onProgress: (filename, double progress) {
          print('FILE fileName HAS PROGRESS $progress');
        },
        onDownloadCompleted: (String path) {
          print('FILE DOWNLOADED TO PATH: $path');
        },
        onDownloadError: (String error) {
          print('DOWNLOAD ERROR: $error');
        });
  }
}
