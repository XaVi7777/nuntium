import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
class WebViewPage extends StatefulWidget {
  final String url;

  const WebViewPage({
    required this.url,
    super.key,
  });

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController _controller;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url))
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: _onPageStarted,
          onPageFinished: _onPageFinished,
          onWebResourceError: _onWebResourceError,
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;

    return UIPageWrapper(
      appBar: const UIAppBar(
        showBack: true,
      ),
      backgroundColor: appTheme.colorTheme.backgroundSurface,
      child: Stack(
        children: [
          WebViewWidget(
            controller: _controller,
          ),
          if (_isLoading)
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: appTheme.colorTheme.backgroundSurface,
              alignment: Alignment.center,
              child: const UILoader(
                showBackground: false,
              ),
            ),
        ],
      ),
    );
  }

  void _onPageStarted(String url) {
    if (!mounted) return;
    if (!_isLoading) {
      setState(() {
        _isLoading = true;
      });
    }
  }

  void _onPageFinished(_) {
    if (!mounted) return;
    if (_isLoading) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _onWebResourceError(WebResourceError error) {
    if (!mounted) return;
  }
}
