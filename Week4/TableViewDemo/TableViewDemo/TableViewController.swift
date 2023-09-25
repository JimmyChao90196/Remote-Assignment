//
//  TableViewController.swift
//  TableViewDemo
//
//  Created by JimmyChao on 2023/9/23.
//

import UIKit

class TableViewController: UITableViewController {

    //I only declare section becuase my item is integer.
    //And Int type is already defined and conform to hashable.
    enum Section: String, CaseIterable{
        case section0 = "Section 0"
        case section1 = "Section 1"
    }
    
    //Change type name so it can be easier to read.
    typealias DataSourceSnapshot = NSDiffableDataSourceSnapshot<Section, Int>
    typealias DataSource = UITableViewDiffableDataSource<Section, Int>
    
    var dataSource: DataSource!
    
    //MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        //Register table header view and extend the header.
        tableView.register(HeaderView.self, forHeaderFooterViewReuseIdentifier: HeaderView.reuseIdentifier)
        tableView.contentInsetAdjustmentBehavior = .never

        configureDataSource()
        configureSnapshot()
    }
    
   //MARK: - Configure DataSource
    func configureDataSource(){
        
        dataSource = DataSource(tableView: tableView) { (tableView, indexPath, item) in
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReuseCell", for: indexPath)
            cell.textLabel?.text = "This is section:\(indexPath.section), row:\(indexPath.row)"
            return cell
        }
    }
    
    //MARK: - Configure Snapshot
    func configureSnapshot(){
        
        var snapshot = DataSourceSnapshot()
        snapshot.appendSections(Section.allCases)
        
        for section in Section.allCases {
            let items = section.rawValue == "Section 0" ? Array(0...9) : (Array(0...4).map{ $0 + 10 })
            snapshot.appendItems(items, toSection: section)
        }
        dataSource.apply(snapshot, animatingDifferences: false)
    }
    
    
    
    
//MARK: - Delegate Method -
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //Just like cell, headerView needs to be deque as well.
        guard let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: HeaderView.reuseIdentifier) as? HeaderView else{ return nil }
        headerView.textLabelView.text = Section.allCases[section].rawValue
        return headerView
    }
    
    //Setting the row height in code.
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100.0
    }
}




//MARK: -Table Header View-
class HeaderView: UITableViewHeaderFooterView {
    static let reuseIdentifier = String(describing: HeaderView.self)
    
    var textLabelView: UILabel = UILabel()
    var bgView = UIView()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    //We won't be initialize this view through interface builder.
    //So this code will never be excuted.
    required init?(coder: NSCoder) {
        fatalError("init(coder:) is not implemented")
    }
    
    
    //Header view config for background color and constraint.
    private func configure() {
        
        
        if  backgroundView == nil {
            backgroundView = UIView()
        }
        
        
        //Set background color and font.
        //Disable autoresizingMask for we are about to create constraint purely in code.
        backgroundView!.backgroundColor = UIColor(red: 0.2, green: 0.5, blue: 0.7, alpha: 1)
        addSubview(textLabelView)
        textLabelView.font = UIFont.preferredFont(forTextStyle: .title2)
        textLabelView.translatesAutoresizingMaskIntoConstraints = false
        
        let inset: CGFloat = 25
        
        //Seting constraints for header view
        NSLayoutConstraint.activate([
            textLabelView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: inset),
            textLabelView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -inset),
            textLabelView.topAnchor.constraint(equalTo: topAnchor, constant: inset),
            textLabelView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -inset)
        ])
    }
}




