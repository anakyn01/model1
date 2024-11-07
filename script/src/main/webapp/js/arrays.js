//arrays
const cars = ["첫번째","두번째","세번째","네번째"]
//비어진 배열을 만들고 요소를 추가함
const member = [];
member[0] = "1";
member[1] = "2";
member[2] = "3";
//new 라는 키워드를 사용하여 만듭니다
const Ar = new Array("1","2","3");
const change = [1,2,3];
let char = change[0]//하나만 지정했을때
change[1] = "two";
//배열길이 마지막 엑세스
const fruits = ["바나나","오렌지","애플","망고"];
let Size = fruits.length;
let last = fruits[fruits.length - 1];

const iter = ["one","two","three","four","five","six"]
let ilen = iter.length;

let text = "<ul>";
for (let i =0; i < ilen; i++){//start index, last index, 개별증가
text += "<li>" + iter[i] + "</li>";
//태그 li 열고 + 배열에 개별 + 태그 li닫고
}
text += "</ul>";

//forEach
const Number = [1,2,3,4,5];

let txt = "<ul>";
Number.forEach(myFunction);
txt += "</ul>";

function myFunction(value){
	txt += "<li>" + value + "</li>";
}

//push
const Push = [11,22,33];
document.getElementById("Array").innerHTML = Push;

function push(){
	Push.push("4");
	document.getElementById("Array").innerHTML = Push;
}

//정의되지 않은 인덱스 지정시 홀발생
const st = ["1",2,"apple"];
st[6] = "Lemon";
let stlen = st.length;
let txt2 = "";
for (i=0; i < stlen; i++){
	txt2 += st[i] + "<br>";
}

//키워드 오류 발생
const points = [40];
const points2 = new Array(40,1);//뉴어레이 키워드 숫자일 경우 하나이면 안됨

//중첩
let q = "";
const myobj = {
	name:"young-il",
	age:46,
	cars:[
		{name:"BMW",models:["520","X6","X5"]},
		{name:"Fiat",models:["500","Panda"]}
	]
}
for (let i in myobj.cars){
	q += "<h2>"+myobj.cars[i].name + "</h2>";
	for(let j in myobj.cars[i].models){
		q += myobj.cars[i].models[j]+"<br>";
	}
}

document.getElementById("Array").innerHTML=
cars + "<br>" +
member + "<br>" +
Ar + "<br>"+
char + "<br>" +
change + "<br>" +
Size + "<br>" +
last + "<br>" +
text + "<br>" +
txt + "<br>" +
txt2 + "<br>" +
Push + "<br>" +
points + "<br>" +
points2 + "<br>" +
q

