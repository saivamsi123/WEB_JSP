package com.servlet.bean;

public  class OperationsImpl implements Opeartions {

//	
//	OperationsImpl oper = new OperationsImpl() {
//	public void added()
//	{
//		System.out.println("Added method....");
//	}
//};

	@Override
	public void add() {
		System.out.println("Add abstract method....");
	}

	@Override
	public void sub() {
		System.out.println("Sub abstract method....");
	}

	@Override
	public void mul() {
		System.out.println("Mul abstract method....");
	}

	@Override
	public void div() {
		System.out.println("Div abstract method....");
	}
}