
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var input: UITextField!
    var URL = "http://www.html5test.com"
    //192.168.103.208:3001/#/media/ODL-S06BE11"

    override func viewDidLoad() {
        super.viewDidLoad()
        input.text = URL;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowUIWebViewSegue" {
            let webVC = segue.destinationViewController as! UIWebViewController
            webVC.URL = input.text!
        }
        if segue.identifier == "ShowWkWebViewSegue" {
            let webVC = segue.destinationViewController as! WkWebViewController
            webVC.URL = input.text!
            
        }
    }

}

