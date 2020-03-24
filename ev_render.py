import bpy

bpy.data.scenes["Scene"].render.filepath = "/tmp/output.png"
bpy.ops.render.render(write_still=True)