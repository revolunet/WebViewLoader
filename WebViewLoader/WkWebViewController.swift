import UIKit
import WebKit

class WkWebViewController: UIViewController {
    @IBOutlet weak var containerView: UIView!
    var webview: WKWebView?
    var URL = ""

    func touchUp(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: {})
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if URL != "" {
            self.webview!.loadRequest(NSURLRequest(URL: NSURL(string: URL)!))
        }
    }

    override func loadView() {
        super.loadView()

        let configuration = WKWebViewConfiguration()
        configuration.allowsInlineMediaPlayback = true;

        if #available(iOS 9.0, *) {
            configuration.requiresUserActionForMediaPlayback = false;
            configuration.allowsAirPlayForMediaPlayback=true
        } else {
            configuration.mediaPlaybackAllowsAirPlay=true
            configuration.mediaPlaybackRequiresUserAction = false;
        }

        self.webview = WKWebView(frame: UIScreen.mainScreen().bounds, configuration: configuration)

        self.view = self.webview
        let button = UIButton(frame: CGRectMake(3, 15, 80, 30))
        button.setTitle("◀ Back", forState: UIControlState.Normal)
        button.addTarget(self, action: #selector(WkWebViewController.touchUp(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        button.setTitleColor(self.view.tintColor, forState: UIControlState.Normal)
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
