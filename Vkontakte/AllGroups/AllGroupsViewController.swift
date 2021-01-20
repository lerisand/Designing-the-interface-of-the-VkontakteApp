//
//  AllGroupsViewController.swift
//  Vkontakte
//
//  Created by Lera on 16.01.21.
//

import UIKit

class AllGroupsViewController: UITableViewController {
    
    var allGroups = [
        "MXK",
        "TJ",
        "Daily Wisdom",
        "Physics, Math, Code",
        "Humanite",
        "Mental Engineering",
        ]

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "GroupCell")
//    }
//    
    override func numberOfSections(in tableView: UITableView) -> Int {
         // #warning Incomplete implementation, return the number of sections
         return 1
     }


     override func tableView(_ tableerrView: UITableView, numberOfRowsInSection section: Int) -> Int {
         // #warning Incomplete implementation, return the number of rows
         return allGroups.count
     }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath)
        guard let groupCell = cell as? GroupCell else { return cell }
        groupCell.GroupImage?.image = UIImage(named: "Image3")
        groupCell.GroupName?.text = allGroups[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
     
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
         // Return false if you do not want the specified item to be editable.
         return true
     }
     


//     // Override to support editing the table view.
//     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//         if editingStyle == .delete {
//             allGroups.remove(at: indexPath.row)
//             tableView.deleteRows(at: [indexPath], with: .fade)
//         }
//     }
//
     
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     }
     

     
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
         // Return false if you do not want the item to be re-orderable.
         return true
     }
    

    
     // MARK: - Navigation
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
     }

 }

