import os
if os.path.exists("nekodl.py"):
    os.remove("nekodl.py")
os.system("curl -O https://raw.githubusercontent.com/justanobody2107/public-projects/main/nekodl/nekodl.py")
if os.path.exists("nekodl.py"):
    os.remove("install.py")
else:
    print("\033[0;31m[ERROR]: Failed to install! Are you connected to the internet?\033[0m")
