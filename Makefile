VALUE := valuevalue

.PHONY: generate
generate:
	mkdir -p dist
	echo ${VALUE} > dist/generated.txt

.PHONY: check
check:
	echo ${VALUE} | diff dist/generated.txt -

.PHONY: log
log:
	mkdir -p dist
	echo ${VALUE} > dist/saved.txt

.PHONY: show-log
show-log:
	cat dist/saved.txt

.PHONY: clean
clean:
	rm -rf dist
