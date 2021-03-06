cd ./minecraft/
wget https://launcher.mojang.com/v1/objects/0a39422009a7aa01dd185043746c50dc909dc345/server.jar
java -Xms7G -Xmx7G -XX:+UseG1GC -XX:+UseLargePages -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -jar server.jar nogui
tail --pid=$pid -f /dev/null
sed -i '3s/.*/replacement-line/' eula.txt
./startup_script.sh