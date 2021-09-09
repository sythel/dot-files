#!/usr/bin/env python3
# -*- coding: utf8 -*-
"""
DESCRIPTION GOES HERE
"""

import sys
import os
import traceback
import argparse
import time
import logging
import unittest

log = logging.getLogger()
log.setLevel(logging.ERROR)  # DEBUG | INFO | WARNING | ERROR | CRITICAL
formatter = logging.Formatter('%(asctime)s|%(name)s|%(levelname)s|Line: %(lineno)d> %(message)s')
sh = logging.StreamHandler()
sh.setLevel(logging.ERROR)
sh.setFormatter(formatter)
log.addHandler(sh)
fh = logging.FileHandler(os.path.abspath(os.path.join(
    os.path.dirname(__file__),
    os.path.basename(__file__).rstrip('.py') + '.log'
)))
fh.setLevel(logging.ERROR)
fh.setFormatter(formatter)
log.addHandler(fh)


class TestStarterClass(unittest.TestCase):
    def setUp(self):
        #s = StarterClass()
        pass

    def test_hello(self):
        print('Test')


class StarterClass:
    def __init__(self, args=None):
        print('Hello world! args: {}'.format(args))


def main():
    global args

    # Code Here
    s = StarterClass(args)

    # run all tests
    unittest.main()


if __name__ == '__main__':
    try:
        start_time = time.time()
        parser = argparse.ArgumentParser(description=__doc__)
        parser.add_argument('-v', '--verbose', action='store_true', default=False, help='verbose output')
        parser.add_argument('-ver', '--version', action='version', version='0.0.1')
        args = parser.parse_args()
        if args.verbose:
            fh.setLevel(logging.DEBUG)
            log.setLevel(logging.DEBUG)
        log.info("%s Started" % parser.prog)
        main()
        log.info("%s Ended" % parser.prog)
        log.info("Total running time in seconds: %0.2f" % (time.time() - start_time))
        sys.exit(0)
    except KeyboardInterrupt as e:  # Ctrl-C
        raise e
    except SystemExit as e:  # sys.exit()
        raise e
    except Exception as e:
        print('ERROR, UNEXPECTED EXCEPTION')
        print(str(e))
        traceback.print_exc()
        os._exit(1)
