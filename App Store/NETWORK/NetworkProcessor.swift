//
//  NetworkProcessor.swift
//  App Store
//
//  Created by Chidi Emeh on 1/13/18.
//  Copyright © 2018 Chidi Emeh. All rights reserved.
//

import Foundation



class NetworkProcessor {
    
    lazy var sessionConfiguration = URLSessionConfiguration.default
    lazy var session = URLSession(configuration: sessionConfiguration)
    
    let url : URL
    
    init(url : URL) {
        self.url = url
    }
    
    
    typealias JSONObject = ( (Codable?) -> Void  )
    typealias DataHandler = ( (Data?, HTTPURLResponse?, Error?) -> Void  )
    
    
    
    //Downloads json for a url
    func downloadAppJSONData(_ completion : @escaping JSONObject ){
        let request = URLRequest(url: url)
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            if error == nil {
                if let httpResponse = response as? HTTPURLResponse {
                    switch httpResponse.statusCode {
                    case 200:
                        if let responseData = data {
                            do{
                                var downloadedObject : Codable?
                                    downloadedObject = try JSONDecoder().decode(Apps.self, from: responseData)
                                completion(downloadedObject)
                            }catch let error as NSError {
                                print("Error decoding: \(error)")
                            }
                        }
                    default:
                        print("Response Status code: \(httpResponse.statusCode)")
                    }
                }
            }else {
                print(error?.localizedDescription ?? "Error downloading task")
            }
        }
        dataTask.resume()
    }
    
    //Downloads ImageData from URL
    func downloadImageDataFromURL( _ completion : @escaping DataHandler ){
        let request = URLRequest(url: url)
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            if error == nil {
                if let httpResponse = response as? HTTPURLResponse {
                    switch httpResponse.statusCode {
                    case 200:
                        if let responseData = data {
                            completion(responseData, nil, nil)
                        }
                    default:
                        return
                    }
                }
            }else {
                completion(nil, nil, error!)
            }
        }
        dataTask.resume()
    }
    
    
    
    
}
