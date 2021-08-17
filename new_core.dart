//const String all = "@a";
//const String closest_player = "@p";
//const String entity_selector = "@e";
main(List<String> arguments) {
  print(all());
}

//Third Party https://stackoverflow.com/questions/13731631/creating-function-with-variable-number-of-arguments-or-parameters-in-dart
typedef OnCall = dynamic Function(List arguments);

class VarargsFunction {
  VarargsFunction(this._onCall);

  final OnCall _onCall;

  noSuchMethod(Invocation invocation) {
    if (!invocation.isMethod || invocation.namedArguments.isNotEmpty)
      super.noSuchMethod(invocation);
    final arguments = invocation.positionalArguments;
    return _onCall(arguments);
  }
}

//
String get_selector_parameter_query_string(
    {String advancements,
    String distance,
    String dx,
    String dy,
    String dz,
    String gamemode,
    String level,
    String limit,
    String name,
    String nbt,
    String predicate,
    String scores,
    String sort,
    String tag,
    String team,
    String x,
    String x_rotation,
    String y,
    String y_rotation,
    String z}) {
  return "";
}

String all(
    {String advancements,
    String distance,
    String dx,
    String dy,
    String dz,
    String gamemode,
    String level,
    String limit,
    String name,
    String nbt,
    String predicate,
    String scores,
    String sort,
    String tag,
    String team,
    String x,
    String x_rotation,
    String y,
    String y_rotation,
    String z}) {
  return '''
  @a[${advancements != null ? "advacment={${advancements}}" : ""},${distance != null ? "distance={${advancements}}" : ""}]
  ''';
}

String multiple_scoreboard_objective_enable_all(
    List<String> scoreboard_objective_names) {
  String final_string = "";
  scoreboard_objective_names.forEach((String scoreboard_objective_name) {
    final_string = '''
      ${final_string}
      ${scoreboard_objective_enable_all(scoreboard_objective_name)}
    ''';
  });
  return final_string;
}

String scoreboard_objective_enable_all(scoreboard_objective_name) {
  return scoreboard_objective_enable(all, scoreboard_objective_name);
}

String scoreboard_objective_enable(selector, scoreboard_objective_name) {
  return '''
  execute as ${selector} unless entity @s[scores={${scoreboard_objective_name}=-2147483648..2147483647}] run scoreboard players enable @s ${scoreboard_objective_name}
  ''';
}

String scoreboard_objective_reset_with_proccessing_code(
    scoreboard_objective_name, proccesing_code) {
  return '''
    execute if entity @p[scores={${scoreboard_objective_name}=1..}] as @a[scores={${scoreboard_objective_name}_menu=1..}] run tag @s add reset_${scoreboard_objective_name}
    execute if entity @p[scores={${scoreboard_objective_name}=..1}] as @a[scores={${scoreboard_objective_name}_menu=..1}] run tag @s add reset_${scoreboard_objective_name}
    ${proccesing_code}
    execute if entity @p[tag=${scoreboard_objective_name}] as @a[tag=${scoreboard_objective_name}] run scoreboard players reset @s reset_${scoreboard_objective_name}
    execute if entity @p[tag=${scoreboard_objective_name}] as @a[tag=${scoreboard_objective_name}] run tag @s remove reset_${scoreboard_objective_name}
  ''';
}

String scoreboard_objective_reset(scoreboard_objective_name) {
  return '''
    # Resets should occur at the end of the script
    execute if entity @p[scores={${scoreboard_objective_name}=1..}] as @a[scores={${scoreboard_objective_name}_menu=1..}] run tag @s add reset_${scoreboard_objective_name}
    execute if entity @p[scores={${scoreboard_objective_name}=..1}] as @a[scores={${scoreboard_objective_name}_menu=..1}] run tag @s add reset_${scoreboard_objective_name}
    # IF not then place proccesing code HERE instead. <----- 
    execute if entity @p[tag=${scoreboard_objective_name}] as @a[tag=${scoreboard_objective_name}] run scoreboard players reset @s reset_${scoreboard_objective_name}
    execute if entity @p[tag=${scoreboard_objective_name}] as @a[tag=${scoreboard_objective_name}] run tag @s remove reset_${scoreboard_objective_name}
  ''';
}
