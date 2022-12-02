
import UIKit

// 1. Create Interface / Protocol

protocol ModalTableViewControllerDelegate {
//  all of methods, properties and constructors
    func modalTableViewController(_ viewController: ModalTableViewController, didCreatePerson newPerson: Person)
}

class ModalTableViewController: UITableViewController {

//  2. Create property (optional)
//  all delegates are optional, cause u dont know if u are gonna use it
    var delegate: ModalTableViewControllerDelegate?
    
    @IBAction func closeButtonItem(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func SaveButtonItem(_ sender: Any) {
        let name = fristTextField.text
        let lastName = secondTextField.text
        
//      validate input is null and not empty
        guard let n = name, !n.isEmpty else {return}
        guard let l = lastName, !l.isEmpty else {return}
        
        let person = Person(name: n, lastName: l)
        
//      3. Call protocol method
        delegate?.modalTableViewController(self, didCreatePerson: person)
        
        dismiss(animated: true)
    }
    
    @IBOutlet weak var fristTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        fristTextField.placeholder = "Nombre"
        secondTextField.placeholder = "Apellido"
    }
}
