import UIKit

class ResultViewController: UIViewController {
    
//MARK: - Var
    
    var resultValue: String?
    var peaples: Int?
    var percentage: String?
    
//MARK: - Outlets
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
//MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = resultValue
        settingsLabel.text = "Split between \(peaples!) peoples, with \(percentage!) tip"
    }
    
    //MARK: - Actions
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
