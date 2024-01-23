### BLoC Core Concepts:

1. **Stream:**
   - Foundation of BLoC.
   - Transports data asynchronously.
   - Keywords: `async`, `await`, `yield`.

2. **Cubit & BLoC:**
   - Cubit is a minimal version of a BLoC, based on UI functions.
   - BLoC is more advanced, emitting both a stream of states and a stream of events.
   - Use Cubit for simpler UI updates; BLoC for complex components.

3. **When to use Cubit or BLoC:**
   - Manage CRUD events and update UI.
   - Handle poor or no internet connection.

4. **Flutter Widgets in BLoC:**
   - `BlocProvider`: Provides a single instance of a BLoC to the subtree below it.
   - `BlocBuilder`: Rebuilds the UI when a new state is emitted.
   - `BlocListener`: Executes a function once per state (excluding the initial state).
   - `BlocConsumer`: Combines `BlocBuilder` and `BlocListener`.
   - `RepositoryProvider`: Provides a unique instance of a repository.

### Bloc Architecture:

1. **Three Main Layers:**
   - UI (Presentation Layer)
   - BLoC (Business Logic Layer)
   - Data Layer (Models, Data Providers, Repository)

2. **Data Layer:**
   - Start with building models; they are independent and generic.
   - Data providers provide raw data to their accessor.
   - Repository is a wrapper around one or more data providers, connecting BLoC to the data layer.

### Testing:

1. **Advantages of Testing:**
   - Layer of security.
   - Identifies issues early.
   - Ensures correct behavior.

2. **Bloc Testing:**
   - Use `bloc_test` package for testing BLoCs.
   - Functions: `group`, `setUp`, `tearDown`, `test`, `blocTest`.
   - Equatable package for overriding `==` and `hashCode`.

### BLoC Access:

- `BlocProvider`: Provides a single instance of a bloc to the subtree below it.
- **Local Access:** Providing an instance of bloc/cubit to a single screen.
- **Route Access:** Providing an instance of bloc/cubit to multiple screens.

### Recommendations:

- Start with creating a cubit and then expand it to a bloc.
- Build your app starting from the data layer and models.

### Packages Mentioned:

- `equatable`: Package for comparing objects in Dart.
- `bloc_test`: Package for testing BLoC architecture.
- `test`: Package for general testing in Dart.

### Flutter Routing:

- Three routing options: Anonymous Routing, Named Routing, Generated Routing.
- Example of navigating with routes using `Navigator` and `MaterialPageRoute`.
