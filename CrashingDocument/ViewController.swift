//
//  ViewController.swift
//  CrashingDocument
//
//  Created by Stanislav Smida on 07/12/2016.
//
//

import UIKit

class ViewController: UIViewController {
    
    var document: MyDocument!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.appendingPathComponent(UUID().uuidString).resolvingSymlinksInPath()
        document = MyDocument(fileURL: url)
        document.save(to: document.fileURL, for: .forCreating, completionHandler: { (saveSuccess) in
            print(saveSuccess)
            
        })
    }
}
