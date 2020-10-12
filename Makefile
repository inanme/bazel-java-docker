

hello-world:
	bazel build simples/hello-world:hello 
test-image:
	bazel run service:image_test