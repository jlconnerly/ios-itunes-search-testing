//
//  NetworkDataLoader.swift
//  iTunes Search
//
//  Created by Jake Connerly on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    // Question: What do we need for data in/data out?
                // Need back: Data and Error
                // provide: URLRequest
    
    func loadData(with request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
}
