//
//  NetworkingService.swift
//  Test-1
//
//  Created by Hassan Abbasi on 05/08/2020.
//  Copyright © 2020 Hassan Abbasi. All rights reserved.
//

import Foundation

class NetworkingService{
    
    static var shared = NetworkingService()
    private init(){}
    
    //Post Request | Form-data
    
    
    ///https://miro.medium.com/max/700/1*o8tTGo3vsocTKnCUyz0wHA.jpeg
   
    
    func loadImageWithResult(withURL stringURL:String, completion:@escaping ((Result<Data,Error>) -> Void)){
            guard let url = URL(string:stringURL) else{return}
            

    //Async
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                
                DispatchQueue.main.async{

                    //200
                    //404
                    //500 internal error
                    //526 SSL
                if let error = error{
                    completion(.failure(error))
                return
                }
                
                if let data = data{
                    completion(.success(data))
                    return
                }
                
                completion(.failure(NetworkingService.Errors.InvalidUser))

                }
            }
            //If this is not there, it won't work.
            task.resume()
            
            

        }
        
    
    
    
//
//    func loadMyImage(withURL stringURL:String, completion:@escaping ((String,Error?) -> Void)) -> Data?{
//        guard let url = URL(string:stringURL) else{return nil}
//
//        viewController = vc
//
//        var finalData:Data?
//
////Async
//        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
//
//            if let error = error{
//                //TODO: Handle your error.
//
//                completion("Failed",NetworkingService.Errors.NetworkError)
//           return
//            }
//
//            if data == nil{
//                completion("Failed",NetworkingService.Errors.InvalidUser)
//
//                return
//            }
//
//
//            completion("\(data)",nil)
//            //finalData = data
//
//
//        }
//        //If this is not there, it won't work.
//        task.resume()
//
//
//        return finalData
//
//    }
//
//
//
    
    enum Errors:Error{
        
        case UnknownError
        case JsonError
        case InvalidUser
        case NetworkError
        
    }
    
    
    
}



