//
//  FearListViewController.swift
//  Flight Without Fear
//
//  Created by Cristiano Coutinho on 09/02/21.
//

import UIKit

class FearListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  private let fearListTV: UITableView = {
    let tv = UITableView(frame: .zero, style: .grouped)
    tv.backgroundColor = UIColor.white
    tv.separatorStyle = .none
    return tv
  }()
  override func viewDidLoad() {
    super.viewDidLoad()
    setupTableView()
    self.title = "Lista de Medos"
    navigationController?.navigationBar.prefersLargeTitles = true

  }
  func numberOfSections(in tableView: UITableView) -> Int {
    1
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 2
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = fearListTV.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! FearTableViewCell
    cell.setContent(fearLabelTitle: "Claustrofobia")
    return cell
  }
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      return 100
  }

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let nextController = FearDescriptionViewController()
    self.navigationController?.pushViewController(nextController, animated: true)
  }

  func setupTableView() {
    view.addSubview(fearListTV)
    fearListTV.delegate = self
    fearListTV.dataSource = self

    fearListTV.register(FearTableViewCell.self, forCellReuseIdentifier: "cellId")
    fearListTV.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      fearListTV.topAnchor.constraint(equalTo: self.view.topAnchor),
      fearListTV.leftAnchor.constraint(equalTo: view.leftAnchor),
      fearListTV.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      fearListTV.rightAnchor.constraint(equalTo: view.rightAnchor),
    ])

  }
}
