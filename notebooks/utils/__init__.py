from __future__ import print_function, unicode_literals, division


def print_versions():
    import sys, IPython, numpy, pandas, sklearn, seaborn
     
    version_print = lambda package, version: print("{:<10}{}".format(package, version))
    
    py_version = ".".join(map(lambda x: str(x), sys.version_info[:3]))
    version_print('Python', py_version)
    
    for package in [IPython, numpy, pandas, sklearn,seaborn]:
        version_print(package.__name__, package.__version__)

