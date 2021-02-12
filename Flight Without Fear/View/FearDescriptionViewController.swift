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

    fearDescription.setFearContent(description: "Esse é um texto para Claustrofobia")

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
