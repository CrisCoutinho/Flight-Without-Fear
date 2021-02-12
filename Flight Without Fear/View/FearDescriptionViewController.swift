//
//  FearDescriptionViewController.swift
//  Flight Without Fear
//
//  Created by Cristiano Coutinho on 11/02/21.
//

import UIKit

class FearDescriptionViewController: UIViewController {

  let fearDescription = FearDescriptionContent()


  override func viewDidLoad() {
    super.viewDidLoad()
    self.title = "Claustrofobia"
    navigationController?.navigationBar.prefersLargeTitles = true
    setupContentView()

    fearDescription.setFearContent(description: "A aerofobia e a claustrofobia, assim como outras fobias, causam os mesmos sintomas, como aperto no peito, falta de ar, tontura, enjoo, palpitação, sudorese excessiva, boca seca. A diferença é o tipo de situação que leva ao desencadeamento destes sintomas. O tratamento é feito, em média, em 10 sessões individuais. Se for em grupo, é possível fazer em um curso intensivo de três dias. Nossa metodologia envolve Psicoeducação, Terapia Cognitivo Comportamental, ensino de técnicas para controle da ansiedade, dessensibilização sistemática e simulação de voo.")

  }

  func setupContentView() {
    self.view.addSubview(fearDescription)
    fearDescription.translatesAutoresizingMaskIntoConstraints = false

    fearDescription.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
    fearDescription.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
    fearDescription.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
    fearDescription.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
  }
}
