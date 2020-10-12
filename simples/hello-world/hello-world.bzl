def _impl(ctx):
    print("hello " + ctx.attr.to)
    ctx.actions.write(output = ctx.outputs.out, 
                      content = ctx.attr.to)


hello_world = rule(
    implementation = _impl,
    attrs = {"to": attr.string()},
    outputs = {"out": "%{to}.txt"},
)
