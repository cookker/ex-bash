```bash
sed 's/love/like/gw love.txt' love.txt
cat love.txt
echo 'I love my wife.' > love.txt
echo 'This is line 2.' >> love.txt
echo 'My wife is jjang.' >> love.txt
sed 's/love/like/gw like.txt' love.txt
I like my wife.
This is line 2.
My wife is jjang.

cat like.txt
I like my wife.

cat love.txt
I love my wife.
This is line 2.
My wife is jjang
```



> sed -i .bak 's/원본/바꿀꺼/' file.txt를 입력하면 file.bak파일이 생성되며, 해당 파일에는 바뀐 내용이 저장된다.



```bash
echo '/home/some' | sed 's/\/home\/some/\/house\/thing/'
```

위와 같이 슬래쉬가 입력된 문자열은 변경하기 어렵다.

```bash
echo '/home/some' | sed 's#/home/some#/house/thing#'
```

```bash
echo '/home/some' | sed 's:/home/some:/house/thing:'
```



이렇게 #(poud sign)이나 :(semi colon)을 입력하면 같은 결과가 나온다. `$`를 입력해도 결과가 같다.

```bash
cat love.txt
I love my wife.
This is line 2.
My wife is jjang.

sed '/This/d' love.txt
I love my wife.
My wife is jjang.

```

### delimeter를 사용하여 제외시키기

```bash
echo '#User to run service as.' > config
echo 'User apache' >> config
echo >> config
echo '# Group to run service as.' >> config
echo 'Group apache' >> config
cat config
#User to run service as.
User apache

# Group to run service as.
Group apache


sed '/^#/d' config
User apache

Group apache
```



```bash
sed '/^#/d ; /^$/d' config
User apache
Group apache
```

`#`으로 시작하는 문자열 제외시키고 세미콜론(`;`)으로 다음 명령을 수행시키며, 정규식(`^$`) 에 의해 비어있는 행을 제외시킨다.

```bash
sed -e '/^#/d' -e '/^$/d' -e 's/apache/httpd/' config
User httpd
Group httpd
```

위와 결과가 같다. 세미콜론(`;`) 대신 `-e` 옵션을 사용해도 된다.

```bash
echo '/^h/d' > script.sed
echo '/^#/d' > script.sed
echo '/^$/d' >> script.sed
echo 's/apache/httpd/' >> script.sed
sed -f script.sed config
User httpd
Group httpd
```

`-f`옵션을 사용해서 스크립트를 적용할 수 있다.



```bash
sed '2 s/apache/httpd/' config
#User to run service as.
User httpd

# Group to run service as.
Group apache
```

특정 라인만 변경하고 싶다면 앞에 숫자를 사용하면 된다. 콤마를 사용하여 복수개의 라인을 지정할 수 있다.



```bash
cat config
#User to run service as.
User apache

# Group to run se
sed '/Group/ s/apache/httpd/' config
#User to run service as.
User apache

# Group to run service as.
Group httpd
```

앞에 정규식으로 특정 문자가 포함된 라인만 적용하게 할 수 있다.



```bash
sed '/#User/,/^$/ s/run/execute/' config
#User to execute service as.
User apache

# Group to run service as.
Group apache
```

정규식을 사용하여 적용 범위를 지정할 수 있다. `#User`가 포함된 라인과 공백 라인을 대상으로 run을 execute로 변경하였다.




