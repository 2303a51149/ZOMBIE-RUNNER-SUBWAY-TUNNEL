import math

# profile points
halfW = 4.7
curbH = 0.22
wallH = 2.34
height = 5.2

p0 = (-halfW, curbH, 0)
p1 = (-halfW, wallH, 0)

# At z=0 and z=1
# i0: p0 at z=0: (-4.7, 0.22, 0)
# i1: p1 at z=0: (-4.7, 2.34, 0)
# i2: p0 at z=1: (-4.7, 0.22, 1)
# i3: p1 at z=1: (-4.7, 2.34, 1)

# When flipNormals is True:
# triangle 1: i0, i2, i1
v_i0 = (-4.7, 0.22, 0)
v_i2 = (-4.7, 0.22, 1)
v_i1 = (-4.7, 2.34, 0)

# Edge 1: i2 - i0 = (0, 0, 1)
# Edge 2: i1 - i0 = (0, 2.12, 0)
# Cross product (E1 x E2):
# (0*0 - 1*2.12, 1*0 - 0*0, 0*2.12 - 0*0) = (-2.12, 0, 0)
print("Normal with flipNormals=True on left wall:", (-2.12, 0, 0))
# On the left wall (x = -4.7), looking from inside the tunnel (x=0), inside points toward +X!
# But the normal is (-2.12, 0, 0) which points toward -X (OUTWARD into the dirt)!
# An outward normal means the front face is on the OUTSIDE!
# From inside the tunnel, it is a BACKFACE!
# Since URP Lit culls Backfaces by default (Cull Back), the entire left wall is CULLED AND INVISIBLE!
