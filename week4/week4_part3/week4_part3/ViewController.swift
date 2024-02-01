//
//  ViewController.swift
//  week4_part3
//
//  Created by Kyle Lu on 2024/1/31.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var StationNameLabel: UILabel!
    @IBOutlet weak var AddressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        
    }

    func updateUI(with thsrStation: Thsr)  {
        stationIDLabel.text = thsrStation.stationID
        StationNameLabel.text = thsrStation.stationName
        AddressLabel.text = thsrStation.stationAddress
        
    }
    
    func fetchData() {
        if let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station") {
            URLSession.shared.dataTask(with: url) { [weak self] data, response , error in
                if let data = data {
                    let decoder = JSONDecoder()
                    do {
                        let thsrStation = try decoder.decode(Thsr.self, from: data)
                                            DispatchQueue.main.async {
                                                self?.updateUI(with: thsrStation)
                                            }
                    } catch {
                        print(error)
                    }
                } else if let error = error{
                    print(error)
                }
            }.resume()
        }
    }

}

struct Thsr: Codable {
    let stationID: String
    let stationName: String
    let stationAddress: String
}
