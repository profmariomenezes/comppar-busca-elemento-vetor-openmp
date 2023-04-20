echo "Running tests..."
echo


elem1=$(shuf -n 1 vetor1.txt)
pos1=$(cat vetor1.txt | grep -n $elem1 | cut -f 1 -d ':')
elem2=$(shuf -n 1 vetor2.txt)
pos2=$(cat vetor2.txt | grep -n $elem2 | cut -f 1 -d ':')


output1=$(./busca $elem1 vetor1.txt)

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [ "$output1" = "$pos1" ] ; then
  echo "Pass: Pos1 output is correct"
  res1=true
else
  echo "Expected '$pos1' but got: $output1"
  res1=false
fi

output2=$(./busca $elem2 vetor2.txt)

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [ "$output2" = "$pos2" ] ; then
  echo "Pass: Pos2 output is correct"
  res2=true
else
  echo "Expected '$pos2' but got: $output2"
  res2=false
fi

# if [ "$res1" ==  true || "$res2" == true ] ; the

if [ $res1 ] || [ $res2 ] ; then
  echo "Program pass at least in one test"
else
  echo "Program failed"
  exit 1
fi


#echo
#echo "All tests passed."

exit 0
