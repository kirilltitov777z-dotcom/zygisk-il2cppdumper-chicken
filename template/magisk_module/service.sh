#!/system/bin/sh
# Копируем дамп из приватной папки игры в общедоступные Загрузки (от root).
sleep 15
while true; do
  echo "alive $(date)" > /sdcard/Download/aero_module_alive.txt
  if [ -f /data/data/com.chaloapps.roosterrudy/files/dump.cs ]; then
    cp -f /data/data/com.chaloapps.roosterrudy/files/dump.cs /sdcard/Download/aero_dump.cs
    echo "copied $(date)" >> /sdcard/Download/aero_module_alive.txt
  fi
  sleep 5
done
