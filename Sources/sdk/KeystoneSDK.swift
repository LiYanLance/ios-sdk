import URRegistryFFI
import JavaScriptCore


public class KeystoneSDK {
    func parseSolSignature(cbor_hex: String) -> SolSignature {

        var err = ExternError();
        let err_ptr: UnsafeMutablePointer<ExternError> = UnsafeMutablePointer(&err)
//        let res = get_result(err_ptr)
        
        let sol_signature = parse_sol_signature(err_ptr, cbor_hex)
        let sol_signature_json = String(cString: sol_signature!).data(using: .utf8)!
        
        let decoder = JSONDecoder()
        let solSig = try! decoder.decode(SolSignature.self, from: sol_signature_json)
//        rust_greeting_free(UnsafeMutablePointer(mutating: result))
        return solSig
    }
}
