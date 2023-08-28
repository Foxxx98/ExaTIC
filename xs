#!/bin/sh

userresources=$HOME/.Xresources

usermodmap=$HOME/.Xmodmap

sysresources=/etc/X11/xinit/.Xresources

sysmodmap=/etc/X11/xinit/.Xmodmap

if [ -f  $sysresources ]; then

    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then

    xmodmap $sysmodmap

fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then


SyntaxError: invalid syntax
2023-08-28 12:01:26,651 WARNING libqtile utils.py:send_notification():L236 dbus-next is not installed. Unable to send notifications.
2023-08-28 12:09:50,526 ERROR libqtile manager.py:cmd_reload_config():L266 Configuration error:
Traceback (most recent call last):
  File "/usr/lib/python3.11/site-packages/libqtile/core/manager.py", line 264, in cmd_reload_config
    self.config.load()
  File "/usr/lib/python3.11/site-packages/libqtile/confreader.py", line 128, in load
    config = importlib.import_module(name)
             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3.11/importlib/__init__.py", line 126, in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "<frozen importlib._bootstrap>", line 1206, in _gcd_import
  File "<frozen importlib._bootstrap>", line 1178, in _find_and_load
  File "<frozen importlib._bootstrap>", line 1149, in _find_and_load_unlocked
  File "<frozen importlib._bootstrap>", line 690, in _load_unlocked
  File "<frozen importlib._bootstrap_external>", line 936, in exec_module
  File "<frozen importlib._bootstrap_external>", line 1074, in get_code
  File "<frozen importlib._bootstrap_external>", line 1004, in source_to_code
  File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
  File "/home/daxur/.config/qtile/config.py", line 142
    from libqtile import bar, layout, widget
    ^^^^
SyntaxError: invalid syntax
2023-08-28 12:09:50,526 WARNING libqtile utils.py:send_notification():L236 dbus-next is not installed. Unable to send notifications.


    xmodmap "$usermodmap"

fi

if [ -d /etc/X11/xinit/xinitrc.d ]; then

    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do

        [ -x "$f" ] && . "$f"

    done

    unset f

fi
