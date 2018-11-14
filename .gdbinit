python
import sys
from os.path import expanduser
home = expanduser('~')
sys.path.insert(0, home+'/tools/gdb/python')
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
end
