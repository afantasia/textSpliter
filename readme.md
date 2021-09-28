<h1>텍스트 쪼갬용 쉘스크립트</h1>

<h2>실행사양</h2>
Window,MacOS,LINUX(ubuntu) 내에서 체크한결과
이상없는걸 확인했습니다

Window기반의 경우 git bash가 설치되어야 하며 설치옵션에서

spilt 등과 같은 리눅스 기본명령어를 선택하여 설치 합니다

(설치시에 기본설치로 확인되지만 확인을 꼭 해주시기 바랍니다.)

<h2>용도</h2>
로그파일 및 용량이 큰 텍스트파일의 분할관리

전자책의 텍스트뷰어가 파일이 너무 커서 뷰어를 실행하는데 오래걸리는경우



<h2>사용방법</h2>
1. split.sh 와 동일한경로에 텍스트파일을 .txt 파일로 올려주세요


2. split.sh 파일을 실행해주세요 (윈도우는 실행으로도 되지만터미널을 권장드립니다.)


3. 리스트에 뜬 파일 목록내에 매핑된 번호(1~n)을 입력 후 Enter


4. 나누어야 할 라인을 입력후 Enter(기본값은 5000으로 설정되어 있습니다.)



<h2>실행결과</h2>
선택된파일명의 디렉토리가 생성되며 해당 디렉토리 내에 입력한 라인수에 맞추어

선택된파일명_숫자 형태(로 10,100,1000 단위로 앞자리에 0이 붙어 넘버링)로

생성됩니다.
