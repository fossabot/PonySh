#!/bin/bash
# Quiz with four questions, a scoring system, and a comment depending on the score
cat << "EOF"
 ____        _
/ __ \      (_)
| |  | |_   _ _ ____
| |  | | | | | |_  /
| |__| | |_| | |/ /
 \___\_\\__,_|_/___|
====================================================
EOF
SCORE="0"
echo "Question 1"
echo "What is native pony breed of the county of Devon?"
read QUESTION_1
if [ "${QUESTION_1,,}" = "dartmoor pony" ] || [ "${QUESTION_1,,}" = "dartmoor" ] || [ "${QUESTION_1,,}" = "dartmoor ponies" ]
then
  echo "Well Done!"
  SCORE=$[$SCORE+1]
else
  echo "Oops, the answer was Dartmoor Pony"
fi
echo "===================================================="
echo "Question 2"
echo "When was The Connemara Pony Breeders Society founded?"
echo "a) 1919           c) 1927"
echo "b) 1923           d) 1934"
read QUESTION_2
if [ "$QUESTION_2" = "1923" ] || [ "${QUESTION_2,,}" = "b" ]
then
  echo "Well Done!"
  SCORE=$[$SCORE+1]
else
  echo "Oops, the answer was 1923"
fi
echo "===================================================="
echo "Question 3"
echo "Do the coats of Shetland Ponies change with the weather [y/n] "
read QUESTION_3
if [ "${QUESTION_3,,}" = "n" ] || [ "${QUESTION_3,,}" = "no" ]
then
  echo "Well Done!"
  SCORE=$[$SCORE+1]
else
  echo "Oops, their coats change according to the season, not the weather!"
fi
echo "===================================================="
echo "Question 4"
echo "What is the scientific name of ponies?"
read QUESTION_4
if [ "${QUESTION_4,,}" = "equus ferus caballus" ]
then
  echo "Well Done!"
  SCORE=$[$SCORE+1]
else
  echo "Oops, the correct answer was 'Equus Ferus Caballus'"
fi
echo "===================================================="
echo "Your score is:"
echo "$SCORE"
if [ "$SCORE" = "4" ]
then
  echo "Wow, you got everything right!"
elif [ "$SCORE" = "3" ]
then
  echo "That's really good!"
elif [ "$SCORE" = "2" ]
then
  echo "Not bad, you got half of it correct!"
elif [ "$SCORE" = "1" ]
then
  echo "This test is really tough, so well done on getting one right!"
else
  echo "This test is extremely tough. Try and get a better score next time!"
fi
echo "===================================================="
cat << "EOF"
1) Shetland Pony      4) Connemara Pony	    7) About Us
2) Dartmoor Pony      5) General Facts	    8) Acknowledgements
3) Highland Pony      6) Quiz               9) Quit
EOF