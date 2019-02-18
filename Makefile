root_dir = src
release_dir = release

JS_TARGETS = $(addprefix $(root_dir)/, $(shell grep '\.js' $(root_dir)/index.html | grep -o 'src=".*"' | egrep -v '(lib|legacy)/' | cut -d'"' -f2))
JS_MIN_TARGET = $(release_dir)/all.js

BIN_PATH = ./bin

JS_COMP = java -jar $(BIN_PATH)/closure-compiler-v20190121.jar
JS_COMP_FLAGS = --charset UTF-8 --jscomp_off internetExplorerChecks

default: js

.PHONY: js

js: $(JS_MIN_TARGET)


dir_guard = @mkdir -p $(@D)

$(JS_MIN_TARGET): $(JS_TARGETS)
	$(dir_guard)
	@$(JS_COMP) $(JS_COMP_FLAGS) --js_output_file $@ $^
	cp -f $(root_dir)/lib/phaser-arcade-physics.min.js $(release_dir)/phaser.min.js
	cp -f $(root_dir)/release.html $(release_dir)/index.html

clean:
	$(RM) -rf $(release_dir)

