
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var input: UITextField!
    var URL = "http://www.google.com"

    override func viewDidLoad() {
        super.viewDidLoad()
        input.text = URL;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowWebViewSegue" {
            let webVC = segue.destinationViewController as! WebViewController
            webVC.URL = input.text!
            
        }
    }

}

