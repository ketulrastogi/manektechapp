import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manektechapp/ui/screens/image_gallary/image_gallary_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ImageGallaryView extends StatelessWidget {
  final String imageGallaryUrl;
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  ImageGallaryView({Key key, this.imageGallaryUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ImageGallaryViewModel>.reactive(
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Back',
                style: GoogleFonts.nunito(
                  textStyle: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              titleSpacing: 1.0,
              backgroundColor: Color(0xFF27DA94),
            ),
            body: WebView(
              initialUrl: imageGallaryUrl,
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController) {
                _controller.complete(webViewController);
              },
              // TODO(iskakaushik): Remove this when collection literals makes it to stable.
              // ignore: prefer_collection_literals
              // javascriptChannels: <JavascriptChannel>[
              //   _toasterJavascriptChannel(context),
              // ].toSet(),
              // navigationDelegate: (NavigationRequest request) {
              //   if (request.url.startsWith('https://www.youtube.com/')) {
              //     print('blocking navigation to $request}');
              //     return NavigationDecision.prevent;
              //   }
              //   print('allowing navigation to $request');
              //   return NavigationDecision.navigate;
              // },
              onPageStarted: (String url) {
                print('Page started loading: $url');
              },
              onPageFinished: (String url) {
                print('Page finished loading: $url');
              },
              gestureNavigationEnabled: true,
            ),
          ),
        );
      },
      viewModelBuilder: () => ImageGallaryViewModel(),
    );
  }
}
