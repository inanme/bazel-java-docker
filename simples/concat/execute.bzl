"""
    Execute a binary.
"""

def _impl(ctx):
    # The list of arguments we pass to the script.
    args = [ctx.outputs.out.path] + [f.path for f in ctx.files.chunks]
    print("Command : " + ctx.executable.merge_tool.short_path)
    print("Args: " + " ".join(args))

    # Action to call the script.
    ctx.actions.run(
        inputs = ctx.files.chunks,
        outputs = [ctx.outputs.out],
        arguments = args,
        progress_message = "Merging into %s" % ctx.outputs.out.short_path,
        executable = ctx.executable.merge_tool,
    )

concat = rule(
    implementation = _impl,
    attrs = {
        "chunks": attr.label_list(allow_files = [".txt"]),
        "out": attr.output(mandatory = True),
        "merge_tool": attr.label(
            executable = True,
            cfg = "exec",
            allow_files = True,
        ),
    },
)
