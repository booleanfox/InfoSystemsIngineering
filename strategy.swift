

class Context {

    private var strategy: Strategy

    init(strategy: Strategy) {
        self.strategy = strategy
    }

    func update(strategy: Strategy) {
        self.strategy = strategy
    }

    func doSorting() {
        print("Context: Sorting data using your strategy!")

        let result = strategy.doAlgorithm(["a", "b", "c", "d", "e"])
        print(result.joined(separator: ","))
    }
}

protocol Strategy {

    func doAlgorithm<T: Comparable>(_ data: [T]) -> [T]
}

class StrategyA: Strategy {

    func doAlgorithm<T: Comparable>(_ data: [T]) -> [T] {
        return data.sorted()
    }
}

class StrategyB: Strategy {

    func doAlgorithm<T: Comparable>(_ data: [T]) -> [T] {
        return data.sorted(by: >)
    }
}

class StrategyC: Strategy {

    func doAlgorithm<T: Comparable>(_ data: [T]) -> [T] {
        return data.shuffled()
    }
}

 func test() {
        let context = Context(strategy: StrategyA())
        print("Client: I want normal sorting.")
        context.doSorting()

        print("\nClient: Now i want reverse sorting.")
        context.update(strategy: StrategyB())
        context.doSorting()

        print("\nClient: And now i want to shuffe everything.")
        context.update(strategy: StrategyC())
        context.doSorting()
    }
test()
