load("@rules_java//java:defs.bzl", "java_binary")
load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")
load("@io_bazel_rules_docker//java:image.bzl", "java_image")
load("@io_bazel_rules_docker//container:push.bzl", "container_push")

package(default_visibility = ["//visibility:public"])

java_binary(
    name = "main",
    srcs = glob(["src/main/java/com/example/myproject/*.java"]),
    main_class = "com.example.myproject.App",
    deps = [
        "//lib:compare"
    ],
)

java_image(
    name = "image",
    main_class = "com.example.myproject.App",
    runtime_deps = [":main"],
)

container_push(
    name = "publish",
    format = "Docker",
    image=":image",
    tag = "v.0.0.0.1",
    registry = "index.docker.io",
    repository = "inanme/test",
    tags = ["manual"], 
)

container_test(
    name = "image_test",
    configs = ["//service/config:test_image.yaml"],
    image = ":image",
)