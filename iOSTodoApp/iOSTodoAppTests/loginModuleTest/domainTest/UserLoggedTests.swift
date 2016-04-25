//
//  UserLoggedTests.swift
//  iOSTodoApp
//
//  Created by daferpi on 25/04/16.
//  Copyright © 2016 daferpi. All rights reserved.
//

import XCTest
@testable import iOSTodoApp

class UserLoggedTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testUserLoggedCreation() {
        let userLogged:UserLogged = UserLogged(userName: "abel", password:"test1");
        XCTAssertNotNil(userLogged)
        XCTAssertEqual(userLogged.userName, "abel")
        XCTAssertEqual(userLogged.password, "test1")
    }
    
}
