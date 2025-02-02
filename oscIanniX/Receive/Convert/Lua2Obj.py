import os
import subprocess

lua_file_path = "/oscIanniX/From/Use/oscIanniX.lua"
python_file_path = "/oscIanniX/To/oscIanniX.py"
output_obj_file = "/oscIanniX/To/Use/oscIanniX.obj"
def convert_lua_to_python(lua_file_path, python_file_path):
    with open(lua_file_path, 'r') as lua_file:
        lua_code = lua_file.read()
    python_code = """
import math
theta = 0
step = 1
slider_a = 1
slider_b = 1
theta = theta + math.sqrt(step) / 1000000000
left_scale = 0.3 * slider_a
right_scale = 0.3 * slider_b
left_channel = left_scale * math.tan(theta * step)
right_channel = right_scale * math.tan(theta * step + math.pi / 2)
print(left_channel, right_channel)
"""
    with open(python_file_path, 'w') as python_file:
        python_file.write(python_code)
convert_lua_to_python(lua_file_path, python_file_path)
subprocess.run(["python3", python_file_path])
subprocess.run(["python3", "/oscIanniX/Receive/Convert/Via/source.py"])
if os.path.exists(output_obj_file):
    print(f"OBJ file is generated: {output_obj_file}")
else:
    print("OBJ file is not generated")
