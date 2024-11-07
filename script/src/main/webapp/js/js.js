/*

*/
//함수
function multiply(p1, p2){//함수명(매개변수1, 매개변수2)
	return p1 * p2;//매개변수 곱한걸 리턴
}
let result = multiply(4, 3);
document.getElementById("find").innerHTML = result;

//화씨를 섭씨로 변환
function toCelsius(f){
	return (5/9) * (f-32);
}
let value = toCelsius(77);
document.write(value)

//url주소를 함수로 사용
function youtube(){
	location.href="https://www.youtube.com/"
}

//지역변수 해당 함수내에서만 인식되고  함수가 시작될때 생성되고 완료되면 삭제 됩니다
function Car(){
  let carName = "local"; //지역변수
}

//화살표 함수
hello = () => {
alert("Hello World!");
}

//화살표 함수는 기본적으로 반환 값이다
Return = () => "Hello World!";
document.getElementById("arrow").innerHTML=Return();

//매개변수가 하나만 있는 화살표 함수
one = val => "Hello " + val;
document.write(one("universe!"));











