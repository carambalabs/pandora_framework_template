import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Attributes
    
    var tableView: UITableView!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    // MARK: - Setup
    
    private func setup() {
        self.view.backgroundColor = UIColor.white
        self.title = "XXXXX Examples"
        self.tableView = UITableView(frame: CGRect.zero, style: .plain)
        self.view.addSubview(self.tableView)
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        self.tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.tableView.layoutIfNeeded()
        self.tableView.reloadData()
    }
    
    // MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        }
        switch indexPath.row {
        default:
            cell.textLabel?.text = "Not defined"
            cell.detailTextLabel?.text = ""
        }
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

