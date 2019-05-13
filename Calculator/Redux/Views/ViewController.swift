//
//  ViewController.swift
//  Calculator
//
//  Created by Diego.Caridei on 13/05/2019.
//  Copyright © 2019 Diego.Caridei. All rights reserved.
//

import UIKit
import ReSwift
class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var secondValueLabel: UITextField!
    @IBOutlet weak var firstValueLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mainStore.subscribe(self)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        mainStore.unsubscribe(self)
    }
    
    @IBAction func divide(_ sender: Any) {
        mainStore.dispatch(ActionCalculator.division(firstValue: firstValueLabel.text, secondValue: secondValueLabel.text))
    }
    
    @IBAction func add(_ sender: Any) {
        mainStore.dispatch(ActionCalculator.addition(firstValue: firstValueLabel.text, secondValue: secondValueLabel.text))
    }
}


extension ViewController: StoreSubscriber {
    func newState(state: AppState){
        DispatchQueue.main.async { [weak self] in
            guard let self = self else {return}
            self.resultLabel.text = "\(state.result)"
        }
    }
}
