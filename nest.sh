echo "#######################################################################################"
echo '#     Welcome to NEST ! Make sure you read the README.txt before using this software  #'
echo '#     Made by Théo Lisart for Engie-Tractebel                                         #'
echo '#     2019-2020, academic year                                                        #'
echo "#######################################################################################"
echo ""
echo "Ver 0.1 --- Type the '-help' command for instructions"
echo "Default reactor configuration -- T2"
echo ""



selectGeometry="T2"
selectInit="T2_1"
visuOn=0
PS1="(NEST)"

#PATHS
search_geo=NEST/bin/Geometries
search_lp=NEST/bin/Initial_LP

# General functions
readCommand(){
  arg1=$1
  arg2=$2
  arg3=$3
  arg4=$4

  #Help
  if [ $1 == '-help' ]
  then
    echo ' -list             : lists available geometries and initial loading pattern '
    echo ' -select XX        : selects the reactor configuration where XX is the available reactor name'
    echo ' -selectInit XXXX  : selects the reactor configuration where XX is the available reactor name'
    echo ' -mode X           : chooses the run mode, 1 runs the algorithm as it is, 2 in training mode'
    echo ' -vis              : enables the visualizer'
    echo ' -run              : runs the routines with selected reactor, in selected mode (nothing selected = default T2 reactor) '
    echo ' -quit             : closes the application '
    echo ''

  #Quit
  elif [ $1 == '-quit' ]
  then
    exit 0

  #Run
  elif [ $1 == '-run' ]
  then
    ./NEST/nest $selectGeometry $selectInit $visuOn      #Using the system piping stdin

  #Select reactor
  elif [ $1 == '-select' ] && [ $2 != '' ]
  then
    echo 'Selected ------- ' $2 'reactor configuration'
    selectGeometry=$2

  #Select init configuration
elif [ $1 == '-selectInit' ] && [ $2 != '' ]
  then
    echo 'Selected ------- ' $2 'initial LP'
    selectInit=$2

  #list
  elif [ $1 == '-list' ]
  then
    echo '-------- Available core geometries  (NEST/bin/Geometries) -----------'
    echo '"-select XX" to select reactor XX'
    echo ''
    for entry in "$search_geo"/*
      do
        echo "     ${entry##*/} "
      done

    echo ''
    echo '-------- Available Initial loading patterns -------------------------'
    echo '"-selectInit" XXXX to select initial LP configuration'
    echo 'Selecting init config has no impact in training mode'
    echo ''
    for entry in "$search_lp"/*
      do
        echo "     ${entry##*/} "
      done
    echo ''
    echo '---------------------------------------------------------------------'
    echo ''

  #visualizer
  elif [ $1 == '-vis' ]
  then
    if [ $visuOn == 1 ]
    then
      echo 'Visualizer disabled'
      visuOn=0
    else
      echo 'Visualizer enabled (disabled by default)'
      visuOn=1
    fi
  # Not found
  else
    echo 'Command not found'
  fi
}

# Waiting for command
while true; do
  read -a userCommand
  readCommand ${userCommand[@]}
done
