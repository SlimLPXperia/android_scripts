#Compile
if [[ $# = 1 ]]; then
  . build/envsetup.sh
  if [[ $? = 0 ]]; then
    case $1 in
    -u)
       brunch kumquat;
    ;;
    -ru)
      lunch full_kumquat-userdebug && make otapackage -j12;
    ;;
    -p)
      brunch nypon;
    ;;
    -rp)
      lunch full_nypon-userdebug && make otapackage -j12;
    ;;
    -s)
      brunch pepper;
    ;;
    -rs)
      lunch full_pepper-userdebug && make otapackage -j2;
    ;;
    -g)
      brunch lotus;
    ;;
    -rg)
      lunch full_lotus-userdebug && make otapackage -j12;
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
  echo "ERROR: Number of options not correct. Usage: ./CompileROM.sh -u | -p | -s | -g | -ru | -rp | -rs | -rg"
  exit -1;
fi
