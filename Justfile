vita_root := "vita"
vita := "compiled/" + vita_root + ".pdf"

resume_root := "resume"
resume := "compiled/" + resume_root + ".pdf"

default:
    @echo "Usage: just <command>"
    @just --list

# Build both CV and resume
all: cv resume

# Build resume only
resume:
    arara -v {{resume_root}}.tex
    mv {{resume_root}}.pdf {{resume}}

# Build CV only
cv:
    arara -v {{vita_root}}.tex
    mv {{vita_root}}.pdf {{vita}}

# Clean build artifacts
clean:
    rm -f {{vita_root}}.aux {{vita_root}}.log {{vita_root}}.out {{vita_root}}.toc {{vita_root}}.lof {{vita_root}}.lot {{vita_root}}.bbl {{vita_root}}.blg {{vita_root}}.fdb_latexmk {{vita_root}}.fls {{vita_root}}.synctex.gz {{vita_root}}.nav {{vita_root}}.snm {{vita_root}}.vrb {{vita_root}}.idx {{vita_root}}.ilg {{vita_root}}.ind {{vita_root}}.bcf {{vita_root}}.run.xml
    rm -f {{resume_root}}.aux {{resume_root}}.log {{resume_root}}.out {{resume_root}}.toc {{resume_root}}.lof {{resume_root}}.lot {{resume_root}}.bbl {{resume_root}}.blg {{resume_root}}.fdb_latexmk {{resume_root}}.fls {{resume_root}}.synctex.gz {{resume_root}}.nav {{resume_root}}.snm {{resume_root}}.vrb {{resume_root}}.idx {{resume_root}}.ilg {{resume_root}}.ind {{resume_root}}.bcf {{resume_root}}.run.xml

# Clean everything including compiled PDFs
deepclean: clean
    rm -f {{vita}} {{resume}}
