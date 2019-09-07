'''
mac@msune-2  ~/Downloads/tmp  gsed 's/love/like/gw love.txt' love.txt
mac@msune-2  ~/Downloads/tmp  cat love.txt
mac@msune-2  ~/Downloads/tmp  echo 'I love my wife.' > love.txt
mac@msune-2  ~/Downloads/tmp  echo 'This is line 2.' >> love.txt
mac@msune-2  ~/Downloads/tmp  echo 'My wife is jjang.' >> love.txt
mac@msune-2  ~/Downloads/tmp  gsed 's/love/like/gw like.txt' love.txt
I like my wife.
This is line 2.
My wife is jjang.
 mac@msune-2  ~/Downloads/tmp  cat like.txt
I like my wife.
 mac@msune-2  ~/Downloads/tmp  cat love.txt
I love my wife.
This is line 2.
My wife is jjang.
'''
>sed -i .bak 's/원본/바꿀꺼/' file.txt를 입력하면 file.bak파일이 생성되며, 해당 파일에는 바뀐 내용이 저장된다.

'''
>>   '/home/some' | gsed 's/\/home\/some/\/house\/thing/'
'''
위와 같이 슬래쉬가 입력된 문자열은 변경하기 어렵다.
