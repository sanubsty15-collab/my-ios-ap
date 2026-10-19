
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
            <meta name="viewport"
            content="width=device-width, initial-scale=1.0">
            <style>
                body {
                    background: #111827;
                    color: white;
                    font-family: Arial, sans-serif;
                    text-align: center;
                    padding: 40px 20px;
                }
                h1 {
                    color: #38bdf8;
                    font-size: 32px;
                }
                button {
                    background: #0284c7;
                    color: white;
                    border: none;
                    padding: 15px 30px;
                    border-radius: 12px;
                    font-size: 18px;
                    margin-top: 20px;
                }
            </style>
        </head>
        <body>
            <h1>Hello! 👋</h1>
            <p>Meri pehli iPhone app</p>
            <button onclick="document.getElementById('msg').innerText='App chal rahi hai!'">
                Click Karo
            </button>
            <p id="msg"></p>
        </body>
        </html>
        """

        webView.loadHTMLString(html, baseURL: nil)
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}

#Preview {
    ContentView()
}
