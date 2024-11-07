class Car{
	constructor(name, year){//생성자 만들고 초기화
		this.name = name; //파라미터 = 인수
		this.year = year;
	}
	age(x){//매개변수를 클래스 메소드로 보낼수 있습니다
		return x - this.year;
	}
}
//클래스를 만든후 상속해서 사용하기 위해 객체 생성
const myCar1 = new Car("Ford", 2014);
//시간 계산을 위해서
const date = new Date(); 
let year = date.getFullYear();

document.getElementById("class").innerHTML =
"자동차명은 " + myCar1.name+ "이고" + 
"년도는 " + myCar1.year + "입니다" + "<br>" +
"<br>" + myCar1.age(year) + " years old";


