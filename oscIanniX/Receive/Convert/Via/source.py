import numpy as np
import trimesh
from scipy.integrate import quad
from math import sin, cos, tan, asin, acos, atan, sinh, cosh, tanh, asinh, acosh, atanh, pi, sqrt
resolution = 50
scale = 5


def generate_points(u, v):
    x = scale * (sin(u) * cos(v) + sinh(u) * tanh(v))
    y = scale * (cos(u) * sin(v) + cosh(v) * tanh(u))
    z = scale * (atan(u) + asinh(v))
    return np.array([x, y, z])


u_values = np.linspace(-pi, pi, resolution)
v_values = np.linspace(-pi / 2, pi / 2, resolution)
vertices = []
for u in u_values:
    for v in v_values:
        vertices.append(generate_points(u, v))
vertices = np.array(vertices)
faces = []
for i in range(resolution - 1):
    for j in range(resolution - 1):
        idx = i * resolution + j
        faces.append([idx, idx + 1, idx + resolution])
        faces.append([idx + 1, idx + resolution + 1, idx + resolution])
faces = np.array(faces)
mesh = trimesh.Trimesh(vertices=vertices, faces=faces)
output_file = "oscIanniX.obj"
mesh.export(output_file)
print(f"OBJ file is generated: {output_file}")
