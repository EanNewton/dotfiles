#!/usr/bin/env python3
"""
Module Docstring
"""

__author__ = "EanNewton"
__version__ = "0.1.0"
__license__ = "AGPL-3.0"


import argparse
from logzero import logger


def main(args):
    """ Main entry point of the app """
    logger.info("hello world")
    logger.info(args)


if __name__ == "__main__":
    """ This is executed when run from the command line """
    parser = argparse.ArgumentParser()

    # Required positional argument
    parser.add_argument("arg", help="Required positional argument")

    # Optional argument flag which defaults to False
    parser.add_argument("-f", "--flag", action="store_true", default=False)

    # Optional argument which requires a parameter (eg. -d test)
    parser.add_argument("-n", "--name", action="store", dest="name")

    # Optional verbosity counter (eg. -v, -vv, -vvv, etc.)
    parser.add_argument(
        "-v",
        "--verbose",
        action="count",
        default=0,
        help="Verbosity (-v, -vv, etc)")

    # Specify output of "--version"
    parser.add_argument(
        "--version",
        action="version",
        version="%(prog)s (version {version})".format(version=__version__))

    args = parser.parse_args()
    main(args)


# Old argv sample
#
if __name__ == '__main__':
    help = """
    Cell Automata.

    Usage:
        Conways Game of Life
        ====================
        main.py conway
        main.py conway <filename>
        main.py conway <width> <height> <density>
    Options:
        <filename> -- a .txt file located in ./pregens
        <width>    -- X cell range
        <height>   -- Y cell range
        <density>  -- percent chance to spawn a living cell at start, between 0 and 100
    """
    if 'help' in argv:
        print(help)
        quit()

    elif len(argv) >= 2:
        if argv[1] == 'conway':
            if len(argv) == 3:
                board = load_file(argv[2])
                board = expand_board(board, 50, 25)
            elif len(argv) == 5:
                board = random_state(int(argv[2]), int(argv[3]), int(argv[4]))
            else:
                board = random_state(50, 25, 50)
            conway(board)
    print(help)

