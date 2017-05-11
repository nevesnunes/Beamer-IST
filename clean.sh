FILES=(.aux .bb .bl .lo .lo .nl .ou .to .bc .run.xml .bbl .blg .fdb_latexmk .fls .log .toc .synctex.gz .acn .glo .ist .lof .lot .out .acr .alg .glg .gls .glsdefs)
FILES_EXTRA=(.lo* .ma* .ml* .mt* .nav .snm)

# Delete compiled files
for i in "${FILES[@]}"; do
  echo "Deleting *$i..."
  find . -iname "*$i" -exec rm {} \;
done

while [ "$1" != "" ]; do
  case $1 in
  # Also delete extra files
  -a|--all)
    for i in "${FILES_EXTRA[@]}"; do
      echo "Deleting *$i..."
      find . -iname "*$i" -exec rm {} \;
    done
    ;;
  *)
    echo "Unrecognized option: $1"
    exit 1
  esac
  shift
done
