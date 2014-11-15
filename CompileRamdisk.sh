#Compile
if [[ $# = 1 ]]; then
  . build/envsetup.sh
  if [[ $? = 0 ]]; then
    case $1 in
    -u)
      breakfast kumquat && make bootimage;
    ;;
    -p)
      breakfast nypon && make bootimage;
    ;;
    -s)
      breakfast pepper && make bootimage;
    ;;
    -g)
      breakfast lotus && make bootimage;
    ;;
    *)
      echo "ERROR: Unknow option";
      exit -1;
    ;;
    esac
  else 
    echo "ERROR: . build/envsetup.sh falied"
    exit -1;
  fi
else
  echo "ERROR: Number of options not correct. Usage: ./CompileRamdisk.sh -u | -p | -s | -g"
  exit -1;
fi
