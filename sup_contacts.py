#! /usr/bin/python -tt
# vim: set sw=4 sts=4 et tw=80 fileencoding=utf-8:
"""Generate a sup contacts list from abook"""

import configobj
import os

def parse(file=os.path.expanduser("~/.abook/addressbook")):
    conf = configobj.ConfigObj(file, list_values=False)
    for chunk in filter(lambda d: "nick" in d and "email" in d, conf.values()):
        print "%(nick)s: %(name)s" % chunk, \
            "<%s>" % chunk["email"].split(",")[0]

if __name__ == "__main__":
    parse()

