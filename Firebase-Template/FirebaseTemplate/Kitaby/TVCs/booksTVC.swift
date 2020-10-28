//
//  booksTVC.swift
//  FirebaseTemplate
//
//  Created by Mac on 10/19/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class booksTVC: UITableViewController {
    
    var books: [Book]!

    @IBOutlet weak var navigationBarTitle: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBarTitle.title = books[0].category
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return books.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "books", for: indexPath) as! booksCell
        let book = books[indexPath.row]
        
        cell.configure(book: book)
        
        // Configure the cell...

        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToBookDetails", sender: books[indexPath.row])
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let book = sender as! Book
        let vc = segue.destination as! bookVC
        vc.book1 = book
    }
    

}
