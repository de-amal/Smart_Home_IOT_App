import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:projects/utils/constants.dart';

class InternetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Internet"),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: WebUri(REACT_URL),  // Use WebUri constructor here
        ),
        onWebViewCreated: (InAppWebViewController controller) {
          // Use the controller to manage the WebView.
        },
      ),
    );
  }
}
