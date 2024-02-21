Learning outcomes in the Persistence module
URLCache as a caching/persistence alternative (pros and cons)
Depicting an architecture diagram of implicitly coupled Networking and Caching modules
Improving the test suite integrity by eliminating shared caching artifacts across test executions
Minimize risk by reviewing, refining and expanding the requirements iteratively
The importance of enhancing domain knowledge with consistent and clear cross-team communication
Advantages of iterative design over big upfront decision making
Decoupling business logic encapsulated in use cases from framework details
Test-driving and discovering collaborator interfaces without abstracting too early
Enriching test coverage by asserting the presence, the order, and values of method invocations
Disciplined application of the Interface Segregation and Single Responsibility Principles
Controlling the current date/time during tests
Checking expected behavior after deallocation
Identifying highly coupled modules with a visual representation of dependencies
Visualizing and solving dependency bottlenecks
Data transfer model representations for achieving modularity
Decentralizing components to develop and deploy parts of the system in parallel
The return on investment (ROI) of refactoring as a result of disciplined decoupling techniques
A Swifty way of translating models with Array type constraint extensions
Identifying coincidental duplication while respecting the DRY (Don’t Repeat Yourself) principle
Performing calendrical calculations correctly
Creating a simple DSL (Domain Specific Language) to decouple tests from implementation details
Increasing test coverage and reducing the probability of error by triangulating data points
Test-driving cache invalidation
Identifying bloated requirements
Identifying bloated code with the Command–Query Separation principle
Separating queries and side-effects by following the Command-Query Separation principle
Choosing between enum switch strategies: Explicit Cases vs. default vs. @unknown default
Producing a reliable codebase history (always in a working state)
Identifying Application-specific vs. Application-agnostic logic
Application-specific vs. Application-agnostic vs. Framework (Infrastructure) Logic
Entities vs. Value objects
Designing side-effect free (deterministic) core business rules
Establishing Functional Core, Imperative Shell
Promoting reusability and reducing cost, duplication, and defects with single sources of truth
The anatomy of Dependency Inversion (High-level, Low-level, and Boundary components)
Specs as Contracts
Proactively avoiding bugs caused by side-effects in multithreaded environments
Documenting infrastructure requirements with an Inbox checklist
Encoding and decoding models with Codable
Persisting model data to disk
Retrieving model data from disk
Test-driving infrastructure components in integration with real frameworks instead of mocks
Preventing hard-to-debug test issues in stateful components by cleaning up the system state before and after test executions
Preventing hidden-coupling implications of cross-boundary Codable requirements
Improving testability, maintainability, and reusability by moving from implicit hardcoded data to explicit data injection
Using xcodebuild to measure test times and discover potential overheads
Codebase health analysis
Turning async code into sync for expressiveness and readability in tests
Eliminating hard-to-read nested code (arrow-shaped code)
Monitoring the impact of refactoring with quantitative analysis
Improving test code by providing better names & making dependencies explicit
Designing and testing thread-safe components with DispatchQueue
Differences between serial and concurrent dispatch queues
Avoiding threading race conditions (e.g., data corruption/crashes)
Thread-safe(r) value types
Measuring test time overheads
Forming good abstractions by following the Liskov Substitution and Interface Segregation principles
Protocol vs. Class inheritance
Composite Reuse Principle (aka “Prefer composition over inheritance”)
Extracting reusable test specs to facilitate the correct/expected implementation of protocols
Using Swift’s protocol inheritance, extensions, composition, and conditional conformance to create clean & reusable abstractions
Creating explicit and straightforward test contexts
Core Data overview, implementation, concurrency model, trade-offs, modeling, and testing techniques
Implementing reusable protocol specs
Unit/Isolated vs. Integration Tests: pros/cons, performance, complexity, and how to make the most out of both.
Achieving a healthy distribution of testing strategies (the ideal testing pyramid).
