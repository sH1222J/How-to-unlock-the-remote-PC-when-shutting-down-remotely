@echo off

echo	※ 여러 PC로 업무 또는 사용하다 보면 윈도우 기본 "원격 데스크톱"을  많이 사용한다.
echo	※ "원격 데스크톱"을 사용 후 종료 시 원격 PC가 잠금 상태로 변경이 된다. 
echo	※ 이때 문제점
echo	   - 암호가 걸려있을 경우 매번 해제 해야하는 번거로움
echo	   - 백그라운 프로그램이 간혹 정상 실행이 안 되는 점 발생
echo	 실행방법
echo	    ※ 해당 파일을 원격 사용 PC에 저장한다.
echo	    ※ 원격을 사용 완료 후 종료 시 해당 "배치 파일"을 관리자 권한으로 실행 
echo	    ※ 그럼 잠금화면이 변경 안된 상태로 종료가 된다.
echo	Tip
echo	※ 매번 관리자 권한으로 실행 하기 번거롭다고 생각할 때
echo	       - 해당 배치 파일을 본인이 정리하는 경로에 저장
echo	       - 해당 배치 파일 바로가기를 바탕화면에 생성한다. 
echo	       - 바로가기 "속성"에서 관리자 권한으로 실행을 설정한다. -끝-
for /f "skip=1 tokens=3" %%s in ('query user %USERNAME%') do (%windir%\System32\tscon.exe %%s /dest:console)
pause