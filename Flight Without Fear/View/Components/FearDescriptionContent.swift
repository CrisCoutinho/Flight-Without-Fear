//
//  FearDescriptionContent.swift
//  Flight Without Fear
//
//  Created by Cristiano Coutinho on 12/02/21.
//

import UIKit

class FearDescriptionContent: UIView{

  lazy var titleLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 32)
    label.numberOfLines = .zero
    return label
  }()

  lazy var descriptionLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 16)
    label.numberOfLines = .zero
    return label
  }()

  override init(frame: CGRect) {
    super.init(frame: frame)

    self.addSubview(titleLabel)
    self.addSubview(descriptionLabel)

    setupTitleLabel()
    setupDescription()

    //Setup Background(future feature)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }




}

extension FearDescriptionContent{

  func setupTitleLabel(){
    titleLabel.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
        titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 56),
        titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 40),
        titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -40)
    ])

  }
  func setupDescription(){
    descriptionLabel.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
      descriptionLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 40),
      descriptionLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -40),
    ])

  }
}
