//
//  Document.swift
//  RaiseMan
//
//  Created by 村上幸雄 on 2017/02/09.
//  Copyright © 2017年 Bitz Co., Ltd. All rights reserved.
//

import Cocoa

class Person {
}

class Document: NSDocument {
    
    public static let updateKey = NSNotification.Name("updateUI")
    
    private var employees = [Person]()
    private var currentIndex: Int = 0

    override init() {
        super.init()
        // Add your subclass-specific initialization here.
    }

    override class func autosavesInPlace() -> Bool {
        return true
    }

    override func makeWindowControllers() {
        // Returns the Storyboard that contains your Document window.
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        let windowController = storyboard.instantiateController(withIdentifier: "Document Window Controller") as! NSWindowController
        self.addWindowController(windowController)
    }

    override func data(ofType typeName: String) throws -> Data {
        // Insert code here to write your document to data of the specified type. If outError != nil, ensure that you create and set an appropriate error when returning nil.
        // You can also choose to override fileWrapperOfType:error:, writeToURL:ofType:error:, or writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
        throw NSError(domain: NSOSStatusErrorDomain, code: unimpErr, userInfo: nil)
    }

    override func read(from data: Data, ofType typeName: String) throws {
        // Insert code here to read your document from the given data of the specified type. If outError != nil, ensure that you create and set an appropriate error when returning false.
        // You can also choose to override readFromFileWrapper:ofType:error: or readFromURL:ofType:error: instead.
        // If you override either of these, you should also override -isEntireFileLoaded to return false if the contents are lazily loaded.
        throw NSError(domain: NSOSStatusErrorDomain, code: unimpErr, userInfo: nil)
    }

    public func nextEmployee() {
        updateUI()
    }
    
    public func previousEmployee() {
    }
    
    public func deleteEmployee() {
    }
    
    public func newEmployee() {
    }
    
    private func createNewEmployee() {
    }
    
    private func updateEmployee() {
    }
    
    private func updateUI() {
        NotificationCenter.default.post(name: Document.updateKey, object: nil, userInfo: nil)
    }
   
}

