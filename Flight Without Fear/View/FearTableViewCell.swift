//
//  FearTableViewCell.swift
//  Flight Without Fear
//
//  Created by Cristiano Coutinho on 11/02/21.
//

import UIKit

class FearTableViewCell: UITableViewCell{

  let cellView: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor.lightBlue
    view.layer.cornerRadius = 10
    return view
  }()

  let fearLabel: UILabel = {
    let label = UILabel()
    label.textColor = UIColor.white
    label.font = UIFont.boldSystemFont(ofSize: 16)
    return label
  }()

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)

    setupCellView()
    setupFearLabel()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  func setContent(fearLabelTitle: String) {
      self.fearLabel.text = fearLabelTitle
  }
}

extension FearTableViewCell{

  func setupCellView() {
    addSubview(cellView)
    cellView.translatesAutoresizingMaskIntoConstraints = false
    self.selectionStyle = .none
    
    NSLayoutConstraint.activate([
        cellView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
        cellView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
        cellView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
        cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
    ])
  }

  func setupFearLabel(){
    addSubview(fearLabel)
    fearLabel.translatesAutoresizingMaskIntoConstraints = false
    self.selectionStyle = .none

    NSLayoutConstraint.activate([
      fearLabel.heightAnchor.constraint(equalToConstant: 200),
      fearLabel.widthAnchor.constraint(equalToConstant: 200),
      fearLabel.centerYAnchor.constraint(equalTo: cellView.centerYAnchor),
      fearLabel.leftAnchor.constraint(equalTo: cellView.leftAnchor, constant: 20)
    ])
  }

}
