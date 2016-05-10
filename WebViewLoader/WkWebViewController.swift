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
//            webview.mediaPlaybackRequiresUserAction=false;
//            webview.allowsInlineMediaPlayback=true;
            self.webview!.loadRequest(NSURLRequest(URL: NSURL(string: URL)!))
        }
    }

    override func loadView() {
        super.loadView()
        self.webview = WKWebView()
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
