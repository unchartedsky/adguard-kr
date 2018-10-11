OUTPUT=adguard-kr.txt

default: all

all: build

build:
	grep -v -e '^!' -h filters/*.txt | sed 's/[[:space:]]*$$//' | grep '\S'  | sort -u | tee $(OUTPUT)
	git add $(OUTPUT)




