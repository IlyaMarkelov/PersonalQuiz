//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Nikita Zharinov on 01/11/2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    var answers: [Answer]!
    
    @IBOutlet var emojiLabel: UILabel!
    @IBOutlet var definitionLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)

        for answer in answers {
            switch answer.type {
            case .cat:
                emojiLabel.text = "Вы - \(answer.type.rawValue)!"
                definitionLabel.text = answer.type.definition
            case .dog:
                emojiLabel.text = "Вы - \(answer.type.rawValue)!"
                definitionLabel.text = answer.type.definition
            case .rabbit:
                emojiLabel.text = "Вы - \(answer.type.rawValue)!"
                definitionLabel.text = answer.type.definition
            case .turtle:
                emojiLabel.text = "Вы - \(answer.type.rawValue)!"
                definitionLabel.text = answer.type.definition
        }

    }
}

    // 1. Передать сюда массив с ответами
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результаты в соотвствии с этим животным
    // 4. Избавиться от кнопки возврата назад на экране результатов
    
}


extension ResultViewController {
    private func updateUI(with animal: AnimalType?) {
        emojiLabel.text = "Вы - \(animal?.rawValue ?? "🐶" )!"
        definitionLabel.text = animal?.definition ?? ""
    }
}
