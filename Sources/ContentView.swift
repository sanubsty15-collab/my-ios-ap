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
let html = """ <html> <body style="background:#172033;color:white;text-align:center;font-family:Arial;padding-top:100px"> <h1>Carrom Aim Guide</h1> <p>Your aiming guide is ready!</p> </body> </html>
"""
webView.loadHTMLString(html, baseURL: nil)
return webView
}

```
func updateUIView(_ uiView: WKWebView, context: Context) {}
```

}
