import bpy
print("Hello World from Blender " + bpy.app.version_string)
bpy.data.scenes["Scene"].render.filepath = "/tmp/output.png"

# bpy.ops.render.render(write_still=True)
bpy.ops.render.opengl(animation=False, render_keyed_only=False, sequencer=False, write_still=True, view_context=False)