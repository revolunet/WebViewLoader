
import UIKit

class WebViewController: UIViewController {
    @IBOutlet weak var webview: UIWebView!
    var URL = ""
    
    @IBAction func touchUp(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: {})
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if URL != "" {
            webview.mediaPlaybackRequiresUserAction=false;
            webview.allowsInlineMediaPlayback=true;
            webview.loadRequest(NSURLRequest(URL: NSURL(string: URL)!))
        }
    }
    
}
