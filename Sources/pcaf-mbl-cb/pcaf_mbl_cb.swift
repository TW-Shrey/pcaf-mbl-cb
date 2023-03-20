import pcaf_mbl_sf_intfc_pkg

public struct CouchbaseManager {
    let authManager: AuthManagerProtocol
    
    init(authManager: AuthManagerProtocol){
        self.authManager = authManager
    }
    
   public func getAccounts() -> [String]{
        return ["Store1","Store2","Store3","Store4"]
    }
}


