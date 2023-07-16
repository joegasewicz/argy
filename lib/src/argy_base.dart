// TODO: Put public facing types in this file.

/// Manage command line arguments
class Argy {
  /// Argy requires a named parameter of [arguments] which
  /// are the passed in cli arguments.
  List<String> arguments;

  /// [parsedArgs] is map of the key values of argument names & values.
  List<Map<String, String>> parsedArgs = [];

  /// Stored arguments are added to [storedArgs] as a
  /// list of maps.
  List<Map<String, String>> storedArgs = [];

  Argy({required this.arguments});

  /// Parses all command line arguments
  ///
  /// Calling the [parse] method
  /// ```dart
  /// var argy = Argy(arguments: myArgs);
  /// argy.parse();
  /// ```
  void parse() {
    for (var i = 0; i < arguments.length; i + 2) {
      parsedArgs.add({
        arguments[i]: arguments[i + 1],
      });
    }
  }

  /// Getter for [parsedArgs]
  List<Map<String, String>> getAll() {
    return parsedArgs;
  }

  /// Gets an argument by value
  ///
  /// The [name] parameter is the name of the argument e.g. '--file'
  /// without the '--' prefix, for example:
  /// ```dart
  /// var argy = Argy(arguments: myArgs);
  /// argy.get('file'); // gets value of '--file' argument
  /// ```
  String? get(String name) {
    for (final argMap in parsedArgs) {
      if (argMap.containsKey(name)) {
        return argMap[name];
      }
    }
    return null;
  }

  /// Prints out all cli commands
  ///
  /// ```dart
  /// var argy = Argy(arguments: myArgs);
  /// argy.help();
  /// ```
  void help() {
    var out = """Example usage:

    """;
    print(out);
  }

  /// Add arguments to [storedArgs].
  ///
  /// If the value of [arg] is 'file', then the argument will be
  /// displayed as '--file'.
  /// ```dart
  /// argy.add('file', 'The file you want to work with');
  /// ```
  void add(String arg, String description) {

    storedArgs.add({
      arg: description,
    });
  }
}
