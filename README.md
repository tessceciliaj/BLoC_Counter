# State Management Library - Flutter BLoC

## Introduction
- **Design Pattern:** BLoC (Business Logic Component) by Google for separating business logic from the presentation layer.
- **Goals:** Organized, Maintainable, Structured, Scalable.

## Application States
- Different states for each interaction:
  - Show Todo list button pressed: **list loading state**
  - App retrieves todo items successfully: **list loaded state**
  - No internet connection, failed to retrieve data: **list error state**

## BLoC Core Concepts
- **Stream:** Foundation of BLoC, asynchronous data transport.
- **Keywords:** `async`, `await`, `yield`.

## Cubit & BLoC
- **Cubit:** Minimal version of a bloc, based on UI functions.
- **Bloc:** More advanced, emits streams of states and events.
- **When to use:**
  - Manage events and update UI.
  - Poor or no internet connection.
- **Practice Advice:** Start with Cubit and expand to Bloc.

## Flutter Widgets in BLoC
- Every Flutter BLoC concept is a widget.
- **BlocProvider():** Provides a single instance of a bloc to the subtree below it.
  - Lazy creation with `lazy: false`.
  - Automatically closes the bloc.
- **BlocBuilder:** Rebuilds the UI on state changes.
- **BlocListener:** Listens to state changes, called once per state.
- **BlocConsumer():** Combines BlocBuilder and BlocListener.
- **RepositoryProvider():** Provides a unique instance of a repository.

##  Multi-Providers
- 1x BLoC: BlocProvider(), BlocListener(), RepositoryProvider().
- 10x BLoC: MultiBlocProvider(), MultiBlocListener(), MultiRepositoryProvider().

## Widget Examples
```dart
// BlocProvider example
BlocProvider(
  lazy: false,
  create: (BuildContext context) => BlocA(),
  child: WidgetsBelow(),
)

// Accessing bloc in widgets
BlocProvider.of<BlocA>(context);
// or
context.bloc<BlocA>()

// BlocBuilder example
BlocBuilder(
  bloc: yourBloc,
  builder: (context, state) {
    // Your UI code here
  },
)

// BlocListener example
BlocListener(
  bloc: yourBloc,
  listener: (context, state) {
    // Your listener code here
  },
)

// BlocConsumer example
BlocConsumer(
  bloc: yourBloc,
  builder: (context, state) {
    // Your UI code here
  },
  listener: (context, state) {
    // Your listener code here
  },
)

// RepositoryProvider example
RepositoryProvider(
  create: (context) => YourRepository(),
  child: YourWidget(),
)


