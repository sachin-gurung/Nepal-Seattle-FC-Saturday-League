//
//  ViewController.swift
//  Nepal Seattle FC Saturday League
//
//  Created by Sachin Gurung on 6/10/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
//    var strings: [String] = ["Nepal Seattle FC Pink", "Nepal Seattle FC Yellow", "Nepal JBLM FC", "Seatown FC", "Aayo Gorkhali"]
    
//    var teams = [
//        Teams(rank: 1, name: "Nepal Seattle FC Pink", wins: 0, ties: 0, losses: 0),
//        Teams(rank: 2, name: "Nepal Seattle FC Yellow", wins: 0, ties: 0, losses: 0),
//        Teams(rank: 3, name: "Nepal JBLM FC", wins: 0, ties: 0, losses: 0),
//        Teams(rank: 4, name: "Seatown FC", wins: 0, ties: 0, losses: 0),
//        Teams(rank: 5, name: "Aayo Gorkhali", wins: 0, ties: 0, losses: 0)
//    ]
    
    let teams: [Teams] = [
        Teams(ranking: 1, name: "Nepal Seattle FC Pink", wins: 0, ties: 0, losses: 0),
        Teams(ranking: 2, name: "Nepal Seattle FC Yellow", wins: 0, ties: 0, losses: 0),
        Teams(ranking: 3, name: "Nepal JBLM FC", wins: 0, ties: 0, losses: 0),
        Teams(ranking: 4, name: "Seatown FC", wins: 0, ties: 0, losses: 0),
        Teams(ranking: 5, name: "Aayo Gorkhali", wins: 0, ties: 0, losses: 0)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
    }

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)->Int{
    return teams.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    let team = teams[indexPath.row]
    cell.textLabel?.text = "\(team.ranking). \(team.name) - Wins: \(team.wins), Ties: \(team.ties), Losses: \(team.losses), Points: \(team.totalPoints)"
    return cell
    }
}

//extension ViewController: UITableViewDataSource, UITableViewDelegate{
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        
//        let vc = storyboard.instantiateViewController(withIdentifier: "teamWindow")
//        
//        vc.team = teams[indexPath.row]
//        
//        navigationController?.pushViewController(vc, animated: true)
//    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)->Int{
//        return strings.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = strings[indexPath.row]
//        return cell
//    }
//}


