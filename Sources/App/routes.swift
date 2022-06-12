import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "develop in 🇩🇪"
    }

    app.get("hallo") { req -> String in
        return "Hallo!!"
    }

    app.get("fibo", ":index") { req -> String in
        let index = req.parameters.get("index")!
        let indexInt = Int(index) ?? 1
        return fibo(until: indexInt)
    }

    func fibo(until index: Int) -> String {
        var results: [Int] = []
        var m = 1
        var n = 1
        for num in 1...index {
            if num == 1 { 
                results.append(m)
            } else if num == 2 {
                results.append(n)
            } else {
                (m,n) = (n, m + n)
                results.append(n)
            }
        }

        return results.reduce("") { "\($0) " + "\($1)" }
    }
}
