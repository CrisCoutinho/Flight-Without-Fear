//
//  FearDescriptionContent.swift
//  Flight Without Fear
//
//  Created by Cristiano Coutinho on 12/02/21.
//

import UIKit

class FearDescriptionContent: UIView{

  /*
  lazy var titleLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 32)
    label.numberOfLines = .zero
    return label
  }()
*/
  lazy var descriptionLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 16)
    label.numberOfLines = .zero
    label.textColor = UIColor.black
    return label
  }()

  override init(frame: CGRect) {
    super.init(frame: frame)

   // self.addSubview(titleLabel)
    self.addSubview(descriptionLabel)
    self.backgroundColor = UIColor.white

   // setupTitleLabel()
    setupDescription()

    //Setup Background(future feature)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  func setFearContent(description: String){
    self.descriptionLabel.text = description
  }


}

extension FearDescriptionContent{
/*
  func setupTitleLabel(){
    titleLabel.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
        titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 56),
        titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 40),
        titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -40)
    ])

  }
   */
  func setupDescription(){
    descriptionLabel.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      descriptionLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: -500),
      descriptionLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 21),
      descriptionLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
      descriptionLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor)
    ])

  }

  func addDescription(contentView: UIView){
    descriptionLabel.addSubview(contentView)
    contentView.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
        contentView.topAnchor.constraint(equalTo: descriptionLabel.topAnchor),
        contentView.bottomAnchor.constraint(equalTo: descriptionLabel.bottomAnchor),
        contentView.leftAnchor.constraint(equalTo: descriptionLabel.leftAnchor),
        contentView.rightAnchor.constraint(equalTo: descriptionLabel.rightAnchor)
    ])

  }
}
