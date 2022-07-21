# Загрузка ядра. Kernel booting

Традиционная basic input\output system предполагает что загрузочное устройство начинается с записи первого сектора (MBR - master boot record), которую можно прочитать командой **dd if=/dev/sda bs=440 count=1**. 

### Systemd\init