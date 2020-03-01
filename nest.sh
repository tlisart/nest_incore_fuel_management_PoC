echo "##################################################################################"
echo 'Welcome into NEST ! Make sure you read the README.txt before using this software'
echo 'Made by Théo Lisart for Engie-Tractebel'
echo '2019-2020'
echo "##################################################################################"
echo ""
echo ""

selectGeometry=""
PS1="(NEST)"
# Checking the integrity of the software

# General functions

selectData(){
  selc=$s1
  selc2=$s2
}

readCommand(){
  arg1=$1
  arg2=$2
  arg3=$3
  arg4=$4
  if [ $1 == 'help' ]
  then
    echo 'Help menu'
  elif [ $1 == 'quit' ]
  then
    exit 0
  elif [ $1 == 'run' ]
  then
    cd NEST
    ls
    ./nest $selectGeometry        #Using the system piping stdin
  elif [ $1 == 'setup' ] && [ $2 != '' ]
  then
    echo 'Setup for' $2 'geometry'
    selectGeometry=$2
  else
    echo 'Command not found'
  fi
}

# Waiting for command
while true; do
  read -a userCommand
  readCommand ${userCommand[@]}
done
