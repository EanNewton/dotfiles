#!/usr/bin/env python3
"""
Module Docstring
"""

__author__ = "EanNewton"
__version__ = "0.1.0"
__license__ = "AGPL-3.0"

# Environment Constants & Secrets
import sys
from os import path, getenv
from dotenv import load_dotenv
load_dotenv()
TOKEN = getenv('SECRET_TOKEN')
DEFAULT_DIR = path.dirname(path.abspath(__file__))
VERBOSE = 1

# Detect OS
from platform import system
my_os = system()


# Context Manager Wrappers
#
def my_wrappers():
    # Benchmark a process with Linux's perf util.
    if my_os == "Linux":
        from contextlib import contextmanager
        from subprocess import Popen
        from os import getpid
        from signal import SIGINT
        from time import sleep, time
        from resource import getrusage, RUSAGE_SELF

        events = [
            "instructions",
            "cache-references",
            "cache-misses",
            "avx_insts.all",
        ]

        @contextmanager
        def perf():
            """Benchmark this process with Linux's perf util.
            Example usage:
                with perf():
                    x = run_some_code()
                    more_code(x)
                    all_this_code_will_be_measured()
            """
            p = Popen([
                # Run perf stat
                "perf", "stat",
                # for the current Python process
                "-p", str(getpid()),
                # record the list of events mentioned above
                "-e", ",".join(events)])
            # Ensure perf has started before running more
            # Python code. This will add ~0.1 to the elapsed
            # time reported by perf, so we also track elapsed
            # time separately.
            sleep(0.1)
            start = time()
            try:
                yield
            finally:
                print(f"Elapsed (seconds): {time() - start}")
                print("Peak memory (MiB):",
                      int(getrusage(RUSAGE_SELF).ru_maxrss / 1024))
                p.send_signal(SIGINT)

    # Debug
    def debug(func):
        """Print the function signature and return value"""
        if VERBOSE >= 1:
            @functools.wraps(func)
            def wrapper_debug(*args, **kwargs):
                args_repr = [repr(a) for a in args]
                kwargs_repr = [f"{k}={v!r}" for k, v in kwargs.items()]
                signature = ", ".join(args_repr + kwargs_repr)
                print(f"Calling {func.__name__}({signature})\n")
                value = func(*args, **kwargs)
                print(f"{func.__name__!r} returned {value!r}\n")
                return value
            return wrapper_debug
        else:
            return func

    # Function timer
    def timer(func):
        """
        Prints the execution time for a given function.
        """
        @functools.wraps(func)
        def wrapper_timer(*args, **kwargs):
            tic = time.perf_counter()
            value = func(*args, **kwargs)
            toc = time.perf_counter()
            elapsed_time = toc - tic
            print(f"Elapsed time: {elapsed_time:0.4f} seconds")
            return value
        return wrapper_timer


# Input
#
def my_inputs():
    # Read in files
    def fetch_file(directory, filename):
        """Safely read in a dynamically designated local file"""
        with open('{}/docs/{}/{}.txt'.format(DEFAULT_DIR, directory, filename), 'r') as f:
            return f.read()

    # Multiple line in. Ends on blank line input.
    def multi_in() -> list:
        """
        Take input containing line breaks as single input.
        :return: list
        """
        lines = []
        while True:
            line = input()
            if line:
                lines.append(line)
            else:
                break
        return lines

    def multi_in_sys():
        """
        Input multiple lines. Ctrl-D to EOF.
        """
        return sys.stdin.readlines()

    def multi_in_read():
        """
        Input multiple lines. Ctrl-D to EOF.
        """
        open(0).read()

    # Convert input to dynamic function call
    def call_global_func():
        """
        Unsafe method, not for production.
        Call a function based on user input.
        """
        func_prefix = 'my_' # Help reduce the number of 'oops' calls by
        # restricting to only functions that start with this str
        func_call = input('Which function to call? > ')
        func_vars = input('What variables to pass? > ')
        print(globals()[func_prefix + func_call](func_vars))

# Misc & Assorted utils
#
def misc():
    # Maybe
    #
    # In a similar vein to true and false the maybe command exits with a status code of zero or one,
    # depending on a random number.
    # It can be useful in scripts which need to test-failures, or which benefit from randomness
    from random import choice
    Maybe = choice([True, False])

    def matrix_rotate(raw: list) -> list:
        """Rotate elements in a list of lists by 90 degrees, ie columns -> rows"""
        return [[_[each] for _ in raw] for each in range(len(raw[0]))]

    def wrap(s, w):
        """Break a long string s into a list of strings of length w"""
        return [s[i:i + w] for i in range(0, len(s), w)]
    
    def flatten_lists(list_of_lists: list) -> list:
        """Convert a list of lists into a single flat list."""
        return [item for sublist in list_of_lists for item in sublist]

    def chunk(lst: list, size: int) -> list:
        """
        Chunk a lst into smaller lists of size.
        Use range to create a list of desired size then use map on it to fill it with splices of lst.
        """
        from math import ceil # Might be unnecessary
        return list(map(lambda _: lst[_ * size: _ * size + size], list(range(0, ceil(len(lst) / size)))))

    def insertion_sort(raw: list) -> list:
        """
        Classic insertion sort.
        """
        for each in range(1, len(raw)):
            key = raw[each]
            j = each - 1
            while j >= 0 and key < raw[j]:
                # We need to swap elements
                raw[j + 1] = raw[j]
                j -= 1
                raw[j + 1] = key

    # Get variable name as passed in, not for production use
    def name_passed_vars(var):
        import re
        import traceback
        stack = traceback.extract_stack()
        filename, lineno, function_name, code = stack[-2]
        vars_name = re.compile(r'\((.*?)\).*$').search(code).groups()[0]
        print(vars_name)

    foobar = "foo"
    name_passed_vars(foobar)
    # PRINTS: foobar


# Random numbers

import numpy as np
import matplotlib.pyplot as plt
from collections import Counter
import time


def random_from_scratch():
    def pseudo_uniform(low=0,
                       high=1,
                       seed=123456789,
                       size=1):
        """
        Generates uniformly random number between `low` and `high` limits
        """
        return low + (high - low) * pseudo_uniform_good(seed=seed, size=size)


    def pseudo_uniform_good(mult=16807,
                            mod=(2 ** 31) - 1,
                            seed=123456789,
                            size=1):
        """
        A reasoanbly good pseudo random generator
        """
        U = np.zeros(size)
        x = (seed * mult + 1) % mod
        U[0] = x / mod
        for i in range(1, size):
            x = (x * mult + 1) % mod
            U[i] = x / mod
        return U


    # Example
    def sample_pick(lst):
        """
        Picks up a random sample from a given list
        """
        # Sets seed based on the decimal portion of the current system clock
        t = time.perf_counter()
        seed = int(10 ** 9 * float(str(t - int(t))[0:]))
        # Random sample as an index
        l = len(lst)
        s = pseudo_uniform(low=0, high=l, seed=seed, size=1)
        idx = int(s)
        return (lst[idx])


    dice_faces = ['one', 'two', 'three', 'four', 'five', 'six']
    for _ in range(30):
        print(sample_pick(dice_faces), end=', ')
