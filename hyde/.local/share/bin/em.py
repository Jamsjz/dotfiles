#!/usr/bin/python
import sys
import subprocess as sp


def usage():
    print(
        """
    Usage:
        emacs:
            start
            kill
        eclient:
            start
            restart"""
    )


args = sys.argv
i = 1
if len(sys.argv) > 1:
    if args[i] == "emacs":
        if args[i + 1] == "start":
            sp.Popen("emacsclient -c -a 'emacs'", shell=True)
        else:
            usage()
    elif args[i] == "eclient":
        if args[i + 1] == "start":
            sp.Popen("/usr/bin/emacs --daemon &", shell=True)
        elif args[i + 1] == "kill":
            sp.Popen("emacsclient -e '(kill-emacs)'", shell=True)
        elif args[i + 1] == "restart":
            sp.Popen(
                "emacsclient -e '(kill-emacs)'; /usr/bin/emacs --daemon &",
                shell=True,
            )
        else:
            usage()
    else:
        usage()


else:
    usage()
