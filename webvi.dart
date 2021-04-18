import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



class WebV extends StatefulWidget {
  @override
  _WebVState createState() => _WebVState();
}

class _WebVState extends State<WebV> {

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebView(
        initialUrl: 'https://digitalnews71.com/',
        javascriptMode: JavascriptMode.unrestricted,
        gestureNavigationEnabled: true,

      ),
    );
  }
}

