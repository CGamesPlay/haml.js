REPORTER = spec
test:
	@git submodule update --init
	@./node_modules/.bin/mocha \
		--require should \
		--reporter $(REPORTER) \
		test/test.js

benchmark:
	@node-bench benchmarks/run.js

.PHONY: test benchmark
