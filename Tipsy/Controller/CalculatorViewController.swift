import UIKit

class CalculatorViewController: UIViewController {
    
// MARK: - Outlets
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
//MARK: - Var
    
    var tipsyBrain = TipsyBrain()
    
//MARK: - Actions
    
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true) // Fechar o teclado quando tocar nas %
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        tipsyBrain.setValueTip(valueTitle: sender.currentTitle!)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        tipsyBrain.setSplitValue(splitValue: String(Int(sender.value)))
        splitNumberLabel.text = String(Int(tipsyBrain.peaples))
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        tipsyBrain.setBillTextField(billTextField.text!)
        tipsyBrain.calculate()
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
//MARK: - Data Pass
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.resultValue = String(format: "%.1f", tipsyBrain.result)
            destinationVC.peaples = Int(tipsyBrain.peaples)
            destinationVC.percentage = String(tipsyBrain.buttonTitle)
        }
    }
}

