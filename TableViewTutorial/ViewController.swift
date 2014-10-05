

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    var tableData: [String] = ["Hello", "My", "Table"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableData.append("Seemu")
        self.tableView.reloadData()
    }
    
    // Table View Methods
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableData.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        cell.textLabel?.text = self.tableData[indexPath.row]
        return cell
    }    

    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        println("Index \(indexPath.row) selected")
    }

    func reloadData() {
        self.tableView.reloadData()
    }
    
    

}

