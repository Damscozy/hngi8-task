import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HNG extends StatefulWidget {
  static final routes = "/hng";

  @override
  _HNGState createState() => _HNGState();
}

class _HNGState extends State<HNG> {
  WebViewController? controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          String? url = await controller!.currentUrl();
          if (url == "https://internship.zuri.team/") {
            return true;
          } else {
            controller!.goBack();
            return false;
          }
        },
        child: Builder(builder: (context) {
          return WebView(
              initialUrl: "https://internship.zuri.team/",
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController wc) {
                controller = wc;
              });
        }),
      ),
    );
  }
}
