#! /bin/sh


case "$1" in
    start)
        echo "Starting init script for Module Loading"
        /usr/bin/scull_load
        /usr/bin/module_load faulty
        /usr/bin/aesdchar_load
        modprobe hello
        ;;
    stop)
        echo "Removing user modules"
        /usr/bin/scull_unload
        /usr/bin/module_unload faulty
        /usr/bin/aesdchar_unload
        rmmod hello
        ;;
    *)
        echo "Usage: $0 {start|stop}"
    exit 1
esac
exit 0
