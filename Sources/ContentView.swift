
import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        WebView()
            .ignoresSafeArea()
    }
}

struct WebView: UIViewRepresentable {

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()

        let html = """
        <!DOCTYPE html>
        <html>
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <style>
                body {
                    background: #172033;
                    color: white;
                    text-align: center;
                    font-family: Arial, sans-serif;
                    padding: 100px 20px 0;
                }

                h1 {
                    color: #55D6BE;
                }

                p {
                    font-size: 18px;
                }
            </style>
        </head>
        <body>
            <h1>Carrom Aim Guide</h1>
            <p>Your aiming guide is ready!</p>
        </body>
        </html>
        """

        webView.loadHTMLString(html, baseURL: nil)
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        // No updates needed
    }
}
