[[ "$1" == "--date" || "$1" == "-d" ]] && date

if [[ "$1" == "--logs" || "$1" == "-l" ]]; then
  count=${2:-100}
  for i in $(seq 1 $count); do
    filename="log$i.txt"
    echo -e "$filename\nScript: $0\nDate: $(date)" > "$filename"
  done
fi
