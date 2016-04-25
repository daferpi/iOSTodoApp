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
    
    var userLogged:UserLogged!
    
    override func setUp() {
        super.setUp()
        self.userLogged = UserLogged(userName: "abel", password:"test1")
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testUserLoggedCreation() {
        XCTAssertNotNil(userLogged)
        XCTAssertEqual(userLogged.userName, "abel")
        XCTAssertEqual(userLogged.password, "test1")
    }
    
    func testUserValidateCredentialsOk() {
        XCTAssertTrue(self.userLogged.validateCredentials("test1"))
    }
    
    func testUserValidateCredentialsFail() {
        XCTAssertFalse(self.userLogged.validateCredentials("test"))
    }
    
    func testUserValidateCredentialsParameterNil() {
        XCTAssertFalse(self.userLogged.validateCredentials(nil))
    }
    
}
