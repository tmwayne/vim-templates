# Command-line arguments
for arg in "$@"; do
  shift
  case "$arg" in
    --help)         set -- "$@" "-h" ;;
    --*)            echo "$THIS_PROG: unrecognized option '$arg'" >&2
                    echo "Try '$THIS_PROG --help' for more information."
                    exit 2 ;;
    *)              set -- "$@" "$arg"
  esac
done

OPTIND=1
while getopts ":h" opt; do
  case $opt in
    h)  Help; exit 0 ;;
    \?) echo "$THIS_PROG: unrecognized option '-$OPTARG'" >&2
        echo "Try '$THIS_PROG --help' for more information."
        exit 2 ;;
  esac
done
shift $((OPTIND-1))

