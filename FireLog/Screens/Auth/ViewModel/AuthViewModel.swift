//
//  AuthViewModel.swift
//  FireLog
//
//  Created by Ritik Karma on 10/10/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

final class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?  //Firebase user
    @Published var currentUser: User?   //Created by us user
    @Published var isError: Bool = false
    private let auth = Auth.auth()
    private let firestore = Firestore.firestore()
    
    init(){}
    
    
    
}
