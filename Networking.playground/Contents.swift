import UIKit
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
func GET(){
let session = URLSession.shared
 let url = URL(string: "https://gist.githubusercontent.com/reinder42/932d7671859959f6363b4d9b4e18bb91/raw/306631d79a5166bb0d86b12ac7d8cc42fecb996e/users.json")!
let task = session.dataTask(with: url) { data, response, error in
    if error != nil{
        print("An Error Occured!")
        return
    }
    guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
        print("Response Error")
        return
    }
    
    guard let mime = response?.mimeType, mime == "text/plain" else {
       print("Wrong MIME Type")
        return
    }
    do{
        let json = try JSONSerialization.jsonObject(with: data!, options: [])
        print(json)
    }catch{
        print(error.localizedDescription)
    }
}
task.resume()
}

func POST(){
    let session = URLSession.shared
    let url = URL(string: "https://example.com/post")!
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    
    let json = [
        "username": "zaphod42",
        "message": "So long, thanks for all the fish!"
    ]
    
    let jsonData = try! JSONSerialization.data(withJSONObject: json, options: [])
    let task = session.uploadTask(with: request, from: jsonData) { data, response, error in
        if let data = data, let dataString = String(data: data, encoding: .utf8){
            print(dataString)
        }
        
        if let httpResponse = response as? HTTPURLResponse {
            print(httpResponse.statusCode)
        }
        
    }
    task.resume()
}
POST()
