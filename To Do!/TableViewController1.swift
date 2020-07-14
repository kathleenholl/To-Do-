//
//  TableViewController1.swift
//  To Do!
//
//  Created by Kathleen Hollinger on 7/13/20.
//  Copyright © 2020 Kathleen Hollinger. All rights reserved.
//

import UIKit

class TableViewController1: UITableViewController {
    
    var toDos : [ToDo] = []
    
    

    

        override func viewDidLoad() {
          super.viewDidLoad()

          toDos = createToDos()
        }
    
    

    // MARK: - Table view data source
    
    func createToDos() -> [ToDo] {
        
        let swift = ToDo()
        swift.name = "Learn Swift"
        swift.important = true
        
        let dog = ToDo()
        dog.name = "Walk the Dog"
        //important is set false as default
        
        return [swift, dog]
    }


   
override func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int {
    return toDos.count
        }
        

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let toDo = toDos[indexPath.row]
        
        if toDo.important {
            cell.textLabel?.text = "⭐️  " + toDo.name
        }
        else {
            cell.textLabel?.text = toDo.name
            
        }

        return cell
    }
    

  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
