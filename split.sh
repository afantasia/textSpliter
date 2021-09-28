#!/bin/sh
defPageLine=5000

for FILE in `ls *.txt`
do
        I=`expr $I + 1`
        echo "$I) $FILE"
done
echo -n "파일번호를 선택해주세요 : "
read FILE_NUM

if [ -z "$FILE_NUM" ]
then
    echo "입력값이 없어 종료합니다."
    exit
fi

RET=${FILE_NUM//[0-9]/}
if [ -n "$RET" ]
then
    echo "숫자가 아님. 종료합니다."
    exit
fi
extFileName=`ls *.txt | sed -n "$FILE_NUM"p`
if [ -z "$extFileName" ]
then
  echo "파일번호 입력실패 종료합니다."
  exit
fi
fileName="${extFileName%.*}"
totalLine=`cat $extFileName | wc -l`
echo -n "개행할 선택해주세요 기본값은 ${defPageLine}LINE 입니다. : "
read inputLine
if [ -z "$inputLine" ]
then
    echo "입력값이 없어 기본값=${defPageLine} 으로 설정하였습니다."
    pageLine=$defPageLine
fi
RET2=${inputLine//[0-9]/}
if [ -n "$RET2" ]
then
    echo "숫자가 아님. 종료합니다."
    exit
fi
pageLine=$inputLine
spiltLine=`expr $totalLine / $pageLine`
numbering=`expr length "${spiltLine}"`
mkdir -p $fileName
rm -rf ${fileName}/${fileName}_*
split -a $numbering --numeric-suffixes=1 --additional-suffix=".txt" -l $pageLine -d $extFileName ${fileName}/${fileName}_
