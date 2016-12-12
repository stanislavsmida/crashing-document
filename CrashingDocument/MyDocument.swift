//
//  MyDocument.swift
//  CrashingDocument
//
//  Created by Stanislav Smida on 07/12/2016.
//
//

import UIKit

class MyDocument: UIDocument {
    
    var text: String!
    
    // MARK: UIDocument
    
    override func contents(forType typeName: String) throws -> Any {
        
        return text.data(using: .utf8)!
    }
    
    override func load(fromContents contents: Any, ofType typeName: String?) throws {
        
        text = String(data: contents as! Data, encoding: .utf8)
    }
    
    override func save(to url: URL, for saveOperation: UIDocumentSaveOperation, completionHandler: ((Bool) -> Void)? = nil) {
        
        if saveOperation == .forCreating {
            text = "Hello handsome!"
        }
        
        super.save(to: url, for: saveOperation, completionHandler: completionHandler)
    }
}
