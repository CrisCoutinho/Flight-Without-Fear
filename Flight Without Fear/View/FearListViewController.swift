//
//  FearListViewController.swift
//  Flight Without Fear
//
//  Created by Cristiano Coutinho on 09/02/21.
//

import UIKit

class FearListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  private let fearListTV: UITableView = {
    let tv = UITableView()
    tv.backgroundColor = UIColor.white
    tv.separatorStyle = .none
    return tv
  }()
  override func viewDidLoad() {
    super.viewDidLoad()
    setupTableView()

  }

  func setupTableView() {
    view.addSubview(fearListTV)
    fearListTV.delegate = self
    fearListTV.dataSource = self
    fearListTV.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
    fearListTV.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      fearListTV.topAnchor.constraint(equalTo: view.topAnchor),
      fearListTV.leftAnchor.constraint(equalTo: view.leftAnchor),
      fearListTV.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      fearListTV.rightAnchor.constraint(equalTo: view.rightAnchor),
    ])

  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = fearListTV.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
    cell.backgroundColor = UIColor.gray
    return cell
  }

}
