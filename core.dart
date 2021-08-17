/* Start Import Libraries */

import 'dart:isolate';
import 'dart:io';
import 'package:objd/core.dart' hide Context;
import 'package:objd/core.dart' as objd show Context;
import 'package:logger/logger.dart';
import 'dart:cli';
import 'dart:io' as dart show File;
import 'package:path/path.dart';
import 'package:numbers_to_words/numbers_to_words.dart';

/* End Import Libraries */
var core_directory = './core_datapack';
/* */
void create_centuralus_project(arguments) {
  return createProject(
      Project(
          name: "../minecraft/world/datapacks/core_datapack/",
          target: "./core_datapack/",
          generate: project_main()),
      arguments);
}

main(List<String> arguments) {
  return create_centuralus_project(arguments);
}

Pack core(String core_name, String core_load_name, String core_tick_name) {
  return Pack(
      name: core_name,
      load: core_load(core_load_name),
      main: core_tick(core_tick_name));
}

File core_load(String core_name) {
  return File('load',
      child: CommandList.str(waitFor(
          dart.File('${core_directory}/data/core/functions/load.mcfunction')
              .readAsString())));
}

File core_tick(String core_name) {
  return File('tick',
      child: CommandList.str(waitFor(
          dart.File('${core_directory}/data/core/functions/tick.mcfunction')
              .readAsString())));
}

bool project_map_validator(Map project_map) {
  return project_map.containsKey("core");
}

bool project_map_has_plugins(Map project_map) {
  return project_map.containsKey("plugins");
}

Future<String> common(Future<String> this_common) {
  return this_common;
}

Future<String> ban_player_list() async {
  return await Future.forEach([], (num) async {}) | "";
}

String ban_player() {
  String final_string = "";

  String current_string = '#';
  String command = "";

  for (var index = 2; index <= 71; index++) {
    command =
        'execute if entity @p[team=helper,scores={ban=${index}}] as @p[scores={unique=${index}},tag=!ban] run tag @s add ban';
    current_string = '${current_string}\n${command}';
  }

  final_string = current_string;
  return final_string;
}

String kick_player() {
  String final_string = "";

  String current_string = '#';
  String command = "";

  for (var index = 2; index <= 71; index++) {
    command =
        'execute if entity @p[team=helper,scores={kick=${index}}] as @p[scores={unique=${index}},tag=!kick] run tag @s add kick';
    current_string = '${current_string}\n${command}';
  }

  final_string = current_string;
  return final_string;
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

String player_chat_menu(String line) {
  String final_string = "";
  return final_string;
}

String menu(String menu_name) {
  String final_string = "";
  String menu_name_to_uppercase = menu_name.capitalize();
  String current_string =
      "execute if entity @p[team=helper,tag=${menu_name}_menu] as @a[team=helper,tag=${menu_name}_menu] run tellraw @s [";

  for (var index = 2; index <= 71; index++) {
    String tellraw =
        '''{"selector":"@p[scores={unique=${index}}]","clickEvent":{"action":"run_command","value":"/trigger ${menu_name} set ${index}"},"hoverEvent":{"action":"show_text","contents":[{"text":"${menu_name_to_uppercase} "},{"selector":"@p[scores={unique=${index}}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={unique=${index}}]","objective":"unique"}}]}}''';
    if (index == 2) {
      current_string = '${current_string}${tellraw}';
    } else if (index > 2 && index < 71) {
      current_string = '${current_string},${tellraw}';
    } else if (index == 71) {
      current_string = '${current_string},${tellraw}]';
    } else {}
  }

  final_string = "${current_string}";
  return final_string;
}

const String all = "@a";
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

String kick_menu() {
  return menu("kick");
}

String ban_menu() {
  return menu("ban");
}

String spawn_to_creative() {
  String output =
      'execute if entity @p[tag=spawn_to_creative] as @a[tag=spawn_to_creative] unless entity @p[scores={temporary_timer=0..}] run scoreboard objectives add temporary_timer minecraft.custom:minecraft.play_one_minute "Temporary Timer"\n';
  String temp_command = "";

  var size = 24;

  var increment = size;

  var x_max = 144;
  var y_max = 144;
  var z_max = -1632;

  var wait_time = 240;
  var current_time = 0;

  //temp_command = 'execute if entity @p[tag=copy_to_creative] as @a[tag=copy_to_creative]';
  var x = -144;
  for (x; x < x_max; x = x + increment) {
    var z = -1872;
    for (z; z < z_max; z = z + increment) {
      var y = 48;
      for (y; y < y_max; y = y + increment) {
        temp_command =
            'execute if entity @p[tag=spawn_to_creative,scores={temporary_timer=${(current_time - 20).round()}}] as @p[tag=spawn_to_creative,scores={temporary_timer=${(current_time - 20).round()}}] in minecraft:overworld run tp ${x} ${y + 2} ${z}';
        output = '${output}\n${temp_command}';
        temp_command =
            'execute if entity @p[tag=spawn_to_creative,scores={temporary_timer=${current_time}}] as @p[tag=spawn_to_creative,scores={temporary_timer=${current_time}}] in minecraft:overworld run setblock ${x} ${y} ${z} structure_block[mode=save]{name:"spawn_to_creative",sizeX:${size},sizeY:${size},sizeZ:${size},rotation:"NONE",mirror:"NONE",mode:"SAVE",ignoreEntities:0b}';
        output = '${output}\n${temp_command}';
        temp_command =
            'execute if entity @p[tag=spawn_to_creative,scores={temporary_timer=${current_time}}] as @p[tag=spawn_to_creative,scores={temporary_timer=${current_time}}] in minecraft:overworld run setblock ${x} ${y + -1} ${z} redstone_block';
        output = '${output}\n${temp_command}';
        temp_command =
            'execute if entity @p[tag=spawn_to_creative,scores={temporary_timer=${current_time + 20}}] as @p[tag=spawn_to_creative,scores={temporary_timer=${current_time + 20}}] in minecraft:overworld positioned ${x} ${y} ${z} run fill ~ ~ ~ ~ ~ ~ air replace structure_block';
        output = '${output}\n${temp_command}';
        temp_command =
            'execute if entity @p[tag=spawn_to_creative,scores={temporary_timer=${current_time + 20}}] as @p[tag=spawn_to_creative,scores={temporary_timer=${current_time + 20}}] in minecraft:overworld positioned ${x} ${y - 1} ${z} run fill ~ ~ ~ ~ ~ ~ air replace redstone_block';
        output = '${output}\n${temp_command}';

        if (y == 48) {
          temp_command =
              'execute if entity @p[tag=spawn_to_creative,scores={temporary_timer=${(current_time - 20).round()}}] as @p[tag=spawn_to_creative,scores={temporary_timer=${(current_time - 20).round()}}] in minecraft:creative run fill ${x} ${y - 1} ${z} ${x + size} ${y - 1} ${z + size} bedrock replace air';
          output = '${output}\n${temp_command}';
        }
        temp_command =
            'execute if entity @p[tag=spawn_to_creative,scores={temporary_timer=${(current_time + (wait_time / 2) - 20).round()}}] as @p[tag=spawn_to_creative,scores={temporary_timer=${(current_time + (wait_time / 2) - 20).round()}}] in minecraft:creative run tp ${x} ${y + 2} ${z}';
        output = '${output}\n${temp_command}';
        temp_command =
            'execute if entity @p[tag=spawn_to_creative,scores={temporary_timer=${(current_time + (wait_time / 2)).round()}}] as @p[tag=spawn_to_creative,scores={temporary_timer=${(current_time + (wait_time / 2)).round()}}] in minecraft:creative run setblock ${x} ${y} ${z} structure_block[mode=load]{name:"spawn_to_creative",sizeX:${size},sizeY:${size},sizeZ:${size},rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b}';
        output = '${output}\n${temp_command}';
        temp_command =
            'execute if entity @p[tag=spawn_to_creative,scores={temporary_timer=${(current_time + (wait_time / 2)).round()}}] as @p[tag=spawn_to_creative,scores={temporary_timer=${(current_time + (wait_time / 2)).round()}}] in minecraft:creative run setblock ${x} ${y + 1} ${z} redstone_block';
        output = '${output}\n${temp_command}';
        temp_command =
            'execute if entity @p[tag=spawn_to_creative,scores={temporary_timer=${(current_time + (wait_time / 2) + 20).round()}}] as @p[tag=spawn_to_creative,scores={temporary_timer=${(current_time + (wait_time / 2) + 20).round()}}] in minecraft:creative positioned ${x} ${y} ${z} run fill ~ ~ ~ ~ ~ ~ air replace structure_block';
        output = '${output}\n${temp_command}';
        temp_command =
            'execute if entity @p[tag=spawn_to_creative,scores={temporary_timer=${(current_time + (wait_time / 2) + 20).round()}}] as @p[tag=spawn_to_creative,scores={temporary_timer=${(current_time + (wait_time / 2) + 20).round()}}] in minecraft:creative positioned ${x} ${y + 1} ${z} run fill ~ ~ ~ ~ ~ ~ air replace redstone_block';
        output = '${output}\n${temp_command}';

        current_time = current_time + wait_time;
      }
    }
  }
  var tag_remove_command =
      'execute if entity @p[tag=spawn_to_creative] as @p[tag=spawn_to_creative,scores={temporary_timer=${current_time}..}] run tag @s remove spawn_to_creative';
  output = '${output}\n${tag_remove_command}';

  return output;
}

For for_of(List<String> commands) {
  List command_list = [];
  commands.forEach((command) {
    command_list.add(command);
  });
  return For.of(command_list);
}

Future<void> eval(String eval) async {
  final uri = Uri.dataFromString(
    '''
    void main() {
      print("Hellooooooo from the other side!");
    }
    ''',
    mimeType: 'application/dart',
  );
  await Isolate.spawnUri(uri, [], null);
}

bool enable_brigadier() {
  print(
      "Brigadier will now be used to parse in the remainder of lines within the file.");
  return true;
}

void validate_file(output) {
  List output_as_list = output.split("\n");
  String previous_line = "";
  String final_line = "";
  bool brigadier_enabled = false;

  output_as_list.forEach((current_line) {
    //print(current_line);
    List current_line_as_list = current_line.split(" ");

    for (var x = 1; x < 10; x++) {}
    if (current_line == "#;brigadier") {
      print("TEST");
    }
    if (current_line.startsWith("#;brigadier")) {
      brigadier_enabled
          ? print("brigadier has already been enabled")
          : brigadier_enabled = enable_brigadier();
    }
    current_line_as_list.forEach((current_line_item) {
      switch (current_line_item) {
        case "data":
          break;
      }
    });
  });
}

String clone_inventory() {
  String final_string = "";

  String current_string = "";
  for (var index = 2; index <= 71; index++) {
    String command =
        'execute if entity @p[team=operator,scores={clone_inventory=${index}}] as @a[team=operator,scores={clone_inventory=${index}}] at @s run data modify block ~ ~ ~ Items set from entity @p[scores={teleport_unique=${index}}] Inventory';
    current_string = "${current_string}\n${command}";
  }

  final_string = current_string;
  return final_string;
}

String view_all_barter() {
  String final_string = "";
  String command = "";

  String new_line = "\\n";
  for (var index = 2; index <= 71; index++) {
    command = '''
  execute if entity @s[scores={unique=${index}}] run tellraw @p[tag=view_all_barter] [{"text":"[ Trade ]","clickEvent":{"action":"run_command","value":"/trigger trade set ${index}"},"color":"#e2c4f1","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to trade with "},{"selector":"@s[scores={unique=${index}}]"}]}}," ",{"nbt":"playerdb.player.info.name","storage":"rx:io","color":"aqua"}," ~ Count:",{"nbt":"playerdb.player.data.centural.core.barter.offer.Count","storage":"rx:io","color":"light_purple"}," Item:",{"nbt":"playerdb.player.data.centural.core.barter.offer.id","storage":"rx:io","color":"light_purple"},"${new_line}","Extra:",{"nbt":"playerdb.player.data.centural.core.barter.offer.tag","storage":"rx:io","color":"light_purple"}]
  ''';
    final_string = '''
    ${final_string}
    ${command}
  ''';
  }
  return final_string;
}

String operator_menu() {
  String final_string = "";
  String command =
      'execute if entity @p[team=operator,scores={clone_inventory=1}] as @a[team=operator,scores={clone_inventory=1}] run tellraw @s';

  String current_string = "";
  for (var index = 2; index <= 71; index++) {
    String raw_operator_menu =
        '{"selector":"@p[scores={teleport_unique=${index}}]","clickEvent":{"action":"run_command","value":"/trigger clone_inventory set ${index}"},"hoverEvent":{"action":"show_text","contents":[{"text":"Clone Inventory of "},{"selector":"@p[scores={teleport_unique=${index}}]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=${index}}]","objective":"teleport_unique"}}]}}';

    current_string = index == 2
        ? '${raw_operator_menu}'
        : '${current_string},${raw_operator_menu}';
  }

  final_string = '${command} [${current_string}]';
  return final_string;
}

var fix_count = 0; //
var append_files_array = [];

File load_file(String project_name, String file_name) {
  String output = waitFor(dart.File(
          '${core_directory}/data/${project_name}/functions/${file_name}.mcfunction')
      .readAsString());
  validate_file(output);

  List output_as_list = output.split("\n");
  String final_line = "";
  output_as_list.forEach((current_line) {
    if (current_line.startsWith("#;view_all_barter")) {
      current_line = view_all_barter();
    }

    if (current_line.startsWith("#;join_team")) {
      for (var index = 2; index <= 71; index++) {
        current_line = '''
      ${current_line}
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=${index}},team=!helper,team=!builder] run team join player_${index}
execute if entity @s[tag=reset_unique,tag=!duplicate_unique,scores={unique=${index}}] run scoreboard players set @s teleport_unique ${index}
''';
      }
    }
    if (current_line.startsWith("#;generate_player_team")) {
      for (var index = 2; index <= 71; index++) {
        current_line = '''
      ${current_line}
      
team add player_${index} ["",{"text":"[✌]","color":"#10B3C9"}]
team modify player_${index} prefix ["",{"text":"✌","color":"#10B3C9","clickEvent":{"action":"run_command","value":"/trigger player_${index}_menu set 1"}}]
scoreboard objectives remove player_${index}_menu
scoreboard objectives add player_${index}_menu trigger ["",""]
      ''';
      }
    }
    if (current_line.startsWith("#;generated_player_menu")) {
      String final_string = "";
      for (var index = 2; index <= 71; index++) {
        current_line = '''
        ${current_line}
        execute if entity @p[team=player_${index}] as @p[team=player_${index}] run function core:player/players/player_${index}/tick
        ''';
        final_string = '''
          execute as @a unless entity @s[scores={player_${index}_menu=-2147483648..2147483647}] run scoreboard players enable @s player_${index}_menu

execute if entity @p[scores={player_${index}_menu=1..}] as @a[scores={player_${index}_menu=1..}] run tag @s add reset_player_${index}_menu

execute if entity @p[scores={player_${index}_menu=1}] as @a[scores={player_${index}_menu=1}] run tag @s add player_${index}_menu

#Start Prefix

#End Prefix🔥 🌊
#["",{"color":"#F7630C","text":"[🔥]","clickEvent":{"action":"run_command","value":"/trigger prefix set 2"}},{"text":"[🌊]","color":"#23CBF6","clickEvent":{"action":"run_command","value":"/trigger prefix set 3"}}]


execute if entity @s[team=player_${index},scores={prefix=2..18}] run scoreboard players operation @s prefix_storage = @s prefix

execute if entity @s[team=player_${index},scores={prefix=2}] run team modify player_${index} prefix ["",{"text":"🔥","color":"#F7630C","clickEvent":{"action":"run_command","value":"/trigger player_${index}_menu set 1"}}]
execute if entity @s[team=player_${index},scores={prefix=3}] run team modify player_${index} prefix ["",{"text":"🌊","color":"#23CBF6","clickEvent":{"action":"run_command","value":"/trigger player_${index}_menu set 1"}}]
execute if entity @s[team=player_${index},scores={prefix=4}] run team modify player_${index} prefix ["",{"text":"🗡","color":"#727273","clickEvent":{"action":"run_command","value":"/trigger player_${index}_menu set 1"}}]
execute if entity @s[team=player_${index},scores={prefix=5}] run team modify player_${index} prefix ["",{"text":"🏹","color":"#722D09","clickEvent":{"action":"run_command","value":"/trigger player_${index}_menu set 1"}}]
execute if entity @s[team=player_${index},scores={prefix=6}] run team modify player_${index} prefix ["",{"text":"🪓","color":"#F03A17","clickEvent":{"action":"run_command","value":"/trigger player_${index}_menu set 1"}}]
execute if entity @s[team=player_${index},scores={prefix=7}] run team modify player_${index} prefix ["",{"text":"🔱","color":"#FFB900","clickEvent":{"action":"run_command","value":"/trigger player_${index}_menu set 1"}}]
execute if entity @s[team=player_${index},scores={prefix=8}] run team modify player_${index} prefix ["",{"text":"🎣","color":"#31D2F7","clickEvent":{"action":"run_command","value":"/trigger player_${index}_menu set 1"}}]
execute if entity @s[team=player_${index},scores={prefix=9}] run team modify player_${index} prefix ["",{"text":"🧪","color":"#00B294","clickEvent":{"action":"run_command","value":"/trigger player_${index}_menu set 1"}}]
execute if entity @s[team=player_${index},scores={prefix=10}] run team modify player_${index} prefix ["",{"text":"⛄","color":"#FFFFFF","clickEvent":{"action":"run_command","value":"/trigger player_${index}_menu set 1"}}]
execute if entity @s[team=player_${index},scores={prefix=11}] run team modify player_${index} prefix ["",{"text":"⚡","color":"#FFC83D","clickEvent":{"action":"run_command","value":"/trigger player_${index}_menu set 1"}}]
execute if entity @s[team=player_${index},scores={prefix=12}] run team modify player_${index} prefix ["",{"text":"⛏","color":"#0F0F0F","clickEvent":{"action":"run_command","value":"/trigger player_${index}_menu set 1"}}]
execute if entity @s[team=player_${index},scores={prefix=13}] run team modify player_${index} prefix ["",{"text":"❄","color":"#FFFFFF","clickEvent":{"action":"run_command","value":"/trigger player_${index}_menu set 1"}}]
execute if entity @s[team=player_${index},scores={prefix=14}] run team modify player_${index} prefix ["",{"text":"❤","color":"#F03A17","clickEvent":{"action":"run_command","value":"/trigger player_${index}_menu set 1"}}]
execute if entity @s[team=player_${index},scores={prefix=15}] run team modify player_${index} prefix ["",{"text":"⚓","color":"#525252","clickEvent":{"action":"run_command","value":"/trigger player_${index}_menu set 1"}}]
execute if entity @s[team=player_${index},scores={prefix=16}] run team modify player_${index} prefix ["",{"text":"⛨","color":"#F8F9FA","clickEvent":{"action":"run_command","value":"/trigger player_${index}_menu set 1"}}]
execute if entity @s[team=player_${index},scores={prefix=17}] run team modify player_${index} prefix ["",{"text":"☔","color":"#886CE4","clickEvent":{"action":"run_command","value":"/trigger player_${index}_menu set 1"}}]
execute if entity @s[team=player_${index},scores={prefix=18}] run team modify player_${index} prefix ["",{"text":"❦","color":"#149414","clickEvent":{"action":"run_command","value":"/trigger player_${index}_menu set 1"}}]

#["",{"color":"#F7630C","text":"[🔥]","clickEvent":{"action":"run_command","value":"/trigger prefix set 2"}},{"text":"[🌊]","color":"#23CBF6","clickEvent":{"action":"run_command","value":"/trigger prefix set 3"}},{"text":"[🗡]","color":"#727273","clickEvent":{"action":"run_command","value":"/trigger prefix set 4"}},{"text":"[🏹]","color":"#722D09","clickEvent":{"action":"run_command","value":"/trigger prefix set 5"}},{"text":"[🪓]","color":"#F03A17","clickEvent":{"action":"run_command","value":"/trigger prefix set 6"}},{"text":"[🔱]","color":"#FFB900","clickEvent":{"action":"run_command","value":"/trigger prefix set 7"}},{"text":"[🎣]","color":"#31D2F7","clickEvent":{"action":"run_command","value":"/trigger prefix set 8"}},{"text":"[🧪]","color":"#00B294","clickEvent":{"action":"run_command","value":"/trigger prefix set 9"}},{"text":"[⛄]","color":"#FFFFFF","clickEvent":{"action":"run_command","value":"/trigger prefix set 10"}},{"text":"[⚡]","color":"#FFC83D","clickEvent":{"action":"run_command","value":"/trigger prefix set 11"}},{"text":"[⛏]","color":"#000000","clickEvent":{"action":"run_command","value":"/trigger prefix set 12"}},{"text":"[❄]","color":"#FFFFFF","clickEvent":{"action":"run_command","value":"/trigger prefix set 13"}},{"text":"[❤]","color":"#F03A17","clickEvent":{"action":"run_command","value":"/trigger prefix set 14"}},{"text":"[⚓]","color":"#525252","clickEvent":{"action":"run_command","value":"/trigger prefix set 15"}},{"text":"[⛨]","color":"#F8F9FA","clickEvent":{"action":"run_command","value":"/trigger prefix set 16"}},{"text":"[☔]","color":"#886CE4","clickEvent":{"action":"run_command","value":"/trigger prefix set 17"}},{"text":"[❦]","color":"#149414","clickEvent":{"action":"run_command","value":"/trigger prefix set 18"}}]



execute if entity @s[scores={team_color=2}] run team modify player_${index} color aqua
execute if entity @s[scores={team_color=3}] run team modify player_${index} color black
execute if entity @s[scores={team_color=4}] run team modify player_${index} color blue
execute if entity @s[scores={team_color=5}] run team modify player_${index} color dark_aqua
execute if entity @s[scores={team_color=6}] run team modify player_${index} color dark_blue
execute if entity @s[scores={team_color=7}] run team modify player_${index} color dark_gray
execute if entity @s[scores={team_color=8}] run team modify player_${index} color dark_green
execute if entity @s[scores={team_color=9}] run team modify player_${index} color dark_purple
execute if entity @s[scores={team_color=10}] run team modify player_${index} color dark_red
execute if entity @s[scores={team_color=11}] run team modify player_${index} color gold
execute if entity @s[scores={team_color=12}] run team modify player_${index} color gray
execute if entity @s[scores={team_color=13}] run team modify player_${index} color green
execute if entity @s[scores={team_color=14}] run team modify player_${index} color light_purple
execute if entity @s[scores={team_color=15}] run team modify player_${index} color red
execute if entity @s[scores={team_color=16}] run team modify player_${index} color reset
execute if entity @s[scores={team_color=17}] run team modify player_${index} color yellow



#
execute if entity @p[tag=player_${index}_menu,team=player_${index}] as @a[tag=player_${index}_menu,team=player_${index}] run tellraw @s ["",{"text":"Personal Menu"}]

execute if entity @p[tag=player_${index}_menu,team=player_${index}] as @a[tag=player_${index}_menu,team=player_${index}] run function core:player/players/player_${index}/personal_menu
#


execute if entity @p[tag=player_${index}_menu,team=!player_${index}] as @a[tag=player_${index}_menu,team=!player_${index}] run tellraw @s ["",{"text":"[ Teleport To ","color":"#10B3C9","clickEvent":{"action":"run_command","value":"/trigger teleport set ${index}"}},{"selector":"@p[scores={teleport_unique=${index}}]","clickEvent":{"action":"run_command","value":"/trigger teleport set ${index}"}},{"text":" ]","color":"#10B3C9","clickEvent":{"action":"run_command","value":"/trigger teleport set ${index}"}}]




execute if entity @p[tag=player_${index}_menu] as @a[tag=player_${index}_menu] run tag @s remove player_${index}_menu

execute if entity @p[tag=reset_player_${index}_menu] as @a[tag=reset_player_${index}_menu] run scoreboard players reset @s player_${index}_menu
execute if entity @p[tag=reset_player_${index}_menu] as @a[tag=reset_player_${index}_menu] run tag @s remove reset_player_${index}_menu
        
        
        
        
        
        
        ''';
        append_files_array.add(File("player/players/player_${index}/tick",
            child: CommandList.str(final_string)));

        final_string = '''

execute if entity @s[tag=!personal_menu_show_symbol,tag=!personal_menu_show_text] run tag @s add personal_menu_show_text
execute if entity @s[tag=!personal_menu_show_symbol,tag=personal_menu_show_text] run function core:player/players/player_${index}/personal_menu_show_text
execute if entity @s[tag=personal_menu_show_symbol,tag=!personal_menu_show_text] run function core:player/players/player_${index}/personal_menu_show_symbol



        ''';
        append_files_array.add(File(
            "player/players/player_${index}/personal_menu",
            child: CommandList.str(final_string)));

        String new_line = "\\n";
        final_string = '''


scoreboard objectives add temp_count dummy
scoreboard players set @s temp_count 0

team add spawn_text [{"text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
team modify spawn_text prefix ["",{"color":"aqua","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_aqua] run team modify spawn_text prefix ["",{"color":"aqua","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_black] run team modify spawn_text prefix ["",{"color":"black","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_blue] run team modify spawn_text prefix ["",{"color":"blue","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_dark_aqua] run team modify spawn_text prefix ["",{"color":"dark_aqua","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_dark_blue] run team modify spawn_text prefix ["",{"color":"dark_blue","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_dark_gray] run team modify spawn_text prefix ["",{"color":"dark_gray","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_dark_green] run team modify spawn_text prefix ["",{"color":"dark_green","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_dark_purple] run team modify spawn_text prefix ["",{"color":"dark_purple","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_dark_red] run team modify spawn_text prefix ["",{"color":"dark_red","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_gold] run team modify spawn_text prefix ["",{"color":"gold","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_gray] run team modify spawn_text prefix ["",{"color":"gray","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_green] run team modify spawn_text prefix ["",{"color":"green","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_light_purple] run team modify spawn_text prefix ["",{"color":"light_purple","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_red] run team modify spawn_text prefix ["",{"color":"red","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_white] run team modify spawn_text prefix ["",{"color":"white","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_yellow] run team modify spawn_text prefix ["",{"color":"yellow","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
team add wild_text [{"text":"[Wild]","clickEvent":{"action":"run_command","value":"/trigger wild set 2"}}]
team modify wild_text prefix ["",{"text":"[Wild]","clickEvent":{"action":"run_command","value":"/trigger wild set 2"}}]
team add teleport_text [{"text":"[Teleport]","clickEvent":{"action":"run_command","value":"/trigger teleport set 1"}}]
team modify teleport_text prefix ["",{"text":"[Teleport]","clickEvent":{"action":"run_command","value":"/trigger teleport set 1"}}]
team add set_return_text [{"text":"[Set Return]","clickEvent":{"action":"run_command","value":"/trigger set_return set 1"}}]
team modify set_return_text prefix ["",{"text":"[Set Return]","clickEvent":{"action":"run_command","value":"/trigger set_return set 1"}}]
team add return_text [{"text":"[Return]","clickEvent":{"action":"run_command","value":"/trigger return set 1"}}]
team modify return_text prefix ["",{"text":"[Return]","clickEvent":{"action":"run_command","value":"/trigger return set 1"}}]

team add set_home_text [{"text":"[Set Home]","clickEvent":{"action":"run_command","value":"/trigger set_home set 1"}}]
team modify set_home_text prefix ["",{"text":"[Set Home]","clickEvent":{"action":"run_command","value":"/trigger set_home set 1"}}]
team add home_text [{"text":"[Home]","clickEvent":{"action":"run_command","value":"/trigger home set 1"}}]
team modify home_text prefix ["",{"text":"[Home]","clickEvent":{"action":"run_command","value":"/trigger home set 1"}}]

team add settings_text [{"text":"[Settings]","clickEvent":{"action":"run_command","value":"/trigger settings set 1"}}]
team modify settings_text prefix ["",{"text":"[Settings]","clickEvent":{"action":"run_command","value":"/trigger settings_text set 1"}}]

execute if entity @s[team=player_${index},tag=personal_menu_show_spawn] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Team:"spawn_text",Tags:["personal_menu_show_spawn"],CustomName:'{"text":""}'}
execute if entity @s[team=player_${index},tag=personal_menu_show_spawn] run scoreboard players add @s temp_count 5

execute if entity @s[team=player_${index},tag=personal_menu_show_wild] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Team:"wild_text",Tags:["personal_menu_show_wild"],CustomName:'{"text":""}'}
execute if entity @s[team=player_${index},tag=personal_menu_show_wild] run scoreboard players add @s temp_count 3

execute if entity @s[team=player_${index},tag=personal_menu_show_teleport] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Team:"teleport_text",Tags:["personal_menu_show_teleport"],CustomName:'{"text":""}'}
execute if entity @s[team=player_${index},tag=personal_menu_show_teleport] run scoreboard players add @s temp_count 7

execute if entity @s[team=player_${index},tag=personal_menu_show_set_return] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Team:"set_return_text",Tags:["personal_menu_show_set_return"],CustomName:'{"text":""}'}
execute if entity @s[team=player_${index},tag=personal_menu_show_set_return] run scoreboard players add @s temp_count 9

execute if entity @s[team=player_${index},tag=personal_menu_show_return] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Team:"return_text",Tags:["personal_menu_show_return"],CustomName:'{"text":""}'}
execute if entity @s[team=player_${index},tag=personal_menu_show_return] run scoreboard players add @s temp_count 5

execute if entity @s[team=player_${index},tag=personal_menu_show_set_home] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Team:"set_home_text",Tags:["personal_menu_show_set_home"],CustomName:'{"text":""}'}
execute if entity @s[team=player_${index},tag=personal_menu_show_set_home] run scoreboard players add @s temp_count 7

execute if entity @s[team=player_${index},tag=personal_menu_show_home] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Team:"home_text",Tags:["personal_menu_show_home"],CustomName:'{"text":""}'}
execute if entity @s[team=player_${index},tag=personal_menu_show_home] run scoreboard players add @s temp_count 7




execute if entity @s[team=player_${index}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Team:"settings_text",Tags:["personal_menu_show_settings"],CustomName:'{"text":""}'}


execute at @s run tellraw @s[team=player_${index},scores={temp_count=0..33}] [{"selector":"@e[tag=personal_menu_show_spawn,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_wild,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_teleport,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_set_return,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_return,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_set_home,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_home,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_settings,type=armor_stand,limit=1,distance=..1]"}]
execute at @s run tellraw @s[team=player_${index},scores={temp_count=34..}] [{"selector":"@e[tag=personal_menu_show_spawn,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_wild,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_teleport,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_set_return,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_return,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_set_home,type=armor_stand,limit=1,distance=..1]"},"${new_line}",{"selector":"@e[tag=personal_menu_show_home,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_settings,type=armor_stand,limit=1,distance=..1]"}]

team remove spawn_text
team remove wild_text
execute at @s run kill @e[tag=personal_menu_show_spawn,type=armor_stand]
execute at @s run kill @e[tag=personal_menu_show_wild,type=armor_stand]
execute at @s run kill @e[tag=personal_menu_show_teleport,type=armor_stand]
execute at @s run kill @e[tag=personal_menu_show_set_return,type=armor_stand]
execute at @s run kill @e[tag=personal_menu_show_return,type=armor_stand]
execute at @s run kill @e[tag=personal_menu_show_set_home,type=armor_stand]
execute at @s run kill @e[tag=personal_menu_show_home,type=armor_stand]
execute at @s run kill @e[tag=personal_menu_show_settings,type=armor_stand]
scoreboard objectives remove temp_count
#execute at @s run kill @e[tag=selector,type=armor_stand]
        ''';
        append_files_array.add(File(
            "player/players/player_${index}/personal_menu_show_text",
            child: CommandList.str(final_string)));

        append_files_array.add(File(
            "player/players/player_${index}/personal_menu_show_symbol",
            child: CommandList.str(final_string)));
      }
    }
    if (current_line.startsWith('#;reset_offer')) {
      for (var index = 2; index <= 71; index++) {
        String index_as_word =
            NumberToWords.convert(index, "en").trim().replaceAll(" ", "_");
        final_line = '''${final_line}
execute if entity @p[tag=reset_offer_${index_as_word}] as @a[tag=reset_offer_${index_as_word}] run kill @e[tag=slot_${index_as_word},type=villager]
execute if entity @p[tag=reset_offer_${index_as_word}] as @a[tag=reset_offer_${index_as_word}] run tag @s add reset_trade
execute if entity @p[tag=reset_offer_${index_as_word}] as @a[tag=reset_offer_${index_as_word}] run tag @s remove send_offer_${index_as_word}
execute if entity @p[tag=reset_offer_${index_as_word}] as @a[tag=reset_offer_${index_as_word}] run tag @s remove receive_offer_${index_as_word}
execute if entity @p[tag=reset_offer_${index_as_word}] as @a[tag=reset_offer_${index_as_word}] run tag @s remove received_offer_${index_as_word}
execute if entity @p[tag=reset_offer_${index_as_word}] as @a[tag=reset_offer_${index_as_word}] run tag @s remove reset_offer_${index_as_word}
         ''';
      }
    }

    if (current_line.startsWith('#;kick_menu')) {
      current_line = kick_menu();
    }
    if (current_line.startsWith('#;ban_menu')) {
      current_line = ban_menu();
    }

    if (current_line.startsWith('#;kick_player')) {
      current_line = kick_player();
    }
    if (current_line.startsWith('#;ban_player')) {
      current_line = ban_player();
    }

    if (current_line.startsWith('#;handle_decline')) {}
    if (current_line.startsWith('#;trade_slot')) {
      for (var index = 2; index <= 71; index++) {
        String index_as_word =
            NumberToWords.convert(index, "en").trim().replaceAll(" ", "_");
        final_line = '''${final_line}
execute if entity @p[scores={trade=${index}}] as @a[scores={trade=${index}},tag=alpha_tester] run function core:trade/slot/${index_as_word}''';
        String new_line =
            "\\n"; //ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}]
        String this_final_line = '''
execute unless entity @s[tag=send_offer_${index_as_word}] unless entity @p[tag=received_offer_${index_as_word}] unless entity @p[tag=receive_offer_${index_as_word}] unless entity @e[tag=send,tag=slot_${index_as_word},type=villager] at @s anchored eyes positioned ^ ^-1 ^1 run summon villager ~ ~ ~ {Health:1f,NoGravity:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CustomName:'{"text":"Trade in progress","color":"blue"}',HandItems:[{},{}],HandDropChances:[1.000F,1.000F],Tags:["keep","send","slot","slot_${index_as_word}"]}
execute unless entity @s[tag=send_offer_${index_as_word}] unless entity @p[tag=received_offer_${index_as_word}] unless entity @p[tag=receive_offer_${index_as_word}] run item entity @e[tag=send,tag=slot_${index_as_word},limit=1] weapon.mainhand copy entity @s weapon.offhand
execute unless entity @s[tag=send_offer_${index_as_word}] unless entity @p[tag=received_offer_${index_as_word}] unless entity @p[tag=receive_offer_${index_as_word}] run item entity @s weapon.offhand replace air
execute unless entity @s[tag=send_offer_${index_as_word}] unless entity @p[tag=received_offer_${index_as_word}] unless entity @p[tag=receive_offer_${index_as_word}] at @s at @a[distance=1..] if score @p[distance=0] unique = @s trade run tellraw @p[distance=0] [{"selector":"@s"},{"text":" would like to trade ","color":"yellow"},{"nbt":"HandItems[0]","entity":"@e[tag=slot_${index_as_word},tag=send]"},"${new_line}",{"color":"light_purple","text":"To offer an item hold the item in your left hand then Click Here.","clickEvent":{"action":"run_command","value":"/trigger trade set ${index}"}}]
execute unless entity @s[tag=send_offer_${index_as_word}] unless entity @p[tag=received_offer_${index_as_word}] unless entity @p[tag=receive_offer_${index_as_word}] at @s at @a[distance=1..] if score @p[distance=0] unique = @s trade run tag @p[distance=0] add receive_offer_${index_as_word}
execute unless entity @s[tag=send_offer_${index_as_word}] unless entity @s[tag=received_offer_${index_as_word}] run tag @s[tag=!receive_offer_${index_as_word},tag=!send_offer_${index_as_word}] add send_offer_${index_as_word}



execute if entity @s[tag=receive_offer_${index_as_word},tag=!received_offer_${index_as_word}] unless entity @e[tag=receive,tag=slot_${index_as_word},type=villager] at @s anchored eyes positioned ^ ^-1 ^1 run summon villager ~ ~ ~ {Health:1f,NoGravity:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CustomName:'{"text":"Trade in progress"}',HandItems:[{},{}],HandDropChances:[1.000F,1.000F],Tags:["keep","receive","slot","slot_${index_as_word}"]}
#execute if entity @s[tag=receive_offer_${index_as_word},tag=!received_offer_${index_as_word}] run data modify storage core:trade live[${index}].receive set from entity @s Inventory[{Slot:-106b}]
execute if entity @s[tag=receive_offer_${index_as_word},tag=!received_offer_${index_as_word}] run item entity @e[tag=receive,tag=slot_${index_as_word},limit=1] weapon.mainhand copy entity @s weapon.offhand
execute if entity @s[tag=receive_offer_${index_as_word},tag=!received_offer_${index_as_word}] run item entity @s weapon.offhand replace air
execute if entity @s[tag=receive_offer_${index_as_word},tag=!received_offer_${index_as_word}] run tellraw @p[tag=send_offer_${index_as_word}] [{"selector":"@s"},{"text":" would like to trade ","color":"yellow"},{"nbt":"HandItems[0]","entity":"@e[tag=slot_${index_as_word},tag=receive]"}," in exchange for your ",{"nbt":"HandItems[0]","entity":"@e[tag=slot_${index_as_word},tag=send]"},"${new_line}",{"color":"light_purple","text":"To accept click here.","clickEvent":{"action":"run_command","value":"/trigger trade set -1"}}]
execute if entity @s[tag=receive_offer_${index_as_word},tag=!recieved_offer_${index_as_word}] run scoreboard players enable @p[tag=send_offer_${index_as_word}] trade
execute if entity @s[tag=receive_offer_${index_as_word},tag=!received_offer_${index_as_word}] run tag @s add received_offer_${index_as_word}
execute if entity @s[tag=receive_offer_${index_as_word},tag=received_offer_${index_as_word}] run tag @s remove receive_offer_${index_as_word}


execute if entity @p[tag=send_offer_${index_as_word},scores={trade=-1}] if entity @s[tag=received_offer_${index_as_word},scores={trade=${index}}] if entity @e[tag=slot_${index_as_word},tag=send] if entity @e[tag=slot_${index_as_word},tag=receive] run item entity @s weapon.offhand copy entity @e[tag=slot_${index_as_word},tag=send,limit=1] weapon.mainhand

execute if entity @p[tag=send_offer_${index_as_word},scores={trade=-1}] if entity @s[tag=received_offer_${index_as_word},scores={trade=${index}}] unless entity @e[tag=slot_${index_as_word},tag=receive] run tellraw @s {"text":"Trade has been canceled"}
execute if entity @p[tag=send_offer_${index_as_word},scores={trade=-1}] if entity @s[tag=received_offer_${index_as_word},scores={trade=${index}}] unless entity @e[tag=slot_${index_as_word},tag=receive] run tellraw @p[tag=send_offer_${index_as_word},scores={trade=-1}] {"text":"Trade has been canceled"}

execute if entity @p[tag=send_offer_${index_as_word},scores={trade=-1}] if entity @s[tag=received_offer_${index_as_word},scores={trade=${index}}] if entity @e[tag=slot_${index_as_word},tag=send] if entity @e[tag=slot_${index_as_word},tag=receive] run item entity @p[tag=send_offer_${index_as_word},scores={trade=-1}] weapon.offhand copy entity @e[tag=slot_${index_as_word},tag=receive,limit=1] weapon.mainhand

execute if entity @p[tag=send_offer_${index_as_word},scores={trade=-1}] if entity @s[tag=received_offer_${index_as_word},scores={trade=${index}}] unless entity @e[tag=slot_${index_as_word},tag=send] run tellraw @s {"text":"Trade has been canceled"}
execute if entity @p[tag=send_offer_${index_as_word},scores={trade=-1}] if entity @s[tag=received_offer_${index_as_word},scores={trade=${index}}] unless entity @e[tag=slot_${index_as_word},tag=send] run tellraw @p[tag=send_offer_${index_as_word},scores={trade=-1}] {"text":"Trade has been canceled"}

execute if entity @p[tag=send_offer_${index_as_word},scores={trade=-1}] if entity @s[tag=received_offer_${index_as_word},scores={trade=${index}}] if entity @e[tag=slot_${index_as_word},tag=send] if entity @e[tag=slot_${index_as_word},tag=receive] at @s run tp @e[tag=slot_${index_as_word},tag=send,limit=1] 0 0 0
execute if entity @p[tag=send_offer_${index_as_word},scores={trade=-1}] if entity @s[tag=received_offer_${index_as_word},scores={trade=${index}}] if entity @e[tag=slot_${index_as_word},tag=send] if entity @e[tag=slot_${index_as_word},tag=receive] at @p[tag=send_offer_${index_as_word},scores={trade=-1}] run tp @e[tag=slot_${index_as_word},tag=receive,limit=1] 0 0 0

execute if entity @p[tag=send_offer_${index_as_word},scores={trade=-1}] if entity @s[tag=received_offer_${index_as_word},scores={trade=${index}}] if entity @e[tag=slot_${index_as_word},tag=send] if entity @e[tag=slot_${index_as_word},tag=receive] at @p[tag=send_offer_${index_as_word},scores={trade=-1}] run kill @e[tag=slot_${index_as_word},tag=receive,limit=1]
execute if entity @p[tag=send_offer_${index_as_word},scores={trade=-1}] if entity @s[tag=received_offer_${index_as_word},scores={trade=${index}}] if entity @e[tag=slot_${index_as_word},tag=send] if entity @e[tag=slot_${index_as_word},tag=receive] at @s run kill @e[tag=slot_${index_as_word},tag=send,limit=1]


execute if entity @p[tag=send_offer_${index_as_word},scores={trade=-1}] if entity @s[tag=received_offer_${index_as_word},scores={trade=${index}}] run tag @s add reset_offer_${index_as_word}

execute if entity @p[tag=send_offer_${index_as_word},scores={trade=-1}] if entity @s[tag=received_offer_${index_as_word},scores={trade=${index}}] run tag @p[tag=send_offer_${index_as_word},scores={trade=-1}] add reset_offer_${index_as_word}

execute if entity @p[tag=reset_offer_${index_as_word}] as @a[tag=reset_offer_${index_as_word}] run scoreboard players reset @s trade
execute if entity @p[tag=reset_offer_${index_as_word}] as @a[tag=reset_offer_${index_as_word}] run scoreboard players set @s trade_timer -1
execute if entity @p[tag=reset_offer_${index_as_word}] as @a[tag=reset_offer_${index_as_word}] run tag @s remove send_offer_${index_as_word}
execute if entity @p[tag=reset_offer_${index_as_word}] as @a[tag=reset_offer_${index_as_word}] run tag @s remove receive_offer_${index_as_word}
execute if entity @p[tag=reset_offer_${index_as_word}] as @a[tag=reset_offer_${index_as_word}] run tag @s remove received_offer_${index_as_word}
execute if entity @p[tag=reset_offer_${index_as_word}] as @a[tag=reset_offer_${index_as_word}] run tag @s remove reset_offer_${index_as_word}
''';
        append_files_array.add(File("trade/slot/${index_as_word}",
            child: CommandList.str(this_final_line)));
      }
    }
    if (current_line.startsWith('#;operator_menu')) {
      current_line = operator_menu();
    }
    if (current_line.startsWith('#;clone_inventory')) {
      current_line = clone_inventory();
    }

    if (current_line.startsWith('#;tellraw_teleport')) {
      if (current_line.startsWith('#;tellraw_teleport_request')) {
        current_line =
            'execute if entity @p[tag=teleport,tag=!teleport_receiver] as @a[tag=!teleport,tag=!teleport_receiver] if score @s[tag=!teleport_receiver] teleport_unique = @p[tag=teleport,tag=!teleport_receiver] teleport run tellraw @s';
        for (var index = 2; index <= 71; index++) {
          String raw_teleport =
              '{"selector":"@p[scores={teleport_unique=${index}},tag=teleport]","clickEvent":{"action":"run_command","value":"/trigger teleport set ${index}"},"hoverEvent":{"action":"show_text","contents":[{"text":"Accept teleport from "},{"selector":"@p[scores={teleport_unique=${index}},tag=teleport]"}]}}';
          if (index == 2) {
            current_line = '${current_line} [${raw_teleport}';
          } else {
            current_line = '${current_line},${raw_teleport}';
          }
        }
        current_line = '${current_line}]';
      } else {
        current_line =
            'execute if entity @p[scores={teleport=1}] as @a[scores={teleport=1}] at @s run tellraw @s';
        //current_line = 'scoreboard objectives add teleport trigger';
        for (var index = 2; index <= 71; index++) {
          String raw_teleport =
              '{"selector":"@p[scores={teleport_unique=${index}},distance=0.1..]","clickEvent":{"action":"run_command","value":"/trigger teleport set ${index}"},"hoverEvent":{"action":"show_text","contents":[{"text":"Teleport to "},{"selector":"@p[scores={teleport_unique=${index}},distance=0.1..]"},{"text":" ID ~ "},{"score":{"name":"@p[scores={teleport_unique=${index}},distance=0.1..]","objective":"teleport_unique"}}]}}';
          if (index == 2) {
            current_line = '${current_line} [${raw_teleport}';
          } else {
            current_line = '${current_line},${raw_teleport}';
          }
        }
        current_line = '${current_line}]';
      }
    }
    final_line = '${final_line}\n${current_line}';
  });
  return File(file_name, child: CommandList.str(final_line));
}

List<File> load_files(String project_name, Map files_map) {
  List<File> file_list = [];
  files_map.forEach((file_name, function_details) {
    file_list.add(load_file(project_name, file_name));
  });
  append_files_array.forEach((item) {
    file_list.add(item);
  });

  //print(fix_count);
  return file_list;
}

Pack load_plugin(String plugin_name, Map plugin_details) {
  return Pack(
      name: plugin_name,
      files: load_files(plugin_name, plugin_details["files"]));
}

bool is_full_load(Map plugin_details) {
  return plugin_details.containsKey("full");
}

Map get_files_map(String plugin_name) {}

Pack full_load(String plugin_name, Map plugin_details) {
  Map files_map = {};
  load_loop(String path) {
    //print(path);
    Directory dir = new Directory(path);
    List<FileSystemEntity> files = dir.listSync();
    for (FileSystemEntity file in files) {
      FileStat file_stat = file.statSync();
      if (file_stat.type.toString() == "directory") {
        load_loop(file.path);
      } else if (file_stat.type.toString() == "file") {
        files_map.addAll({
          "${file.path.substring(file.path.indexOf("/functions/") + 11, file.path.length).replaceAll("\\", "/").replaceAll(".mcfunction", "")}":
              {} //TODO this is ugly and doesnt follow standard of rest of project
        });
      }
    }
  }

  load_loop('${core_directory}/data/${plugin_name}/functions/');

  return Pack(name: plugin_name, files: load_files(plugin_name, files_map));
}

For load_plugins(Map plugin_map) {
  List<Pack> pack_list = [];

  plugin_map.forEach((plugin_name, plugin_details) {
    pack_list.add(is_full_load(plugin_details)
        ? full_load(plugin_name, plugin_details)
        : load_plugin(plugin_name, plugin_details));
  });

  return For.of(pack_list);
}

load_predicates() {
  String plugin_name = "core";
  Map files_map = {};
  load_loop(String path) {
    //print(path);
    Directory dir = new Directory(path);
    List<FileSystemEntity> files = dir.listSync();
    for (FileSystemEntity file in files) {
      FileStat file_stat = file.statSync();
      if (file_stat.type.toString() == "directory") {
        load_loop(file.path);
      } else if (file_stat.type.toString() == "file") {
        files_map.addAll({
          "${file.path.substring(file.path.indexOf("/predicates/") + 11, file.path.length).replaceAll("\\", "/")}":
              {} //TODO this is ugly and doesnt follow standard of rest of project
        });
      }
    }
  }

  load_loop('${core_directory}/data/${plugin_name}/predicates/');

  RawFile(
    "is_sprinting.json",
    "{...}",
    path: "core/predicates",
  );
}

For generate_project_from_map(Map project_map) {
  //load_predicates();
  return project_map_validator(project_map)
      ? For.of([
          core(project_map["core"], "load", "tick"),
          load_plugins(project_map["plugins"])
        ])
      : throw ("project_validator failed");
}

Command require(String storage, String function) {
  return Command(
      "execute store success storage ${storage}/require ${function} byte 1 run function ${storage}/reset");
}

For validate_require(String storage, String function) {
  return For.of([
    Command(
        'execute if data storage ${storage}/require {${function}:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"Missing Require ${storage}/${function}","color":"white"}]'),
    Command(
        'execute if data storage ${storage}/require {${function}:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"function ${storage}/${function}","clickEvent":{"action":"suggest_command","value":"/function ${storage}/${function}"},"color":"light_purple"}]')
  ]);
}

class project_main extends Widget {
  @override
  Widget generate(objd.Context context) {
    return generate_project_from_map({
      "core": "core",
      "plugins": {
        "core": {"full": {}}
      }
    });
  }
}
