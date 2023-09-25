//
//  ViewController.swift
//  URLSessionDemo
//
//  Created by JimmyChao on 2023/9/23.
//

import UIKit

class ViewController: UIViewController {

    //Json model
    struct ResponseRoot: Codable{
        let stationID: String
        let stationName: String
        let stationAddress: String
    }
    
    
    @IBOutlet var stationIDLabel: UILabel!
    @IBOutlet var stationNameLabel: UILabel!
    @IBOutlet var addressLabel: UILabel!
    
    
    let baseURL = "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station"
    
    
//MARK: - ViewDidLoad -
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        fetchData { data in
            self.stationIDLabel.text = data.stationID
            self.stationNameLabel.text = data.stationName
            self.addressLabel.text = data.stationAddress
        }
        
    }
   
    
//MARK: - Fetching data from api -

    func fetchData(action: @escaping (ResponseRoot) -> Void ){
        
        var urlRequest = URLRequest(url: URL(string: baseURL)!)
        urlRequest.allHTTPHeaderFields = ["accept": "application/json"]
        urlRequest.httpMethod = "GET"
            
        let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            
            guard let data = data else{ fatalError("data found nil") }
            guard let response = response as? HTTPURLResponse else{ fatalError("response found nil") }
            
            let decoder = JSONDecoder()
            
            do {
                let decodedJSON = try decoder.decode(ResponseRoot.self, from: data)
                print( response.statusCode )
                
                //Only update UI within main queue
                OperationQueue.main.addOperation {
                    action(decodedJSON)
                }
                
            }catch{
                print(error)
                
            }
        }
        task.resume()
    }
}

