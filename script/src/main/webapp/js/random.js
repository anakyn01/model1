document.getElementById("rad").innerHTML =
"일반 렌덤은 항상 소수점 자리가 나오기에 자바스크립트에서 정수를 출력할경우 먼저 난수에 10을 곱하고 소수점이하를 버린다</br>"+
"일반적인 렌덤은 " + Math.random() + "항상 소수점이 나옵니다</br>"+
"그래서 산술을 해줍니다" + Math.floor(Math.random() * 10) + "</br>"+
"<b>자바와 똑같이 범위를 정해줘야 합니다 예를 45까지 나오게 하려면 46을 곱해야 됩니다</b>"+
Math.floor(Math.random()*46) +Math.floor(Math.random()*46)+
Math.floor(Math.random()*46)+Math.floor(Math.random()*46)+
Math.floor(Math.random()*46) + "입니다";

function getRandomInteger(min, max) {
	return Math.floor(Math.random() * (max -min + 1)) +min
	//0.3 * (10 - 1+1)
}