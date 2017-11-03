import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {

    var webView: WKWebView!

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "http://m.wayong.umucdn.cn/session/article?surl=Fs5e06a")!
        webView.load(URLRequest(url: url) as URLRequest)
        webView.allowsBackForwardNavigationGestures = true

    }
}


