class WebViewTab extends StatelessWidget {
  final String url;
  const WebViewTab({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}