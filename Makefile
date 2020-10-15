

hello-world:
	bazel build simples/hello-world:hello 

test-image:
	bazel run service:image_test


page.txt: part1.txt part2.txt
	@cat part1.txt part2.txt > page.txt

