/* Start Import Libraries */

import 'dart:isolate';
import 'dart:io';
import 'package:objd/core.dart' hide Context;
import 'package:objd/core.dart' as objd show Context;
import 'package:logger/logger.dart';
import 'dart:cli';
import 'dart:io' as dart show File;
import 'package:path/path.dart';

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

String tellraw_teleport() {}
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

var fix_count = 0;
File load_file(String project_name, String file_name) {
  String output = waitFor(dart.File(
          '${core_directory}/data/${project_name}/functions/${file_name}.mcfunction')
      .readAsString());
  validate_file(output);

  List output_as_list = output.split("\n");
  String final_line = "";
  output_as_list.forEach((current_line) {
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
  files_map.forEach((function_file, function_details) {
    file_list.add(load_file(project_name, function_file));
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
