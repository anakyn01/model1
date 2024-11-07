package com.dto;
/*
jsp페이지의 주요기능 => 데이터를 보여주는 것 입니다
그런데 화면에서 코드를 작성하면 그코드는 그페이지에만 유효해서
다른 페이지에서 작성할때 또 코드를 또 작성하면 불편하다
그래서 dry에 입각해서
프로그램의 효율을 높이기 위해서 
화면을 출력하는 부분과 데이터를 처리하는 로직부분이 구분되어야 합니다
그래서 로직부분에 코드에는 자바빈즈라는 클래스를 사용합니다

1) 요청
2) 자바빈즈와 통신
3) 데이터베이스에 연결
4) 브라우저에 응답

데이터표현을 목적으로 하는 자바 클래스이기 때문에
자바 클래스 작성방법과 동일하지만 

아래와 같은 규칙을 따라야 합니다
1) java.io..Serializable 인터페이스를 구현해야 합니다
2) 인수가 없는 기본 생성자가 있어야 합니다
3) 모든 맴버변수인 프러퍼티는 private 접근 지정자로 설정해야 합니다
4) Getter(지정된 값을 가져오는) / setter(값을 저장할수 있는) 메소드가 존재 해야 됩니다
*/
import java.io.Serializable;

public class MemberBean implements java.io.Serializable{

	private int id;
	private String name;
	
	public MemberBean() {//매개변수 없는 생성자

	}

	public  int getId() {
		return id;
	}

	public  void setId(int id) {
		this.id = id;
	}

	public  String getName() {
		return name;
	}

	public  void setName(String name) {
		this.name = name;
	}
	
}
