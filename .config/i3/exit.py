import os
from argparse import ArgumentParser

actions = {
    "e": "i3-msg exit",
    "p": "systemctl poweroff",
    "r": "systemctl reboot",
    "s": "systemctl suspend",
    "h": "systemctl hibernate",
    "l": "loginctl lock-session",
}

parser = ArgumentParser()
parser.add_argument("action", nargs="?")
default_action = parser.parse_args().action

prompt = "(e)xit i3, (p)oweroff, (r)eboot, (s)leep (suspend), (h)ibernate, (l)ock: "
if default_action is not None:
    prompt = prompt.replace(f"({default_action})",
                            f"({default_action.upper()})")

action = input(prompt)

if action == "" and default_action is not None:
    action = default_action
if action not in actions:
    exit()

os.system(actions[action])
