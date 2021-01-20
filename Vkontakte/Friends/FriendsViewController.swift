//
//  FriendsViewController.swift
//  Vkontakte
//
//  Created by Lera on 16.01.21.
//

import UIKit

class FriendsViewController: UITableViewController {
    
    struct FriendsRecord: Equatable {
        static func == (lhs: FriendsViewController.FriendsRecord, rhs: FriendsViewController.FriendsRecord) -> Bool {true}
        var FriendName: String
        var FriendPhoto: UIImage?
    }
    
    var myFriends = [
        FriendsRecord(FriendName: "Никита Сергеев", FriendPhoto: UIImage(named: "Human21")),
        FriendsRecord(FriendName: "Анна Андреева", FriendPhoto: UIImage(named: "Human20")),
        FriendsRecord(FriendName: "Виктор Федоров", FriendPhoto: UIImage(named: "Human22")),
        FriendsRecord(FriendName: "Олег Петров", FriendPhoto: UIImage(named: "Human23")),
        FriendsRecord(FriendName: "Антон Егоров", FriendPhoto: UIImage(named: "Human25")),
        FriendsRecord(FriendName: "Павел Алексеев", FriendPhoto: UIImage(named: "Human26")),
    ]

    // MARK: - Table view data source
  /*  override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
  */
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        myFriends.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath)
            as? FriendCell
        else { return UITableViewCell() }
      
        cell.FriendName?.text = myFriends[indexPath.row].FriendName
        cell.FriendPhoto?.image = myFriends[indexPath.row].FriendPhoto
        
        // Configure the cell...
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
