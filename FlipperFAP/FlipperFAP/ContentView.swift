import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        let webView = WKWebView(frame: .zero, configuration: config)
        webView.allowsBackForwardNavigationGestures = true
        webView.scrollView.contentInsetAdjustmentBehavior = .automatic
        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        webView.load(URLRequest(url: url))
    }
}

struct ContentView: View {
    var body: some View {
        WebView(url: URL(string: "https://joelewis012.github.io/flipper-fap-actions/")!)
            .ignoresSafeArea()
    }
}
