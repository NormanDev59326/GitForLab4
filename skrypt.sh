[[ "$1" == "--date" || "$1" == "-d" ]] && date

if [[ "$1" == "--logs" || "$1" == "-l" ]]; then
  count=${2:-100}
  for i in $(seq 1 $count); do
    filename="log$i.txt"
    echo -e "$filename\nScript: $0\nDate: $(date)" > "$filename"
  done
fi

if [[ "$1" == "--help" || "$1" == "-h" ]]; then
  echo "--date, -d       Wyświetla dzisiejszą datę"
  echo "--logs, -l [n]   Tworzy pliki logX.txt"
  echo "--help, -h       Wyświetla tę pomoc"
fi
