# ********************************
# *** Author: Reymon Dev       ***
# *** Date: 12. Mai. 2026      ***
# *** Update: 12. Mai. 2026    ***
# *** License: AGPL-3-or-later ***
# ********************************

# *************
# *** Files ***
# *************

FILES_TS := $(wildcard src/ts/*.ts)
FILES_JS := $(patsubst src/ts/%.ts, src/js/%.js, $(FILES_TS))

# *************
# *** Tools ***
# *************

TSC := npx tsc

# *******************
# *** Tools Flags ***
# *******************

TSCFLAGS := --strict --target es2025

# *************
# *** Rules ***
# *************

all: $(FILES_JS)

clean:
	rm -f $(FILES_JS)

# ***************
# *** Pattern ***
# ***************

src/js/%.js: src/ts/%.ts
	@mkdir -p $(dir $@)
	$(TSC)