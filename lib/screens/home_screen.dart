import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                CommotAppWebBrowser().openUrlRequest(
                  urlRequest: URLRequest(
                    url: WebUri.uri(Uri.parse('https://www.google.co.jp/')),
                  ),
                );
              },
              child: Text('btn'),
            ),
          ],
        ),
      ),
    );
  }
}

class CommotAppWebBrowser extends InAppBrowser {
  ///
  @override
  void onBrowserCreated() {
    print('aaaaaaaaaa');
    print('onBrowserCreated');
    print('aaaaaaaaaa');
  }

  ///
  @override
  void onLoadStart(WebUri? url) {
    var urlstr = url.toString();
    print('bbbbbbbbbb');
    print('onLoadStart');
    print(urlstr);
    print('bbbbbbbbbb');
  }

  ///
  @override
  void onLoadStop(WebUri? url) {
    var urlstr = url.toString();
    print('ffffffffff');
    print('onLoadStop');
    print(urlstr);
    print('ffffffffff');
  }

  // ///
  // @override
  // void onLoadError(Uri? url, int code, String message) {
  //   var urlstr = url.toString();
  //   print("Can't load $urlstr.. Error: $message");
  // }

  ///
  @override
  void onExit() {
    print('cccccccccc');
    print('onExit');
    print('cccccccccc');
  }

  ///
  @override
  void onLoadResource(LoadedResource resource) {
    print('dddddddddd');
    print(resource.startTime.toString());
    print(resource.duration.toString());
    print(resource.url.toString());
    print('dddddddddd');
  }

  ///
  @override
  void onConsoleMessage(ConsoleMessage consoleMessage) {
    print('eeeeeeeeee');
    print(consoleMessage.message);
    print(consoleMessage.messageLevel.toValue());
    print('eeeeeeeeee');
  }
}

/*

/// open
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 118484197210118238281501422552341172147225278 calling "onProgressChanged" using {progress: 10}
flutter: aaaaaaaaaa
flutter: onBrowserCreated
flutter: aaaaaaaaaa
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 118484197210118238281501422552341172147225278 calling "onUpdateVisitedHistory" using {url: https://www.google.co.jp/, isReload: null}
[IOSInAppBrowser] (iOS) IOSInAppBrowser ID 118484197210118238281501422552341172147225278 calling "onBrowserCreated" using {}
flutter: bbbbbbbbbb
flutter: onLoadStart
flutter: https://www.google.co.jp/
flutter: bbbbbbbbbb
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 118484197210118238281501422552341172147225278 calling "onLoadStart" using {url: https://www.google.co.jp/}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 118484197210118238281501422552341172147225278 calling "onContentSizeChanged" using {oldContentSize: {height: 0.0, width: 0.0}, newContentSize: {width: 980.0, height: 1685.0}}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 118484197210118238281501422552341172147225278 calling "onProgressChanged" using {progress: 42}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 118484197210118238281501422552341172147225278 calling "onPageCommitVisible" using {url: https://www.google.co.jp/}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 118484197210118238281501422552341172147225278 calling "onTitleChanged" using {title: Google}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 118484197210118238281501422552341172147225278 calling "onContentSizeChanged" using {oldContentSize: {width: 980.0, height: 1685.0}, newContentSize: {height: 774.0, width: 430.0}}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 118484197210118238281501422552341172147225278 calling "onProgressChanged" using {progress: 88}
flutter: ffffffffff
flutter: onLoadStop
flutter: https://www.google.co.jp/
flutter: ffffffffff
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 118484197210118238281501422552341172147225278 calling "onProgressChanged" using {progress: 100}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 118484197210118238281501422552341172147225278 calling "onLoadStop" using {url: https://www.google.co.jp/}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 118484197210118238281501422552341172147225278 calling "onContentSizeChanged" using {newContentSize: {height: 877.0, width: 430.0}, oldContentSize: {height: 774.0, width: 430.0}}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 118484197210118238281501422552341172147225278 calling "onContentSizeChanged" using {oldContentSize: {height: 877.0, width: 430.0}, newContentSize: {width: 430.0, height: 821.0}}



/// link
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onWindowFocus" using []
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onWindowFocus" using []
flutter: bbbbbbbbbb
flutter: onLoadStart
flutter: https://www.google.co.jp/search?q=%E3%83%89%E3%83%A9%E3%82%AF%E3%82%A8%E3%81%AE%E6%97%A5%202024%20%E9%85%8D%E4%BF%A1&oq&ved=0ahUKEwic-4Cg262GAxUyQPUHHRpFAt4Q470GCCc&sclient=mweb-insp&gs_lp=Egltd2ViLWluc3AqDwgBEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBLgBGZgD-wmyBgYQRxhHKAE&gs_ss=1&biw=430&bih=739&dpr=3
flutter: bbbbbbbbbb
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onProgressChanged" using {progress: 10}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onUpdateVisitedHistory" using {url: https://www.google.co.jp/search?q=%E3%83%89%E3%83%A9%E3%82%AF%E3%82%A8%E3%81%AE%E6%97%A5%202024%20%E9%85%8D%E4%BF%A1&oq&ved=0ahUKEwic-4Cg262GAxUyQPUHHRpFAt4Q470GCCc&sclient=mweb-insp&gs_lp=Egltd2ViLWluc3AqDwgBEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBLgBGZgD-wmyBgYQRxhHKAE&gs_ss=1&biw=430&bih=739&dpr=3, isReload: null}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onLoadStart" using {url: https://www.google.co.jp/search?q=%E3%83%89%E3%83%A9%E3%82%AF%E3%82%A8%E3%81%AE%E6%97%A5%202024%20%E9%85%8D%E4%BF%A1&oq&ved=0ahUKEwic-4Cg262GAxUyQPUHHRpFAt4Q470GCCc&sclient=mweb-insp&gs_lp=Egltd2ViLWluc3AqDwgBEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBLgBGZgD-wmyBgYQRxhHKAE&gs_ss=1&biw=430&bih=739&dpr=3}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onProgressChanged" using {progress: 30}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onTitleChanged" using {title: }
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onPageCommitVisible" using {url: https://www.google.co.jp/search?q=%E3%83%89%E3%83%A9%E3%82%AF%E3%82%A8%E3%81%AE%E6%97%A5%202024%20%E9%85%8D%E4%BF%A1&oq&ved=0ahUKEwic-4Cg262GAxUyQPUHHRpFAt4Q470GCCc&sclient=mweb-insp&gs_lp=Egltd2ViLWluc3AqDwgBEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBLgBGZgD-wmyBgYQRxhHKAE&gs_ss=1&biw=430&bih=739&dpr=3}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onTitleChanged" using {title: ドラクエの日 2024 配信 - Google 検索}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onContentSizeChanged" using {oldContentSize: {width: 430.0, height: 821.0}, newContentSize: {width: 440.0, height: 739.0}}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onProgressChanged" using {progress: 85}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onContentSizeChanged" using {oldContentSize: {height: 739.0, width: 440.0}, newContentSize: {width: 430.0, height: 739.0}}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onContentSizeChanged" using {oldContentSize: {width: 430.0, height: 739.0}, newContentSize: {width: 430.0, height: 1555.0}}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onProgressChanged" using {progress: 89}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onProgressChanged" using {progress: 89}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onProgressChanged" using {progress: 89}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onProgressChanged" using {progress: 89}
flutter: ffffffffff
flutter: onLoadStop
flutter: https://www.google.co.jp/search?q=%E3%83%89%E3%83%A9%E3%82%AF%E3%82%A8%E3%81%AE%E6%97%A5%202024%20%E9%85%8D%E4%BF%A1&oq&ved=0ahUKEwic-4Cg262GAxUyQPUHHRpFAt4Q470GCCc&sclient=mweb-insp&gs_lp=Egltd2ViLWluc3AqDwgBEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBLgBGZgD-wmyBgYQRxhHKAE&gs_ss=1&biw=430&bih=739&dpr=3
flutter: ffffffffff
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onProgressChanged" using {progress: 100}
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onLoadStop" using {url: https://www.google.co.jp/search?q=%E3%83%89%E3%83%A9%E3%82%AF%E3%82%A8%E3%81%AE%E6%97%A5%202024%20%E9%85%8D%E4%BF%A1&oq&ved=0ahUKEwic-4Cg262GAxUyQPUHHRpFAt4Q470GCCc&sclient=mweb-insp&gs_lp=Egltd2ViLWluc3AqDwgBEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBDINEAAYAxjqAhiPARiWBLgBGZgD-wmyBgYQRxhHKAE&gs_ss=1&biw=430&bih=739&dpr=3}



/// close
[IOSInAppWebViewController] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onWindowBlur" using []
flutter: cccccccccc
flutter: onExit
flutter: cccccccccc
[IOSInAppBrowser] (iOS) IOSInAppBrowser ID 379114422223242250619917519822218323523533 calling "onExit" using {}

*/
