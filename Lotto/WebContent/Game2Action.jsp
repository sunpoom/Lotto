
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="user.PlayDAO"%>

<%@ page import="user.LottoDAO"%>

<%@ page import="user.UserDTO"%>

<%@ page import="user.UserDAO"%>

<%@ page import="user.ResultDAO"%>

<%@page import="user.Draw"%>

<%@page import="user.Compare"%>

<%@ page import="java.io.PrintWriter"%>

<%

	request.setCharacterEncoding("UTF-8");

	int inlineCheckbox1_1=-1;
	int inlineCheckbox2_1=-1;
	int inlineCheckbox3_1=-1;
	int inlineCheckbox4_1=-1;
	int inlineCheckbox5_1=-1;
	int inlineCheckbox6_1=-1;
	int inlineCheckbox7_1=-1;
	int inlineCheckbox8_1=-1;
	int inlineCheckbox9_1=-1;
	int inlineCheckbox10_1=-1;
	int inlineCheckbox11_1=-1;
	int inlineCheckbox12_1=-1;
	int inlineCheckbox13_1=-1;
	int inlineCheckbox14_1=-1;
	int inlineCheckbox15_1=-1;
	int inlineCheckbox16_1=-1;
	int inlineCheckbox17_1=-1;
	int inlineCheckbox18_1=-1;
	int inlineCheckbox19_1=-1;
	int inlineCheckbox20_1=-1;
	int inlineCheckbox21_1=-1;
	int inlineCheckbox22_1=-1;
	int inlineCheckbox23_1=-1;
	int inlineCheckbox24_1=-1;
	int inlineCheckbox25_1=-1;
	int inlineCheckbox26_1=-1;
	int inlineCheckbox27_1=-1;
	int inlineCheckbox28_1=-1;
	int inlineCheckbox29_1=-1;
	int inlineCheckbox30_1=-1;
	int inlineCheckbox31_1=-1;
	int inlineCheckbox32_1=-1;
	int inlineCheckbox33_1=-1;
	int inlineCheckbox34_1=-1;
	int inlineCheckbox35_1=-1;
	int inlineCheckbox36_1=-1;
	int inlineCheckbox37_1=-1;
	int inlineCheckbox38_1=-1;
	int inlineCheckbox39_1=-1;
	int inlineCheckbox40_1=-1;
	int inlineCheckbox41_1=-1;
	int inlineCheckbox42_1=-1;
	int inlineCheckbox43_1=-1;
	int inlineCheckbox44_1=-1;
	int inlineCheckbox45_1=-1;
	
	//2번
	int inlineCheckbox1_2=-1;
	int inlineCheckbox2_2=-1;
	int inlineCheckbox3_2=-1;
	int inlineCheckbox4_2=-1;
	int inlineCheckbox5_2=-1;
	int inlineCheckbox6_2=-1;
	int inlineCheckbox7_2=-1;
	int inlineCheckbox8_2=-1;
	int inlineCheckbox9_2=-1;
	int inlineCheckbox10_2=-1;
	int inlineCheckbox11_2=-1;
	int inlineCheckbox12_2=-1;
	int inlineCheckbox13_2=-1;
	int inlineCheckbox14_2=-1;
	int inlineCheckbox15_2=-1;
	int inlineCheckbox16_2=-1;
	int inlineCheckbox17_2=-1;
	int inlineCheckbox18_2=-1;
	int inlineCheckbox19_2=-1;
	int inlineCheckbox20_2=-1;
	int inlineCheckbox21_2=-1;
	int inlineCheckbox22_2=-1;
	int inlineCheckbox23_2=-1;
	int inlineCheckbox24_2=-1;
	int inlineCheckbox25_2=-1;
	int inlineCheckbox26_2=-1;
	int inlineCheckbox27_2=-1;
	int inlineCheckbox28_2=-1;
	int inlineCheckbox29_2=-1;
	int inlineCheckbox30_2=-1;
	int inlineCheckbox31_2=-1;
	int inlineCheckbox32_2=-1;
	int inlineCheckbox33_2=-1;
	int inlineCheckbox34_2=-1;
	int inlineCheckbox35_2=-1;
	int inlineCheckbox36_2=-1;
	int inlineCheckbox37_2=-1;
	int inlineCheckbox38_2=-1;
	int inlineCheckbox39_2=-1;
	int inlineCheckbox40_2=-1;
	int inlineCheckbox41_2=-1;
	int inlineCheckbox42_2=-1;
	int inlineCheckbox43_2=-1;
	int inlineCheckbox44_2=-1;
	int inlineCheckbox45_2=-1;
	
	//3번
	int inlineCheckbox1_3=-1;
	int inlineCheckbox2_3=-1;
	int inlineCheckbox3_3=-1;
	int inlineCheckbox4_3=-1;
	int inlineCheckbox5_3=-1;
	int inlineCheckbox6_3=-1;
	int inlineCheckbox7_3=-1;
	int inlineCheckbox8_3=-1;
	int inlineCheckbox9_3=-1;
	int inlineCheckbox10_3=-1;
	int inlineCheckbox11_3=-1;
	int inlineCheckbox12_3=-1;
	int inlineCheckbox13_3=-1;
	int inlineCheckbox14_3=-1;
	int inlineCheckbox15_3=-1;
	int inlineCheckbox16_3=-1;
	int inlineCheckbox17_3=-1;
	int inlineCheckbox18_3=-1;
	int inlineCheckbox19_3=-1;
	int inlineCheckbox20_3=-1;
	int inlineCheckbox21_3=-1;
	int inlineCheckbox22_3=-1;
	int inlineCheckbox23_3=-1;
	int inlineCheckbox24_3=-1;
	int inlineCheckbox25_3=-1;
	int inlineCheckbox26_3=-1;
	int inlineCheckbox27_3=-1;
	int inlineCheckbox28_3=-1;
	int inlineCheckbox29_3=-1;
	int inlineCheckbox30_3=-1;
	int inlineCheckbox31_3=-1;
	int inlineCheckbox32_3=-1;
	int inlineCheckbox33_3=-1;
	int inlineCheckbox34_3=-1;
	int inlineCheckbox35_3=-1;
	int inlineCheckbox36_3=-1;
	int inlineCheckbox37_3=-1;
	int inlineCheckbox38_3=-1;
	int inlineCheckbox39_3=-1;
	int inlineCheckbox40_3=-1;
	int inlineCheckbox41_3=-1;
	int inlineCheckbox42_3=-1;
	int inlineCheckbox43_3=-1;
	int inlineCheckbox44_3=-1;
	int inlineCheckbox45_3=-1;
	
	//4번
	int inlineCheckbox1_4=-1;
	int inlineCheckbox2_4=-1;
	int inlineCheckbox3_4=-1;
	int inlineCheckbox4_4=-1;
	int inlineCheckbox5_4=-1;
	int inlineCheckbox6_4=-1;
	int inlineCheckbox7_4=-1;
	int inlineCheckbox8_4=-1;
	int inlineCheckbox9_4=-1;
	int inlineCheckbox10_4=-1;
	int inlineCheckbox11_4=-1;
	int inlineCheckbox12_4=-1;
	int inlineCheckbox13_4=-1;
	int inlineCheckbox14_4=-1;
	int inlineCheckbox15_4=-1;
	int inlineCheckbox16_4=-1;
	int inlineCheckbox17_4=-1;
	int inlineCheckbox18_4=-1;
	int inlineCheckbox19_4=-1;
	int inlineCheckbox20_4=-1;
	int inlineCheckbox21_4=-1;
	int inlineCheckbox22_4=-1;
	int inlineCheckbox23_4=-1;
	int inlineCheckbox24_4=-1;
	int inlineCheckbox25_4=-1;
	int inlineCheckbox26_4=-1;
	int inlineCheckbox27_4=-1;
	int inlineCheckbox28_4=-1;
	int inlineCheckbox29_4=-1;
	int inlineCheckbox30_4=-1;
	int inlineCheckbox31_4=-1;
	int inlineCheckbox32_4=-1;
	int inlineCheckbox33_4=-1;
	int inlineCheckbox34_4=-1;
	int inlineCheckbox35_4=-1;
	int inlineCheckbox36_4=-1;
	int inlineCheckbox37_4=-1;
	int inlineCheckbox38_4=-1;
	int inlineCheckbox39_4=-1;
	int inlineCheckbox40_4=-1;
	int inlineCheckbox41_4=-1;
	int inlineCheckbox42_4=-1;
	int inlineCheckbox43_4=-1;
	int inlineCheckbox44_4=-1;
	int inlineCheckbox45_4=-1;
	
	//5번
	int inlineCheckbox1_5=-1;
	int inlineCheckbox2_5=-1;
	int inlineCheckbox3_5=-1;
	int inlineCheckbox4_5=-1;
	int inlineCheckbox5_5=-1;
	int inlineCheckbox6_5=-1;
	int inlineCheckbox7_5=-1;
	int inlineCheckbox8_5=-1;
	int inlineCheckbox9_5=-1;
	int inlineCheckbox10_5=-1;
	int inlineCheckbox11_5=-1;
	int inlineCheckbox12_5=-1;
	int inlineCheckbox13_5=-1;
	int inlineCheckbox14_5=-1;
	int inlineCheckbox15_5=-1;
	int inlineCheckbox16_5=-1;
	int inlineCheckbox17_5=-1;
	int inlineCheckbox18_5=-1;
	int inlineCheckbox19_5=-1;
	int inlineCheckbox20_5=-1;
	int inlineCheckbox21_5=-1;
	int inlineCheckbox22_5=-1;
	int inlineCheckbox23_5=-1;
	int inlineCheckbox24_5=-1;
	int inlineCheckbox25_5=-1;
	int inlineCheckbox26_5=-1;
	int inlineCheckbox27_5=-1;
	int inlineCheckbox28_5=-1;
	int inlineCheckbox29_5=-1;
	int inlineCheckbox30_5=-1;
	int inlineCheckbox31_5=-1;
	int inlineCheckbox32_5=-1;
	int inlineCheckbox33_5=-1;
	int inlineCheckbox34_5=-1;
	int inlineCheckbox35_5=-1;
	int inlineCheckbox36_5=-1;
	int inlineCheckbox37_5=-1;
	int inlineCheckbox38_5=-1;
	int inlineCheckbox39_5=-1;
	int inlineCheckbox40_5=-1;
	int inlineCheckbox41_5=-1;
	int inlineCheckbox42_5=-1;
	int inlineCheckbox43_5=-1;
	int inlineCheckbox44_5=-1;
	int inlineCheckbox45_5=-1;
	
	//6번
	int inlineCheckbox1_6=-1;
	int inlineCheckbox2_6=-1;
	int inlineCheckbox3_6=-1;
	int inlineCheckbox4_6=-1;
	int inlineCheckbox5_6=-1;
	int inlineCheckbox6_6=-1;
	int inlineCheckbox7_6=-1;
	int inlineCheckbox8_6=-1;
	int inlineCheckbox9_6=-1;
	int inlineCheckbox10_6=-1;
	int inlineCheckbox11_6=-1;
	int inlineCheckbox12_6=-1;
	int inlineCheckbox13_6=-1;
	int inlineCheckbox14_6=-1;
	int inlineCheckbox15_6=-1;
	int inlineCheckbox16_6=-1;
	int inlineCheckbox17_6=-1;
	int inlineCheckbox18_6=-1;
	int inlineCheckbox19_6=-1;
	int inlineCheckbox20_6=-1;
	int inlineCheckbox21_6=-1;
	int inlineCheckbox22_6=-1;
	int inlineCheckbox23_6=-1;
	int inlineCheckbox24_6=-1;
	int inlineCheckbox25_6=-1;
	int inlineCheckbox26_6=-1;
	int inlineCheckbox27_6=-1;
	int inlineCheckbox28_6=-1;
	int inlineCheckbox29_6=-1;
	int inlineCheckbox30_6=-1;
	int inlineCheckbox31_6=-1;
	int inlineCheckbox32_6=-1;
	int inlineCheckbox33_6=-1;
	int inlineCheckbox34_6=-1;
	int inlineCheckbox35_6=-1;
	int inlineCheckbox36_6=-1;
	int inlineCheckbox37_6=-1;
	int inlineCheckbox38_6=-1;
	int inlineCheckbox39_6=-1;
	int inlineCheckbox40_6=-1;
	int inlineCheckbox41_6=-1;
	int inlineCheckbox42_6=-1;
	int inlineCheckbox43_6=-1;
	int inlineCheckbox44_6=-1;
	int inlineCheckbox45_6=-1;
	
	//7번
	int inlineCheckbox1_7=-1;
	int inlineCheckbox2_7=-1;
	int inlineCheckbox3_7=-1;
	int inlineCheckbox4_7=-1;
	int inlineCheckbox5_7=-1;
	int inlineCheckbox6_7=-1;
	int inlineCheckbox7_7=-1;
	int inlineCheckbox8_7=-1;
	int inlineCheckbox9_7=-1;
	int inlineCheckbox10_7=-1;
	int inlineCheckbox11_7=-1;
	int inlineCheckbox12_7=-1;
	int inlineCheckbox13_7=-1;
	int inlineCheckbox14_7=-1;
	int inlineCheckbox15_7=-1;
	int inlineCheckbox16_7=-1;
	int inlineCheckbox17_7=-1;
	int inlineCheckbox18_7=-1;
	int inlineCheckbox19_7=-1;
	int inlineCheckbox20_7=-1;
	int inlineCheckbox21_7=-1;
	int inlineCheckbox22_7=-1;
	int inlineCheckbox23_7=-1;
	int inlineCheckbox24_7=-1;
	int inlineCheckbox25_7=-1;
	int inlineCheckbox26_7=-1;
	int inlineCheckbox27_7=-1;
	int inlineCheckbox28_7=-1;
	int inlineCheckbox29_7=-1;
	int inlineCheckbox30_7=-1;
	int inlineCheckbox31_7=-1;
	int inlineCheckbox32_7=-1;
	int inlineCheckbox33_7=-1;
	int inlineCheckbox34_7=-1;
	int inlineCheckbox35_7=-1;
	int inlineCheckbox36_7=-1;
	int inlineCheckbox37_7=-1;
	int inlineCheckbox38_7=-1;
	int inlineCheckbox39_7=-1;
	int inlineCheckbox40_7=-1;
	int inlineCheckbox41_7=-1;
	int inlineCheckbox42_7=-1;
	int inlineCheckbox43_7=-1;
	int inlineCheckbox44_7=-1;
	int inlineCheckbox45_7=-1;
	
	//8번
	int inlineCheckbox1_8=-1;
	int inlineCheckbox2_8=-1;
	int inlineCheckbox3_8=-1;
	int inlineCheckbox4_8=-1;
	int inlineCheckbox5_8=-1;
	int inlineCheckbox6_8=-1;
	int inlineCheckbox7_8=-1;
	int inlineCheckbox8_8=-1;
	int inlineCheckbox9_8=-1;
	int inlineCheckbox10_8=-1;
	int inlineCheckbox11_8=-1;
	int inlineCheckbox12_8=-1;
	int inlineCheckbox13_8=-1;
	int inlineCheckbox14_8=-1;
	int inlineCheckbox15_8=-1;
	int inlineCheckbox16_8=-1;
	int inlineCheckbox17_8=-1;
	int inlineCheckbox18_8=-1;
	int inlineCheckbox19_8=-1;
	int inlineCheckbox20_8=-1;
	int inlineCheckbox21_8=-1;
	int inlineCheckbox22_8=-1;
	int inlineCheckbox23_8=-1;
	int inlineCheckbox24_8=-1;
	int inlineCheckbox25_8=-1;
	int inlineCheckbox26_8=-1;
	int inlineCheckbox27_8=-1;
	int inlineCheckbox28_8=-1;
	int inlineCheckbox29_8=-1;
	int inlineCheckbox30_8=-1;
	int inlineCheckbox31_8=-1;
	int inlineCheckbox32_8=-1;
	int inlineCheckbox33_8=-1;
	int inlineCheckbox34_8=-1;
	int inlineCheckbox35_8=-1;
	int inlineCheckbox36_8=-1;
	int inlineCheckbox37_8=-1;
	int inlineCheckbox38_8=-1;
	int inlineCheckbox39_8=-1;
	int inlineCheckbox40_8=-1;
	int inlineCheckbox41_8=-1;
	int inlineCheckbox42_8=-1;
	int inlineCheckbox43_8=-1;
	int inlineCheckbox44_8=-1;
	int inlineCheckbox45_8=-1;
	
	//9번
	int inlineCheckbox1_9=-1;
	int inlineCheckbox2_9=-1;
	int inlineCheckbox3_9=-1;
	int inlineCheckbox4_9=-1;
	int inlineCheckbox5_9=-1;
	int inlineCheckbox6_9=-1;
	int inlineCheckbox7_9=-1;
	int inlineCheckbox8_9=-1;
	int inlineCheckbox9_9=-1;
	int inlineCheckbox10_9=-1;
	int inlineCheckbox11_9=-1;
	int inlineCheckbox12_9=-1;
	int inlineCheckbox13_9=-1;
	int inlineCheckbox14_9=-1;
	int inlineCheckbox15_9=-1;
	int inlineCheckbox16_9=-1;
	int inlineCheckbox17_9=-1;
	int inlineCheckbox18_9=-1;
	int inlineCheckbox19_9=-1;
	int inlineCheckbox20_9=-1;
	int inlineCheckbox21_9=-1;
	int inlineCheckbox22_9=-1;
	int inlineCheckbox23_9=-1;
	int inlineCheckbox24_9=-1;
	int inlineCheckbox25_9=-1;
	int inlineCheckbox26_9=-1;
	int inlineCheckbox27_9=-1;
	int inlineCheckbox28_9=-1;
	int inlineCheckbox29_9=-1;
	int inlineCheckbox30_9=-1;
	int inlineCheckbox31_9=-1;
	int inlineCheckbox32_9=-1;
	int inlineCheckbox33_9=-1;
	int inlineCheckbox34_9=-1;
	int inlineCheckbox35_9=-1;
	int inlineCheckbox36_9=-1;
	int inlineCheckbox37_9=-1;
	int inlineCheckbox38_9=-1;
	int inlineCheckbox39_9=-1;
	int inlineCheckbox40_9=-1;
	int inlineCheckbox41_9=-1;
	int inlineCheckbox42_9=-1;
	int inlineCheckbox43_9=-1;
	int inlineCheckbox44_9=-1;
	int inlineCheckbox45_9=-1;
	
	//10번
	
	int inlineCheckbox1_10=-1;
	int inlineCheckbox2_10=-1;
	int inlineCheckbox3_10=-1;
	int inlineCheckbox4_10=-1;
	int inlineCheckbox5_10=-1;
	int inlineCheckbox6_10=-1;
	int inlineCheckbox7_10=-1;
	int inlineCheckbox8_10=-1;
	int inlineCheckbox9_10=-1;
	int inlineCheckbox10_10=-1;
	int inlineCheckbox11_10=-1;
	int inlineCheckbox12_10=-1;
	int inlineCheckbox13_10=-1;
	int inlineCheckbox14_10=-1;
	int inlineCheckbox15_10=-1;
	int inlineCheckbox16_10=-1;
	int inlineCheckbox17_10=-1;
	int inlineCheckbox18_10=-1;
	int inlineCheckbox19_10=-1;
	int inlineCheckbox20_10=-1;
	int inlineCheckbox21_10=-1;
	int inlineCheckbox22_10=-1;
	int inlineCheckbox23_10=-1;
	int inlineCheckbox24_10=-1;
	int inlineCheckbox25_10=-1;
	int inlineCheckbox26_10=-1;
	int inlineCheckbox27_10=-1;
	int inlineCheckbox28_10=-1;
	int inlineCheckbox29_10=-1;
	int inlineCheckbox30_10=-1;
	int inlineCheckbox31_10=-1;
	int inlineCheckbox32_10=-1;
	int inlineCheckbox33_10=-1;
	int inlineCheckbox34_10=-1;
	int inlineCheckbox35_10=-1;
	int inlineCheckbox36_10=-1;
	int inlineCheckbox37_10=-1;
	int inlineCheckbox38_10=-1;
	int inlineCheckbox39_10=-1;
	int inlineCheckbox40_10=-1;
	int inlineCheckbox41_10=-1;
	int inlineCheckbox42_10=-1;
	int inlineCheckbox43_10=-1;
	int inlineCheckbox44_10=-1;
	int inlineCheckbox45_10=-1;
	
	int check_cnt1=0;
	int check_cnt2=0;
	int check_cnt3=0;
	int check_cnt4=0;
	int check_cnt5=0;
	int check_cnt6=0;
	int check_cnt7=0;
	int check_cnt8=0;
	int check_cnt9=0;
	int check_cnt10=0;
	int current_1=0;
	int current_2=0;
	int current_3=0;
	int current_4=0;
	int current_5=0;
	int current_6=0;
	int current_7=0;
	int current_8=0;
	int current_9=0;
	int current_10=0;
	int arr1[]=new int[1000000];
	int arr2[]=new int[1000000];
	int arr3[]=new int[1000000];
	int arr4[]=new int[1000000];
	int arr5[]=new int[1000000];
	int arr6[]=new int[1000000];
	int arr7[]=new int[1000000];
	int arr8[]=new int[1000000];
	int arr9[]=new int[1000000];
	int arr10[]=new int[1000000];
	
	
	if(request.getParameter("inlineCheckbox1_1") == null ) {
		inlineCheckbox1_1=-1;
	}
	else {
		inlineCheckbox1_1 = Integer.parseInt(request.getParameter("inlineCheckbox1_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox1_1;
	}
	
	if(request.getParameter("inlineCheckbox2_1") == null ) {
		inlineCheckbox2_1=-1;
	}
	else {
		inlineCheckbox2_1 = Integer.parseInt(request.getParameter("inlineCheckbox2_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox2_1;
	}

	if(request.getParameter("inlineCheckbox3_1") == null ) {
		inlineCheckbox3_1=-1;
	}
	else {
		inlineCheckbox3_1 = Integer.parseInt(request.getParameter("inlineCheckbox3_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox3_1;
	}

	if(request.getParameter("inlineCheckbox4_1") == null ) {
		inlineCheckbox4_1=-1;
	}
	else {
		inlineCheckbox4_1 = Integer.parseInt(request.getParameter("inlineCheckbox4_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox4_1;
	}

	if(request.getParameter("inlineCheckbox5_1") == null ) {
		inlineCheckbox5_1=-1;
	}
	else {
		inlineCheckbox5_1 = Integer.parseInt(request.getParameter("inlineCheckbox5_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox5_1;
	}

	if(request.getParameter("inlineCheckbox6_1") == null ) {
		inlineCheckbox6_1=-1;
		
	}
	else {
		inlineCheckbox6_1 = Integer.parseInt(request.getParameter("inlineCheckbox6_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox6_1;
	}

	if(request.getParameter("inlineCheckbox7_1") == null ) {
		inlineCheckbox7_1=-1;
	}
	else {
		inlineCheckbox7_1 = Integer.parseInt(request.getParameter("inlineCheckbox7_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox7_1;
	}
	
	if(request.getParameter("inlineCheckbox8_1") == null ) {
		inlineCheckbox8_1=-1;
	}
	else {
		inlineCheckbox8_1 = Integer.parseInt(request.getParameter("inlineCheckbox8_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox8_1;
	}

	if(request.getParameter("inlineCheckbox9_1") == null ) {
		inlineCheckbox9_1=-1;
	}
	else {
		inlineCheckbox9_1 = Integer.parseInt(request.getParameter("inlineCheckbox9_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox9_1;
	}
	
	if(request.getParameter("inlineCheckbox10_1") == null ) {
		inlineCheckbox10_1=-1;
	}
	else {
		inlineCheckbox10_1 = Integer.parseInt(request.getParameter("inlineCheckbox10_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox10_1;
	}
	
	if(request.getParameter("inlineCheckbox11_1") == null ) {
		inlineCheckbox11_1=-1;
	}
	else {
		inlineCheckbox11_1 = Integer.parseInt(request.getParameter("inlineCheckbox11_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox11_1;
	}

	if(request.getParameter("inlineCheckbox12_1") == null ) {
		inlineCheckbox12_1=-1;
	}
	else {
		inlineCheckbox12_1 = Integer.parseInt(request.getParameter("inlineCheckbox12_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox12_1;
	}

	if(request.getParameter("inlineCheckbox13_1") == null ) {
		inlineCheckbox13_1=-1;
	}
	else {
		inlineCheckbox13_1 = Integer.parseInt(request.getParameter("inlineCheckbox13_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox13_1;
	}

	if(request.getParameter("inlineCheckbox14_1") == null ) {
		inlineCheckbox14_1=-1;
	}
	else {
		inlineCheckbox14_1 = Integer.parseInt(request.getParameter("inlineCheckbox14_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox14_1;
	}

	if(request.getParameter("inlineCheckbox15_1") == null ) {
		inlineCheckbox15_1=-1;
	}
	else {
		inlineCheckbox15_1 = Integer.parseInt(request.getParameter("inlineCheckbox15_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox15_1;
	}

	if(request.getParameter("inlineCheckbox16_1") == null ) {
		inlineCheckbox16_1=-1;
		
	}
	else {
		inlineCheckbox16_1 = Integer.parseInt(request.getParameter("inlineCheckbox16_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox16_1;
	}

	if(request.getParameter("inlineCheckbox17_1") == null ) {
		inlineCheckbox17_1=-1;
	}
	else {
		inlineCheckbox17_1 = Integer.parseInt(request.getParameter("inlineCheckbox17_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox17_1;
	}
	
	if(request.getParameter("inlineCheckbox18_1") == null ) {
		inlineCheckbox18_1=-1;
	}
	else {
		inlineCheckbox18_1 = Integer.parseInt(request.getParameter("inlineCheckbox18_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox18_1;
	}
	
	if(request.getParameter("inlineCheckbox19_1") == null ) {
		inlineCheckbox19_1=-1;
	}
	else {
		inlineCheckbox19_1 = Integer.parseInt(request.getParameter("inlineCheckbox19_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox19_1;
	}
	
	if(request.getParameter("inlineCheckbox20_1") == null ) {
		inlineCheckbox20_1=-1;
	}
	else {
		inlineCheckbox20_1 = Integer.parseInt(request.getParameter("inlineCheckbox20_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox20_1;
	}
	
	if(request.getParameter("inlineCheckbox21_1") == null ) {
		inlineCheckbox21_1=-1;
	}
	else {
		inlineCheckbox21_1 = Integer.parseInt(request.getParameter("inlineCheckbox21_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox21_1;
	}

	if(request.getParameter("inlineCheckbox22_1") == null ) {
		inlineCheckbox22_1=-1;
	}
	else {
		inlineCheckbox22_1 = Integer.parseInt(request.getParameter("inlineCheckbox22_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox22_1;
	}

	if(request.getParameter("inlineCheckbox23_1") == null ) {
		inlineCheckbox23_1=-1;
	}
	else {
		inlineCheckbox23_1 = Integer.parseInt(request.getParameter("inlineCheckbox23_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox23_1;
	}

	if(request.getParameter("inlineCheckbox24_1") == null ) {
		inlineCheckbox24_1=-1;
	}
	else {
		inlineCheckbox24_1 = Integer.parseInt(request.getParameter("inlineCheckbox24_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox24_1;
	}

	if(request.getParameter("inlineCheckbox25_1") == null ) {
		inlineCheckbox25_1=-1;
	}
	else {
		inlineCheckbox25_1 = Integer.parseInt(request.getParameter("inlineCheckbox25_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox25_1;
	}

	if(request.getParameter("inlineCheckbox26_1") == null ) {
		inlineCheckbox26_1=-1;
		
	}
	else {
		inlineCheckbox26_1 = Integer.parseInt(request.getParameter("inlineCheckbox26_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox26_1;
	}

	if(request.getParameter("inlineCheckbox27_1") == null ) {
		inlineCheckbox27_1=-1;
	}
	else {
		inlineCheckbox27_1 = Integer.parseInt(request.getParameter("inlineCheckbox27_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox27_1;
	}
	
	if(request.getParameter("inlineCheckbox28_1") == null ) {
		inlineCheckbox28_1=-1;
	}
	else {
		inlineCheckbox28_1 = Integer.parseInt(request.getParameter("inlineCheckbox28_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox28_1;
	}
	
	if(request.getParameter("inlineCheckbox29_1") == null ) {
		inlineCheckbox29_1=-1;
	}
	else {
		inlineCheckbox29_1 = Integer.parseInt(request.getParameter("inlineCheckbox29_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox29_1;
	}
	
	if(request.getParameter("inlineCheckbox30_1") == null ) {
		inlineCheckbox30_1=-1;
	}
	else {
		inlineCheckbox30_1 = Integer.parseInt(request.getParameter("inlineCheckbox30_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox30_1;
	}
	
	if(request.getParameter("inlineCheckbox31_1") == null ) {
		inlineCheckbox31_1=-1;
	}
	else {
		inlineCheckbox31_1 = Integer.parseInt(request.getParameter("inlineCheckbox31_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox31_1;
	}

	if(request.getParameter("inlineCheckbox32_1") == null ) {
		inlineCheckbox32_1=-1;
	}
	else {
		inlineCheckbox32_1 = Integer.parseInt(request.getParameter("inlineCheckbox32_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox32_1;
	}

	if(request.getParameter("inlineCheckbox33_1") == null ) {
		inlineCheckbox33_1=-1;
	}
	else {
		inlineCheckbox33_1 = Integer.parseInt(request.getParameter("inlineCheckbox33_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox33_1;
	}

	if(request.getParameter("inlineCheckbox34_1") == null ) {
		inlineCheckbox34_1=-1;
	}
	else {
		inlineCheckbox34_1 = Integer.parseInt(request.getParameter("inlineCheckbox34_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox34_1;
	}

	if(request.getParameter("inlineCheckbox35_1") == null ) {
		inlineCheckbox35_1=-1;
	}
	else {
		inlineCheckbox35_1 = Integer.parseInt(request.getParameter("inlineCheckbox35_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox35_1;
	}

	if(request.getParameter("inlineCheckbox36_1") == null ) {
		inlineCheckbox36_1=-1;
		
	}
	else {
		inlineCheckbox36_1 = Integer.parseInt(request.getParameter("inlineCheckbox36_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox36_1;
	}

	if(request.getParameter("inlineCheckbox37_1") == null ) {
		inlineCheckbox37_1=-1;
	}
	else {
		inlineCheckbox37_1 = Integer.parseInt(request.getParameter("inlineCheckbox37_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox37_1;
	}
	
	if(request.getParameter("inlineCheckbox38_1") == null ) {
		inlineCheckbox38_1=-1;
	}
	else {
		inlineCheckbox38_1 = Integer.parseInt(request.getParameter("inlineCheckbox38_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox38_1;
	}
	
	if(request.getParameter("inlineCheckbox39_1") == null ) {
		inlineCheckbox39_1=-1;
	}
	else {
		inlineCheckbox39_1 = Integer.parseInt(request.getParameter("inlineCheckbox39_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox39_1;
	}
	
	if(request.getParameter("inlineCheckbox40_1") == null ) {
		inlineCheckbox40_1=-1;
	}
	else {
		inlineCheckbox40_1 = Integer.parseInt(request.getParameter("inlineCheckbox40_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox40_1;
	}
	
	if(request.getParameter("inlineCheckbox41_1") == null ) {
		inlineCheckbox41_1=-1;
	}
	else {
		inlineCheckbox41_1 = Integer.parseInt(request.getParameter("inlineCheckbox41_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox41_1;
	}

	if(request.getParameter("inlineCheckbox42_1") == null ) {
		inlineCheckbox42_1=-1;
	}
	else {
		inlineCheckbox42_1 = Integer.parseInt(request.getParameter("inlineCheckbox42_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox42_1;
	}

	if(request.getParameter("inlineCheckbox43_1") == null ) {
		inlineCheckbox43_1=-1;
	}
	else {
		inlineCheckbox43_1 = Integer.parseInt(request.getParameter("inlineCheckbox43_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox43_1;
	}

	if(request.getParameter("inlineCheckbox44_1") == null ) {
		inlineCheckbox4_1=-1;
	}
	else {
		inlineCheckbox44_1 = Integer.parseInt(request.getParameter("inlineCheckbox44_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox44_1;
	}

	if(request.getParameter("inlineCheckbox45_1") == null ) {
		inlineCheckbox45_1=-1;
	}
	else {
		inlineCheckbox45_1 = Integer.parseInt(request.getParameter("inlineCheckbox45_1"));
		check_cnt1++;
		arr1[current_1++]=inlineCheckbox45_1;
	}
 
	//2번째 용지
	if(request.getParameter("inlineCheckbox1_2") == null ) {
		inlineCheckbox1_2=-1;
	}
	else {
		inlineCheckbox1_2 = Integer.parseInt(request.getParameter("inlineCheckbox1_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox1_2;
	}
	
	if(request.getParameter("inlineCheckbox2_2") == null ) {
		inlineCheckbox2_2=-1;
	}
	else {
		inlineCheckbox2_2 = Integer.parseInt(request.getParameter("inlineCheckbox2_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox2_2;
	}

	if(request.getParameter("inlineCheckbox3_2") == null ) {
		inlineCheckbox3_2=-1;
	}
	else {
		inlineCheckbox3_2 = Integer.parseInt(request.getParameter("inlineCheckbox3_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox3_2;
	}

	if(request.getParameter("inlineCheckbox4_2") == null ) {
		inlineCheckbox4_2=-1;
	}
	else {
		inlineCheckbox4_2 = Integer.parseInt(request.getParameter("inlineCheckbox4_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox4_2;
	}

	if(request.getParameter("inlineCheckbox5_2") == null ) {
		inlineCheckbox5_2=-1;
	}
	else {
		inlineCheckbox5_2 = Integer.parseInt(request.getParameter("inlineCheckbox5_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox5_2;
	}

	if(request.getParameter("inlineCheckbox6_2") == null ) {
		inlineCheckbox6_2=-1;
		
	}
	else {
		inlineCheckbox6_2 = Integer.parseInt(request.getParameter("inlineCheckbox6_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox6_2;
	}

	if(request.getParameter("inlineCheckbox7_2") == null ) {
		inlineCheckbox7_2=-1;
	}
	else {
		inlineCheckbox7_2 = Integer.parseInt(request.getParameter("inlineCheckbox7_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox7_2;
	}
	
	if(request.getParameter("inlineCheckbox8_2") == null ) {
		inlineCheckbox8_2=-1;
	}
	else {
		inlineCheckbox8_2 = Integer.parseInt(request.getParameter("inlineCheckbox8_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox8_2;
	}

	if(request.getParameter("inlineCheckbox9_2") == null ) {
		inlineCheckbox9_2=-1;
	}
	else {
		inlineCheckbox9_2 = Integer.parseInt(request.getParameter("inlineCheckbox9_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox9_2;
	}
	
	if(request.getParameter("inlineCheckbox10_2") == null ) {
		inlineCheckbox10_2=-1;
	}
	else {
		inlineCheckbox10_2 = Integer.parseInt(request.getParameter("inlineCheckbox10_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox10_2;
	}
	
	if(request.getParameter("inlineCheckbox11_2") == null ) {
		inlineCheckbox11_2=-1;
	}
	else {
		inlineCheckbox11_2 = Integer.parseInt(request.getParameter("inlineCheckbox11_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox11_2;
	}

	if(request.getParameter("inlineCheckbox12_2") == null ) {
		inlineCheckbox12_2=-1;
	}
	else {
		inlineCheckbox12_2 = Integer.parseInt(request.getParameter("inlineCheckbox12_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox12_2;
	}

	if(request.getParameter("inlineCheckbox13_2") == null ) {
		inlineCheckbox13_2=-1;
	}
	else {
		inlineCheckbox13_2 = Integer.parseInt(request.getParameter("inlineCheckbox13_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox13_2;
	}

	if(request.getParameter("inlineCheckbox14_2") == null ) {
		inlineCheckbox14_2=-1;
	}
	else {
		inlineCheckbox14_2 = Integer.parseInt(request.getParameter("inlineCheckbox14_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox14_2;
	}

	if(request.getParameter("inlineCheckbox15_2") == null ) {
		inlineCheckbox15_2=-1;
	}
	else {
		inlineCheckbox15_2 = Integer.parseInt(request.getParameter("inlineCheckbox15_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox15_2;
	}

	if(request.getParameter("inlineCheckbox16_2") == null ) {
		inlineCheckbox16_2=-1;
		
	}
	else {
		inlineCheckbox16_2 = Integer.parseInt(request.getParameter("inlineCheckbox16_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox16_2;
	}

	if(request.getParameter("inlineCheckbox17_2") == null ) {
		inlineCheckbox17_2=-1;
	}
	else {
		inlineCheckbox17_2 = Integer.parseInt(request.getParameter("inlineCheckbox17_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox17_2;
	}
	
	if(request.getParameter("inlineCheckbox18_2") == null ) {
		inlineCheckbox18_2=-1;
	}
	else {
		inlineCheckbox18_2 = Integer.parseInt(request.getParameter("inlineCheckbox18_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox18_2;
	}
	
	if(request.getParameter("inlineCheckbox19_2") == null ) {
		inlineCheckbox19_2=-1;
	}
	else {
		inlineCheckbox19_2 = Integer.parseInt(request.getParameter("inlineCheckbox19_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox19_2;
	}
	
	if(request.getParameter("inlineCheckbox20_2") == null ) {
		inlineCheckbox20_2=-1;
	}
	else {
		inlineCheckbox20_2 = Integer.parseInt(request.getParameter("inlineCheckbox20_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox20_2;
	}
	
	if(request.getParameter("inlineCheckbox21_2") == null ) {
		inlineCheckbox21_2=-1;
	}
	else {
		inlineCheckbox21_2 = Integer.parseInt(request.getParameter("inlineCheckbox21_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox21_2;
	}

	if(request.getParameter("inlineCheckbox22_2") == null ) {
		inlineCheckbox22_2=-1;
	}
	else {
		inlineCheckbox22_2 = Integer.parseInt(request.getParameter("inlineCheckbox22_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox22_2;
	}

	if(request.getParameter("inlineCheckbox23_2") == null ) {
		inlineCheckbox23_2=-1;
	}
	else {
		inlineCheckbox23_2 = Integer.parseInt(request.getParameter("inlineCheckbox23_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox23_2;
	}

	if(request.getParameter("inlineCheckbox24_2") == null ) {
		inlineCheckbox24_2=-1;
	}
	else {
		inlineCheckbox24_2 = Integer.parseInt(request.getParameter("inlineCheckbox24_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox24_2;
	}

	if(request.getParameter("inlineCheckbox25_2") == null ) {
		inlineCheckbox25_2=-1;
	}
	else {
		inlineCheckbox25_2 = Integer.parseInt(request.getParameter("inlineCheckbox25_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox25_2;
	}

	if(request.getParameter("inlineCheckbox26_2") == null ) {
		inlineCheckbox26_2=-1;
		
	}
	else {
		inlineCheckbox26_2 = Integer.parseInt(request.getParameter("inlineCheckbox26_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox26_2;
	}

	if(request.getParameter("inlineCheckbox27_2") == null ) {
		inlineCheckbox27_2=-1;
	}
	else {
		inlineCheckbox27_2 = Integer.parseInt(request.getParameter("inlineCheckbox27_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox27_2;
	}
	
	if(request.getParameter("inlineCheckbox28_2") == null ) {
		inlineCheckbox28_2=-1;
	}
	else {
		inlineCheckbox28_2 = Integer.parseInt(request.getParameter("inlineCheckbox28_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox28_2;
	}
	
	if(request.getParameter("inlineCheckbox29_2") == null ) {
		inlineCheckbox29_2=-1;
	}
	else {
		inlineCheckbox29_2 = Integer.parseInt(request.getParameter("inlineCheckbox29_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox29_2;
	}
	
	if(request.getParameter("inlineCheckbox30_2") == null ) {
		inlineCheckbox30_2=-1;
	}
	else {
		inlineCheckbox30_2 = Integer.parseInt(request.getParameter("inlineCheckbox30_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox30_2;
	}
	
	if(request.getParameter("inlineCheckbox31_2") == null ) {
		inlineCheckbox31_2=-1;
	}
	else {
		inlineCheckbox31_2 = Integer.parseInt(request.getParameter("inlineCheckbox31_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox31_2;
	}

	if(request.getParameter("inlineCheckbox32_2") == null ) {
		inlineCheckbox32_2=-1;
	}
	else {
		inlineCheckbox32_2 = Integer.parseInt(request.getParameter("inlineCheckbox32_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox32_2;
	}

	if(request.getParameter("inlineCheckbox33_2") == null ) {
		inlineCheckbox33_2=-1;
	}
	else {
		inlineCheckbox33_2 = Integer.parseInt(request.getParameter("inlineCheckbox33_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox33_2;
	}

	if(request.getParameter("inlineCheckbox34_2") == null ) {
		inlineCheckbox34_2=-1;
	}
	else {
		inlineCheckbox34_2 = Integer.parseInt(request.getParameter("inlineCheckbox34_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox34_2;
	}

	if(request.getParameter("inlineCheckbox35_2") == null ) {
		inlineCheckbox35_2=-1;
	}
	else {
		inlineCheckbox35_2 = Integer.parseInt(request.getParameter("inlineCheckbox35_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox35_2;
	}

	if(request.getParameter("inlineCheckbox36_2") == null ) {
		inlineCheckbox36_2=-1;
		
	}
	else {
		inlineCheckbox36_2 = Integer.parseInt(request.getParameter("inlineCheckbox36_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox36_2;
	}

	if(request.getParameter("inlineCheckbox37_2") == null ) {
		inlineCheckbox37_2=-1;
	}
	else {
		inlineCheckbox37_2 = Integer.parseInt(request.getParameter("inlineCheckbox37_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox37_2;
	}
	
	if(request.getParameter("inlineCheckbox38_2") == null ) {
		inlineCheckbox38_2=-1;
	}
	else {
		inlineCheckbox38_2 = Integer.parseInt(request.getParameter("inlineCheckbox38_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox38_2;
	}
	
	if(request.getParameter("inlineCheckbox39_2") == null ) {
		inlineCheckbox39_2=-1;
	}
	else {
		inlineCheckbox39_2 = Integer.parseInt(request.getParameter("inlineCheckbox39_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox39_2;
	}
	
	if(request.getParameter("inlineCheckbox40_2") == null ) {
		inlineCheckbox40_2=-1;
	}
	else {
		inlineCheckbox40_2 = Integer.parseInt(request.getParameter("inlineCheckbox40_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox40_1;
	}
	
	if(request.getParameter("inlineCheckbox41_2") == null ) {
		inlineCheckbox41_2=-1;
	}
	else {
		inlineCheckbox41_2 = Integer.parseInt(request.getParameter("inlineCheckbox41_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox41_2;
	}

	if(request.getParameter("inlineCheckbox42_2") == null ) {
		inlineCheckbox42_2=-1;
	}
	else {
		inlineCheckbox42_2 = Integer.parseInt(request.getParameter("inlineCheckbox42_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox42_2;
	}

	if(request.getParameter("inlineCheckbox43_2") == null ) {
		inlineCheckbox43_2=-1;
	}
	else {
		inlineCheckbox43_2 = Integer.parseInt(request.getParameter("inlineCheckbox43_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox43_2;
	}

	if(request.getParameter("inlineCheckbox44_2") == null ) {
		inlineCheckbox4_2=-1;
	}
	else {
		inlineCheckbox44_2 = Integer.parseInt(request.getParameter("inlineCheckbox44_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox44_2;
	}

	if(request.getParameter("inlineCheckbox45_2") == null ) {
		inlineCheckbox45_2=-1;
	}
	else {
		inlineCheckbox45_2 = Integer.parseInt(request.getParameter("inlineCheckbox45_2"));
		check_cnt2++;
		arr2[current_2++]=inlineCheckbox45_2;
	}
	
	
	//3번재 용지
	if(request.getParameter("inlineCheckbox1_3") == null ) {
		inlineCheckbox1_3=-1;
	}
	else {
		inlineCheckbox1_3 = Integer.parseInt(request.getParameter("inlineCheckbox1_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox1_3;
	}
	
	if(request.getParameter("inlineCheckbox2_3") == null ) {
		inlineCheckbox2_3=-1;
	}
	else {
		inlineCheckbox2_3 = Integer.parseInt(request.getParameter("inlineCheckbox2_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox2_3;
	}

	if(request.getParameter("inlineCheckbox3_3") == null ) {
		inlineCheckbox3_3=-1;
	}
	else {
		inlineCheckbox3_3 = Integer.parseInt(request.getParameter("inlineCheckbox3_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox3_3;
	}

	if(request.getParameter("inlineCheckbox4_3") == null ) {
		inlineCheckbox4_3=-1;
	}
	else {
		inlineCheckbox4_3 = Integer.parseInt(request.getParameter("inlineCheckbox4_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox4_3;
	}

	if(request.getParameter("inlineCheckbox5_3") == null ) {
		inlineCheckbox5_3=-1;
	}
	else {
		inlineCheckbox5_3 = Integer.parseInt(request.getParameter("inlineCheckbox5_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox5_3;
	}

	if(request.getParameter("inlineCheckbox6_3") == null ) {
		inlineCheckbox6_3=-1;
		
	}
	else {
		inlineCheckbox6_3 = Integer.parseInt(request.getParameter("inlineCheckbox6_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox6_3;
	}

	if(request.getParameter("inlineCheckbox7_3") == null ) {
		inlineCheckbox7_3=-1;
	}
	else {
		inlineCheckbox7_3 = Integer.parseInt(request.getParameter("inlineCheckbox7_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox7_3;
	}
	
	if(request.getParameter("inlineCheckbox8_3") == null ) {
		inlineCheckbox8_3=-1;
	}
	else {
		inlineCheckbox8_3 = Integer.parseInt(request.getParameter("inlineCheckbox8_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox8_3;
	}

	if(request.getParameter("inlineCheckbox9_3") == null ) {
		inlineCheckbox9_3=-1;
	}
	else {
		inlineCheckbox9_3 = Integer.parseInt(request.getParameter("inlineCheckbox9_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox9_3;
	}
	
	if(request.getParameter("inlineCheckbox10_3") == null ) {
		inlineCheckbox10_3=-1;
	}
	else {
		inlineCheckbox10_3 = Integer.parseInt(request.getParameter("inlineCheckbox10_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox10_3;
	}
	
	if(request.getParameter("inlineCheckbox11_3") == null ) {
		inlineCheckbox11_3=-1;
	}
	else {
		inlineCheckbox11_3 = Integer.parseInt(request.getParameter("inlineCheckbox11_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox11_3;
	}

	if(request.getParameter("inlineCheckbox12_3") == null ) {
		inlineCheckbox12_3=-1;
	}
	else {
		inlineCheckbox12_3 = Integer.parseInt(request.getParameter("inlineCheckbox12_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox12_3;
	}

	if(request.getParameter("inlineCheckbox13_3") == null ) {
		inlineCheckbox13_3=-1;
	}
	else {
		inlineCheckbox13_3 = Integer.parseInt(request.getParameter("inlineCheckbox13_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox13_3;
	}

	if(request.getParameter("inlineCheckbox14_3") == null ) {
		inlineCheckbox14_3=-1;
	}
	else {
		inlineCheckbox14_3 = Integer.parseInt(request.getParameter("inlineCheckbox14_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox14_3;
	}

	if(request.getParameter("inlineCheckbox15_3") == null ) {
		inlineCheckbox15_3=-1;
	}
	else {
		inlineCheckbox15_3 = Integer.parseInt(request.getParameter("inlineCheckbox15_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox15_3;
	}

	if(request.getParameter("inlineCheckbox16_3") == null ) {
		inlineCheckbox16_3=-1;
		
	}
	else {
		inlineCheckbox16_3 = Integer.parseInt(request.getParameter("inlineCheckbox16_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox16_3;
	}

	if(request.getParameter("inlineCheckbox17_3") == null ) {
		inlineCheckbox17_3=-1;
	}
	else {
		inlineCheckbox17_3 = Integer.parseInt(request.getParameter("inlineCheckbox17_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox17_3;
	}
	
	if(request.getParameter("inlineCheckbox18_3") == null ) {
		inlineCheckbox18_3=-1;
	}
	else {
		inlineCheckbox18_3 = Integer.parseInt(request.getParameter("inlineCheckbox18_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox18_3;
	}
	
	if(request.getParameter("inlineCheckbox19_3") == null ) {
		inlineCheckbox19_3=-1;
	}
	else {
		inlineCheckbox19_3 = Integer.parseInt(request.getParameter("inlineCheckbox19_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox19_3;
	}
	
	if(request.getParameter("inlineCheckbox20_3") == null ) {
		inlineCheckbox20_3=-1;
	}
	else {
		inlineCheckbox20_3 = Integer.parseInt(request.getParameter("inlineCheckbox20_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox20_3;
	}
	
	if(request.getParameter("inlineCheckbox21_3") == null ) {
		inlineCheckbox21_3=-1;
	}
	else {
		inlineCheckbox21_3 = Integer.parseInt(request.getParameter("inlineCheckbox21_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox21_3;
	}

	if(request.getParameter("inlineCheckbox22_3") == null ) {
		inlineCheckbox22_3=-1;
	}
	else {
		inlineCheckbox22_3 = Integer.parseInt(request.getParameter("inlineCheckbox22_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox22_3;
	}

	if(request.getParameter("inlineCheckbox23_3") == null ) {
		inlineCheckbox23_3=-1;
	}
	else {
		inlineCheckbox23_3 = Integer.parseInt(request.getParameter("inlineCheckbox23_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox23_3;
	}

	if(request.getParameter("inlineCheckbox24_3") == null ) {
		inlineCheckbox24_3=-1;
	}
	else {
		inlineCheckbox24_3 = Integer.parseInt(request.getParameter("inlineCheckbox24_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox24_3;
	}

	if(request.getParameter("inlineCheckbox25_3") == null ) {
		inlineCheckbox25_3=-1;
	}
	else {
		inlineCheckbox25_3 = Integer.parseInt(request.getParameter("inlineCheckbox25_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox25_3;
	}

	if(request.getParameter("inlineCheckbox26_3") == null ) {
		inlineCheckbox26_3=-1;
		
	}
	else {
		inlineCheckbox26_3 = Integer.parseInt(request.getParameter("inlineCheckbox26_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox26_3;
	}

	if(request.getParameter("inlineCheckbox27_3") == null ) {
		inlineCheckbox27_3=-1;
	}
	else {
		inlineCheckbox27_3 = Integer.parseInt(request.getParameter("inlineCheckbox27_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox27_3;
	}
	
	if(request.getParameter("inlineCheckbox28_3") == null ) {
		inlineCheckbox28_3=-1;
	}
	else {
		inlineCheckbox28_3 = Integer.parseInt(request.getParameter("inlineCheckbox28_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox28_3;
	}
	
	if(request.getParameter("inlineCheckbox29_3") == null ) {
		inlineCheckbox29_3=-1;
	}
	else {
		inlineCheckbox29_3 = Integer.parseInt(request.getParameter("inlineCheckbox29_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox29_3;
	}
	
	if(request.getParameter("inlineCheckbox30_3") == null ) {
		inlineCheckbox30_3=-1;
	}
	else {
		inlineCheckbox30_3 = Integer.parseInt(request.getParameter("inlineCheckbox30_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox30_3;
	}
	
	if(request.getParameter("inlineCheckbox31_3") == null ) {
		inlineCheckbox31_3=-1;
	}
	else {
		inlineCheckbox31_3 = Integer.parseInt(request.getParameter("inlineCheckbox31_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox31_3;
	}

	if(request.getParameter("inlineCheckbox32_3") == null ) {
		inlineCheckbox32_3=-1;
	}
	else {
		inlineCheckbox32_3 = Integer.parseInt(request.getParameter("inlineCheckbox32_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox32_3;
	}

	if(request.getParameter("inlineCheckbox33_3") == null ) {
		inlineCheckbox33_3=-1;
	}
	else {
		inlineCheckbox33_3 = Integer.parseInt(request.getParameter("inlineCheckbox33_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox33_3;
	}

	if(request.getParameter("inlineCheckbox34_3") == null ) {
		inlineCheckbox34_3=-1;
	}
	else {
		inlineCheckbox34_3 = Integer.parseInt(request.getParameter("inlineCheckbox34_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox34_3;
	}

	if(request.getParameter("inlineCheckbox35_3") == null ) {
		inlineCheckbox35_3=-1;
	}
	else {
		inlineCheckbox35_3 = Integer.parseInt(request.getParameter("inlineCheckbox35_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox35_3;
	}

	if(request.getParameter("inlineCheckbox36_3") == null ) {
		inlineCheckbox36_3=-1;
		
	}
	else {
		inlineCheckbox36_3 = Integer.parseInt(request.getParameter("inlineCheckbox36_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox36_3;
	}

	if(request.getParameter("inlineCheckbox37_3") == null ) {
		inlineCheckbox37_3=-1;
	}
	else {
		inlineCheckbox37_3 = Integer.parseInt(request.getParameter("inlineCheckbox37_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox37_3;
	}
	
	if(request.getParameter("inlineCheckbox38_3") == null ) {
		inlineCheckbox38_3=-1;
	}
	else {
		inlineCheckbox38_3 = Integer.parseInt(request.getParameter("inlineCheckbox38_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox38_3;
	}
	
	if(request.getParameter("inlineCheckbox39_3") == null ) {
		inlineCheckbox39_3=-1;
	}
	else {
		inlineCheckbox39_3 = Integer.parseInt(request.getParameter("inlineCheckbox39_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox39_3;
	}
	
	if(request.getParameter("inlineCheckbox40_3") == null ) {
		inlineCheckbox40_3=-1;
	}
	else {
		inlineCheckbox40_3 = Integer.parseInt(request.getParameter("inlineCheckbox40_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox40_1;
	}
	
	if(request.getParameter("inlineCheckbox41_3") == null ) {
		inlineCheckbox41_3=-1;
	}
	else {
		inlineCheckbox41_3 = Integer.parseInt(request.getParameter("inlineCheckbox41_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox41_3;
	}

	if(request.getParameter("inlineCheckbox42_3") == null ) {
		inlineCheckbox42_3=-1;
	}
	else {
		inlineCheckbox42_3 = Integer.parseInt(request.getParameter("inlineCheckbox42_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox42_3;
	}

	if(request.getParameter("inlineCheckbox43_3") == null ) {
		inlineCheckbox43_3=-1;
	}
	else {
		inlineCheckbox43_3 = Integer.parseInt(request.getParameter("inlineCheckbox43_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox43_3;
	}

	if(request.getParameter("inlineCheckbox44_3") == null ) {
		inlineCheckbox4_3=-1;
	}
	else {
		inlineCheckbox44_3 = Integer.parseInt(request.getParameter("inlineCheckbox44_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox44_3;
	}

	if(request.getParameter("inlineCheckbox45_3") == null ) {
		inlineCheckbox45_3=-1;
	}
	else {
		inlineCheckbox45_3 = Integer.parseInt(request.getParameter("inlineCheckbox45_3"));
		check_cnt3++;
		arr3[current_3++]=inlineCheckbox45_3;
	}
	
	//4번째 용지
	if(request.getParameter("inlineCheckbox1_4") == null ) {
		inlineCheckbox1_4=-1;
	}
	else {
		inlineCheckbox1_4 = Integer.parseInt(request.getParameter("inlineCheckbox1_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox1_4;
	}
	
	if(request.getParameter("inlineCheckbox2_4") == null ) {
		inlineCheckbox2_4=-1;
	}
	else {
		inlineCheckbox2_4 = Integer.parseInt(request.getParameter("inlineCheckbox2_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox2_4;
	}

	if(request.getParameter("inlineCheckbox3_4") == null ) {
		inlineCheckbox3_4=-1;
	}
	else {
		inlineCheckbox3_4 = Integer.parseInt(request.getParameter("inlineCheckbox3_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox3_4;
	}

	if(request.getParameter("inlineCheckbox4_4") == null ) {
		inlineCheckbox4_4=-1;
	}
	else {
		inlineCheckbox4_4 = Integer.parseInt(request.getParameter("inlineCheckbox4_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox4_4;
	}

	if(request.getParameter("inlineCheckbox5_4") == null ) {
		inlineCheckbox5_4=-1;
	}
	else {
		inlineCheckbox5_4 = Integer.parseInt(request.getParameter("inlineCheckbox5_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox5_4;
	}

	if(request.getParameter("inlineCheckbox6_4") == null ) {
		inlineCheckbox6_4=-1;
		
	}
	else {
		inlineCheckbox6_4 = Integer.parseInt(request.getParameter("inlineCheckbox6_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox6_4;
	}

	if(request.getParameter("inlineCheckbox7_4") == null ) {
		inlineCheckbox7_4=-1;
	}
	else {
		inlineCheckbox7_4 = Integer.parseInt(request.getParameter("inlineCheckbox7_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox7_4;
	}
	
	if(request.getParameter("inlineCheckbox8_4") == null ) {
		inlineCheckbox8_4=-1;
	}
	else {
		inlineCheckbox8_4 = Integer.parseInt(request.getParameter("inlineCheckbox8_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox8_4;
	}

	if(request.getParameter("inlineCheckbox9_4") == null ) {
		inlineCheckbox9_4=-1;
	}
	else {
		inlineCheckbox9_4 = Integer.parseInt(request.getParameter("inlineCheckbox9_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox9_4;
	}
	
	if(request.getParameter("inlineCheckbox10_4") == null ) {
		inlineCheckbox10_4=-1;
	}
	else {
		inlineCheckbox10_4 = Integer.parseInt(request.getParameter("inlineCheckbox10_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox10_4;
	}
	
	if(request.getParameter("inlineCheckbox11_4") == null ) {
		inlineCheckbox11_4=-1;
	}
	else {
		inlineCheckbox11_4 = Integer.parseInt(request.getParameter("inlineCheckbox11_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox11_4;
	}

	if(request.getParameter("inlineCheckbox12_4") == null ) {
		inlineCheckbox12_4=-1;
	}
	else {
		inlineCheckbox12_4 = Integer.parseInt(request.getParameter("inlineCheckbox12_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox12_4;
	}

	if(request.getParameter("inlineCheckbox13_4") == null ) {
		inlineCheckbox13_4=-1;
	}
	else {
		inlineCheckbox13_4 = Integer.parseInt(request.getParameter("inlineCheckbox13_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox13_4;
	}

	if(request.getParameter("inlineCheckbox14_4") == null ) {
		inlineCheckbox14_4=-1;
	}
	else {
		inlineCheckbox14_4 = Integer.parseInt(request.getParameter("inlineCheckbox14_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox14_4;
	}

	if(request.getParameter("inlineCheckbox15_4") == null ) {
		inlineCheckbox15_4=-1;
	}
	else {
		inlineCheckbox15_4 = Integer.parseInt(request.getParameter("inlineCheckbox15_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox15_4;
	}

	if(request.getParameter("inlineCheckbox16_4") == null ) {
		inlineCheckbox16_4=-1;
		
	}
	else {
		inlineCheckbox16_4 = Integer.parseInt(request.getParameter("inlineCheckbox16_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox16_4;
	}

	if(request.getParameter("inlineCheckbox17_4") == null ) {
		inlineCheckbox17_4=-1;
	}
	else {
		inlineCheckbox17_4 = Integer.parseInt(request.getParameter("inlineCheckbox17_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox17_4;
	}
	
	if(request.getParameter("inlineCheckbox18_4") == null ) {
		inlineCheckbox18_4=-1;
	}
	else {
		inlineCheckbox18_4 = Integer.parseInt(request.getParameter("inlineCheckbox18_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox18_4;
	}
	
	if(request.getParameter("inlineCheckbox19_4") == null ) {
		inlineCheckbox19_4=-1;
	}
	else {
		inlineCheckbox19_4 = Integer.parseInt(request.getParameter("inlineCheckbox19_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox19_4;
	}
	
	if(request.getParameter("inlineCheckbox20_4") == null ) {
		inlineCheckbox20_4=-1;
	}
	else {
		inlineCheckbox20_4 = Integer.parseInt(request.getParameter("inlineCheckbox20_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox20_4;
	}
	
	if(request.getParameter("inlineCheckbox21_4") == null ) {
		inlineCheckbox21_4=-1;
	}
	else {
		inlineCheckbox21_4 = Integer.parseInt(request.getParameter("inlineCheckbox21_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox21_4;
	}

	if(request.getParameter("inlineCheckbox22_4") == null ) {
		inlineCheckbox22_4=-1;
	}
	else {
		inlineCheckbox22_4 = Integer.parseInt(request.getParameter("inlineCheckbox22_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox22_4;
	}

	if(request.getParameter("inlineCheckbox23_4") == null ) {
		inlineCheckbox23_4=-1;
	}
	else {
		inlineCheckbox23_4 = Integer.parseInt(request.getParameter("inlineCheckbox23_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox23_4;
	}

	if(request.getParameter("inlineCheckbox24_4") == null ) {
		inlineCheckbox24_4=-1;
	}
	else {
		inlineCheckbox24_4 = Integer.parseInt(request.getParameter("inlineCheckbox24_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox24_4;
	}

	if(request.getParameter("inlineCheckbox25_4") == null ) {
		inlineCheckbox25_4=-1;
	}
	else {
		inlineCheckbox25_4 = Integer.parseInt(request.getParameter("inlineCheckbox25_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox25_4;
	}

	if(request.getParameter("inlineCheckbox26_4") == null ) {
		inlineCheckbox26_4=-1;
		
	}
	else {
		inlineCheckbox26_4 = Integer.parseInt(request.getParameter("inlineCheckbox26_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox26_4;
	}

	if(request.getParameter("inlineCheckbox27_4") == null ) {
		inlineCheckbox27_4=-1;
	}
	else {
		inlineCheckbox27_4 = Integer.parseInt(request.getParameter("inlineCheckbox27_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox27_4;
	}
	
	if(request.getParameter("inlineCheckbox28_4") == null ) {
		inlineCheckbox28_4=-1;
	}
	else {
		inlineCheckbox28_4 = Integer.parseInt(request.getParameter("inlineCheckbox28_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox28_4;
	}
	
	if(request.getParameter("inlineCheckbox29_4") == null ) {
		inlineCheckbox29_4=-1;
	}
	else {
		inlineCheckbox29_4 = Integer.parseInt(request.getParameter("inlineCheckbox29_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox29_4;
	}
	
	if(request.getParameter("inlineCheckbox30_4") == null ) {
		inlineCheckbox30_4=-1;
	}
	else {
		inlineCheckbox30_4 = Integer.parseInt(request.getParameter("inlineCheckbox30_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox30_4;
	}
	
	if(request.getParameter("inlineCheckbox31_4") == null ) {
		inlineCheckbox31_4=-1;
	}
	else {
		inlineCheckbox31_4 = Integer.parseInt(request.getParameter("inlineCheckbox31_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox31_4;
	}

	if(request.getParameter("inlineCheckbox32_4") == null ) {
		inlineCheckbox32_4=-1;
	}
	else {
		inlineCheckbox32_4 = Integer.parseInt(request.getParameter("inlineCheckbox32_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox32_4;
	}

	if(request.getParameter("inlineCheckbox33_4") == null ) {
		inlineCheckbox33_4=-1;
	}
	else {
		inlineCheckbox33_4 = Integer.parseInt(request.getParameter("inlineCheckbox33_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox33_4;
	}

	if(request.getParameter("inlineCheckbox34_4") == null ) {
		inlineCheckbox34_4=-1;
	}
	else {
		inlineCheckbox34_4 = Integer.parseInt(request.getParameter("inlineCheckbox34_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox34_4;
	}

	if(request.getParameter("inlineCheckbox35_4") == null ) {
		inlineCheckbox35_4=-1;
	}
	else {
		inlineCheckbox35_4 = Integer.parseInt(request.getParameter("inlineCheckbox35_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox35_4;
	}

	if(request.getParameter("inlineCheckbox36_4") == null ) {
		inlineCheckbox36_4=-1;
		
	}
	else {
		inlineCheckbox36_4 = Integer.parseInt(request.getParameter("inlineCheckbox36_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox36_4;
	}

	if(request.getParameter("inlineCheckbox37_4") == null ) {
		inlineCheckbox37_4=-1;
	}
	else {
		inlineCheckbox37_4 = Integer.parseInt(request.getParameter("inlineCheckbox37_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox37_4;
	}
	
	if(request.getParameter("inlineCheckbox38_4") == null ) {
		inlineCheckbox38_4=-1;
	}
	else {
		inlineCheckbox38_4 = Integer.parseInt(request.getParameter("inlineCheckbox38_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox38_4;
	}
	
	if(request.getParameter("inlineCheckbox39_4") == null ) {
		inlineCheckbox39_4=-1;
	}
	else {
		inlineCheckbox39_4 = Integer.parseInt(request.getParameter("inlineCheckbox39_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox39_4;
	}
	
	if(request.getParameter("inlineCheckbox40_4") == null ) {
		inlineCheckbox40_4=-1;
	}
	else {
		inlineCheckbox40_4 = Integer.parseInt(request.getParameter("inlineCheckbox40_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox40_1;
	}
	
	if(request.getParameter("inlineCheckbox41_4") == null ) {
		inlineCheckbox41_4=-1;
	}
	else {
		inlineCheckbox41_4 = Integer.parseInt(request.getParameter("inlineCheckbox41_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox41_4;
	}

	if(request.getParameter("inlineCheckbox42_4") == null ) {
		inlineCheckbox42_4=-1;
	}
	else {
		inlineCheckbox42_4 = Integer.parseInt(request.getParameter("inlineCheckbox42_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox42_4;
	}

	if(request.getParameter("inlineCheckbox43_4") == null ) {
		inlineCheckbox43_4=-1;
	}
	else {
		inlineCheckbox43_4 = Integer.parseInt(request.getParameter("inlineCheckbox43_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox43_4;
	}

	if(request.getParameter("inlineCheckbox44_4") == null ) {
		inlineCheckbox4_4=-1;
	}
	else {
		inlineCheckbox44_4 = Integer.parseInt(request.getParameter("inlineCheckbox44_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox44_4;
	}

	if(request.getParameter("inlineCheckbox45_4") == null ) {
		inlineCheckbox45_4=-1;
	}
	else {
		inlineCheckbox45_4 = Integer.parseInt(request.getParameter("inlineCheckbox45_4"));
		check_cnt4++;
		arr4[current_4++]=inlineCheckbox45_4;
	}
	
	//5번쨰 용지
	
	if(request.getParameter("inlineCheckbox1_5") == null ) {
		inlineCheckbox1_5=-1;
	}
	else {
		inlineCheckbox1_5 = Integer.parseInt(request.getParameter("inlineCheckbox1_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox1_5;
	}
	
	if(request.getParameter("inlineCheckbox2_5") == null ) {
		inlineCheckbox2_5=-1;
	}
	else {
		inlineCheckbox2_5 = Integer.parseInt(request.getParameter("inlineCheckbox2_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox2_5;
	}

	if(request.getParameter("inlineCheckbox3_5") == null ) {
		inlineCheckbox3_5=-1;
	}
	else {
		inlineCheckbox3_5 = Integer.parseInt(request.getParameter("inlineCheckbox3_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox3_5;
	}

	if(request.getParameter("inlineCheckbox4_5") == null ) {
		inlineCheckbox4_5=-1;
	}
	else {
		inlineCheckbox4_5 = Integer.parseInt(request.getParameter("inlineCheckbox4_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox4_5;
	}

	if(request.getParameter("inlineCheckbox5_5") == null ) {
		inlineCheckbox5_5=-1;
	}
	else {
		inlineCheckbox5_5 = Integer.parseInt(request.getParameter("inlineCheckbox5_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox5_5;
	}

	if(request.getParameter("inlineCheckbox6_5") == null ) {
		inlineCheckbox6_5=-1;
		
	}
	else {
		inlineCheckbox6_5 = Integer.parseInt(request.getParameter("inlineCheckbox6_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox6_5;
	}

	if(request.getParameter("inlineCheckbox7_5") == null ) {
		inlineCheckbox7_5=-1;
	}
	else {
		inlineCheckbox7_5 = Integer.parseInt(request.getParameter("inlineCheckbox7_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox7_5;
	}
	
	if(request.getParameter("inlineCheckbox8_5") == null ) {
		inlineCheckbox8_5=-1;
	}
	else {
		inlineCheckbox8_5 = Integer.parseInt(request.getParameter("inlineCheckbox8_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox8_5;
	}

	if(request.getParameter("inlineCheckbox9_5") == null ) {
		inlineCheckbox9_5=-1;
	}
	else {
		inlineCheckbox9_5 = Integer.parseInt(request.getParameter("inlineCheckbox9_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox9_5;
	}
	
	if(request.getParameter("inlineCheckbox10_5") == null ) {
		inlineCheckbox10_5=-1;
	}
	else {
		inlineCheckbox10_5 = Integer.parseInt(request.getParameter("inlineCheckbox10_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox10_5;
	}
	
	if(request.getParameter("inlineCheckbox11_5") == null ) {
		inlineCheckbox11_5=-1;
	}
	else {
		inlineCheckbox11_5 = Integer.parseInt(request.getParameter("inlineCheckbox11_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox11_5;
	}

	if(request.getParameter("inlineCheckbox12_5") == null ) {
		inlineCheckbox12_5=-1;
	}
	else {
		inlineCheckbox12_5 = Integer.parseInt(request.getParameter("inlineCheckbox12_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox12_5;
	}

	if(request.getParameter("inlineCheckbox13_5") == null ) {
		inlineCheckbox13_5=-1;
	}
	else {
		inlineCheckbox13_5 = Integer.parseInt(request.getParameter("inlineCheckbox13_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox13_5;
	}

	if(request.getParameter("inlineCheckbox14_5") == null ) {
		inlineCheckbox14_5=-1;
	}
	else {
		inlineCheckbox14_5 = Integer.parseInt(request.getParameter("inlineCheckbox14_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox14_5;
	}

	if(request.getParameter("inlineCheckbox15_5") == null ) {
		inlineCheckbox15_5=-1;
	}
	else {
		inlineCheckbox15_5 = Integer.parseInt(request.getParameter("inlineCheckbox15_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox15_5;
	}

	if(request.getParameter("inlineCheckbox16_5") == null ) {
		inlineCheckbox16_5=-1;
		
	}
	else {
		inlineCheckbox16_5 = Integer.parseInt(request.getParameter("inlineCheckbox16_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox16_5;
	}

	if(request.getParameter("inlineCheckbox17_5") == null ) {
		inlineCheckbox17_5=-1;
	}
	else {
		inlineCheckbox17_5 = Integer.parseInt(request.getParameter("inlineCheckbox17_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox17_5;
	}
	
	if(request.getParameter("inlineCheckbox18_5") == null ) {
		inlineCheckbox18_5=-1;
	}
	else {
		inlineCheckbox18_5 = Integer.parseInt(request.getParameter("inlineCheckbox18_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox18_5;
	}
	
	if(request.getParameter("inlineCheckbox19_5") == null ) {
		inlineCheckbox19_5=-1;
	}
	else {
		inlineCheckbox19_5 = Integer.parseInt(request.getParameter("inlineCheckbox19_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox19_5;
	}
	
	if(request.getParameter("inlineCheckbox20_5") == null ) {
		inlineCheckbox20_5=-1;
	}
	else {
		inlineCheckbox20_5 = Integer.parseInt(request.getParameter("inlineCheckbox20_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox20_5;
	}
	
	if(request.getParameter("inlineCheckbox21_5") == null ) {
		inlineCheckbox21_5=-1;
	}
	else {
		inlineCheckbox21_5 = Integer.parseInt(request.getParameter("inlineCheckbox21_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox21_5;
	}

	if(request.getParameter("inlineCheckbox22_5") == null ) {
		inlineCheckbox22_5=-1;
	}
	else {
		inlineCheckbox22_5 = Integer.parseInt(request.getParameter("inlineCheckbox22_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox22_5;
	}

	if(request.getParameter("inlineCheckbox23_5") == null ) {
		inlineCheckbox23_5=-1;
	}
	else {
		inlineCheckbox23_5 = Integer.parseInt(request.getParameter("inlineCheckbox23_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox23_5;
	}

	if(request.getParameter("inlineCheckbox24_5") == null ) {
		inlineCheckbox24_5=-1;
	}
	else {
		inlineCheckbox24_5 = Integer.parseInt(request.getParameter("inlineCheckbox24_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox24_5;
	}

	if(request.getParameter("inlineCheckbox25_5") == null ) {
		inlineCheckbox25_5=-1;
	}
	else {
		inlineCheckbox25_5 = Integer.parseInt(request.getParameter("inlineCheckbox25_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox25_5;
	}

	if(request.getParameter("inlineCheckbox26_5") == null ) {
		inlineCheckbox26_5=-1;
		
	}
	else {
		inlineCheckbox26_5 = Integer.parseInt(request.getParameter("inlineCheckbox26_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox26_5;
	}

	if(request.getParameter("inlineCheckbox27_5") == null ) {
		inlineCheckbox27_5=-1;
	}
	else {
		inlineCheckbox27_5 = Integer.parseInt(request.getParameter("inlineCheckbox27_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox27_5;
	}
	
	if(request.getParameter("inlineCheckbox28_5") == null ) {
		inlineCheckbox28_5=-1;
	}
	else {
		inlineCheckbox28_5 = Integer.parseInt(request.getParameter("inlineCheckbox28_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox28_5;
	}
	
	if(request.getParameter("inlineCheckbox29_5") == null ) {
		inlineCheckbox29_5=-1;
	}
	else {
		inlineCheckbox29_5 = Integer.parseInt(request.getParameter("inlineCheckbox29_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox29_5;
	}
	
	if(request.getParameter("inlineCheckbox30_5") == null ) {
		inlineCheckbox30_5=-1;
	}
	else {
		inlineCheckbox30_5 = Integer.parseInt(request.getParameter("inlineCheckbox30_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox30_5;
	}
	
	if(request.getParameter("inlineCheckbox31_5") == null ) {
		inlineCheckbox31_5=-1;
	}
	else {
		inlineCheckbox31_5 = Integer.parseInt(request.getParameter("inlineCheckbox31_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox31_5;
	}

	if(request.getParameter("inlineCheckbox32_5") == null ) {
		inlineCheckbox32_5=-1;
	}
	else {
		inlineCheckbox32_5 = Integer.parseInt(request.getParameter("inlineCheckbox32_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox32_5;
	}

	if(request.getParameter("inlineCheckbox33_5") == null ) {
		inlineCheckbox33_5=-1;
	}
	else {
		inlineCheckbox33_5 = Integer.parseInt(request.getParameter("inlineCheckbox33_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox33_5;
	}

	if(request.getParameter("inlineCheckbox34_5") == null ) {
		inlineCheckbox34_5=-1;
	}
	else {
		inlineCheckbox34_5 = Integer.parseInt(request.getParameter("inlineCheckbox34_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox34_5;
	}

	if(request.getParameter("inlineCheckbox35_5") == null ) {
		inlineCheckbox35_5=-1;
	}
	else {
		inlineCheckbox35_5 = Integer.parseInt(request.getParameter("inlineCheckbox35_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox35_5;
	}

	if(request.getParameter("inlineCheckbox36_5") == null ) {
		inlineCheckbox36_5=-1;
		
	}
	else {
		inlineCheckbox36_5 = Integer.parseInt(request.getParameter("inlineCheckbox36_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox36_5;
	}

	if(request.getParameter("inlineCheckbox37_5") == null ) {
		inlineCheckbox37_5=-1;
	}
	else {
		inlineCheckbox37_5 = Integer.parseInt(request.getParameter("inlineCheckbox37_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox37_5;
	}
	
	if(request.getParameter("inlineCheckbox38_5") == null ) {
		inlineCheckbox38_5=-1;
	}
	else {
		inlineCheckbox38_5 = Integer.parseInt(request.getParameter("inlineCheckbox38_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox38_5;
	}
	
	if(request.getParameter("inlineCheckbox39_5") == null ) {
		inlineCheckbox39_5=-1;
	}
	else {
		inlineCheckbox39_5 = Integer.parseInt(request.getParameter("inlineCheckbox39_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox39_5;
	}
	
	if(request.getParameter("inlineCheckbox40_5") == null ) {
		inlineCheckbox40_5=-1;
	}
	else {
		inlineCheckbox40_5 = Integer.parseInt(request.getParameter("inlineCheckbox40_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox40_1;
	}
	
	if(request.getParameter("inlineCheckbox41_5") == null ) {
		inlineCheckbox41_5=-1;
	}
	else {
		inlineCheckbox41_5 = Integer.parseInt(request.getParameter("inlineCheckbox41_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox41_5;
	}

	if(request.getParameter("inlineCheckbox42_5") == null ) {
		inlineCheckbox42_5=-1;
	}
	else {
		inlineCheckbox42_5 = Integer.parseInt(request.getParameter("inlineCheckbox42_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox42_5;
	}

	if(request.getParameter("inlineCheckbox43_5") == null ) {
		inlineCheckbox43_5=-1;
	}
	else {
		inlineCheckbox43_5 = Integer.parseInt(request.getParameter("inlineCheckbox43_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox43_5;
	}

	if(request.getParameter("inlineCheckbox44_5") == null ) {
		inlineCheckbox4_5=-1;
	}
	else {
		inlineCheckbox44_5 = Integer.parseInt(request.getParameter("inlineCheckbox44_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox44_5;
	}

	if(request.getParameter("inlineCheckbox45_5") == null ) {
		inlineCheckbox45_5=-1;
	}
	else {
		inlineCheckbox45_5 = Integer.parseInt(request.getParameter("inlineCheckbox45_5"));
		check_cnt5++;
		arr5[current_5++]=inlineCheckbox45_5;
	}
	
	// 6번째 용지
	
	if(request.getParameter("inlineCheckbox1_6") == null ) {
		inlineCheckbox1_6=-1;
	}
	else {
		inlineCheckbox1_6 = Integer.parseInt(request.getParameter("inlineCheckbox1_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox1_6;
	}
	
	if(request.getParameter("inlineCheckbox2_6") == null ) {
		inlineCheckbox2_6=-1;
	}
	else {
		inlineCheckbox2_6 = Integer.parseInt(request.getParameter("inlineCheckbox2_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox2_6;
	}

	if(request.getParameter("inlineCheckbox3_6") == null ) {
		inlineCheckbox3_6=-1;
	}
	else {
		inlineCheckbox3_6 = Integer.parseInt(request.getParameter("inlineCheckbox3_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox3_6;
	}

	if(request.getParameter("inlineCheckbox4_6") == null ) {
		inlineCheckbox4_6=-1;
	}
	else {
		inlineCheckbox4_6 = Integer.parseInt(request.getParameter("inlineCheckbox4_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox4_6;
	}

	if(request.getParameter("inlineCheckbox5_6") == null ) {
		inlineCheckbox5_6=-1;
	}
	else {
		inlineCheckbox5_6 = Integer.parseInt(request.getParameter("inlineCheckbox5_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox5_6;
	}

	if(request.getParameter("inlineCheckbox6_6") == null ) {
		inlineCheckbox6_6=-1;
		
	}
	else {
		inlineCheckbox6_6 = Integer.parseInt(request.getParameter("inlineCheckbox6_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox6_6;
	}

	if(request.getParameter("inlineCheckbox7_6") == null ) {
		inlineCheckbox7_6=-1;
	}
	else {
		inlineCheckbox7_6 = Integer.parseInt(request.getParameter("inlineCheckbox7_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox7_6;
	}
	
	if(request.getParameter("inlineCheckbox8_6") == null ) {
		inlineCheckbox8_6=-1;
	}
	else {
		inlineCheckbox8_6 = Integer.parseInt(request.getParameter("inlineCheckbox8_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox8_6;
	}

	if(request.getParameter("inlineCheckbox9_6") == null ) {
		inlineCheckbox9_6=-1;
	}
	else {
		inlineCheckbox9_6 = Integer.parseInt(request.getParameter("inlineCheckbox9_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox9_6;
	}
	
	if(request.getParameter("inlineCheckbox10_6") == null ) {
		inlineCheckbox10_6=-1;
	}
	else {
		inlineCheckbox10_6 = Integer.parseInt(request.getParameter("inlineCheckbox10_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox10_6;
	}
	
	if(request.getParameter("inlineCheckbox11_6") == null ) {
		inlineCheckbox11_6=-1;
	}
	else {
		inlineCheckbox11_6 = Integer.parseInt(request.getParameter("inlineCheckbox11_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox11_6;
	}

	if(request.getParameter("inlineCheckbox12_6") == null ) {
		inlineCheckbox12_6=-1;
	}
	else {
		inlineCheckbox12_6 = Integer.parseInt(request.getParameter("inlineCheckbox12_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox12_6;
	}

	if(request.getParameter("inlineCheckbox13_6") == null ) {
		inlineCheckbox13_6=-1;
	}
	else {
		inlineCheckbox13_6 = Integer.parseInt(request.getParameter("inlineCheckbox13_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox13_6;
	}

	if(request.getParameter("inlineCheckbox14_6") == null ) {
		inlineCheckbox14_6=-1;
	}
	else {
		inlineCheckbox14_6 = Integer.parseInt(request.getParameter("inlineCheckbox14_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox14_6;
	}

	if(request.getParameter("inlineCheckbox15_6") == null ) {
		inlineCheckbox15_6=-1;
	}
	else {
		inlineCheckbox15_6 = Integer.parseInt(request.getParameter("inlineCheckbox15_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox15_6;
	}

	if(request.getParameter("inlineCheckbox16_6") == null ) {
		inlineCheckbox16_6=-1;
		
	}
	else {
		inlineCheckbox16_6 = Integer.parseInt(request.getParameter("inlineCheckbox16_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox16_6;
	}

	if(request.getParameter("inlineCheckbox17_6") == null ) {
		inlineCheckbox17_6=-1;
	}
	else {
		inlineCheckbox17_6 = Integer.parseInt(request.getParameter("inlineCheckbox17_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox17_6;
	}
	
	if(request.getParameter("inlineCheckbox18_6") == null ) {
		inlineCheckbox18_6=-1;
	}
	else {
		inlineCheckbox18_6 = Integer.parseInt(request.getParameter("inlineCheckbox18_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox18_6;
	}
	
	if(request.getParameter("inlineCheckbox19_6") == null ) {
		inlineCheckbox19_6=-1;
	}
	else {
		inlineCheckbox19_6 = Integer.parseInt(request.getParameter("inlineCheckbox19_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox19_6;
	}
	
	if(request.getParameter("inlineCheckbox20_6") == null ) {
		inlineCheckbox20_6=-1;
	}
	else {
		inlineCheckbox20_6 = Integer.parseInt(request.getParameter("inlineCheckbox20_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox20_6;
	}
	
	if(request.getParameter("inlineCheckbox21_6") == null ) {
		inlineCheckbox21_6=-1;
	}
	else {
		inlineCheckbox21_6 = Integer.parseInt(request.getParameter("inlineCheckbox21_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox21_6;
	}

	if(request.getParameter("inlineCheckbox22_6") == null ) {
		inlineCheckbox22_6=-1;
	}
	else {
		inlineCheckbox22_6 = Integer.parseInt(request.getParameter("inlineCheckbox22_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox22_6;
	}

	if(request.getParameter("inlineCheckbox23_6") == null ) {
		inlineCheckbox23_6=-1;
	}
	else {
		inlineCheckbox23_6 = Integer.parseInt(request.getParameter("inlineCheckbox23_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox23_6;
	}

	if(request.getParameter("inlineCheckbox24_6") == null ) {
		inlineCheckbox24_6=-1;
	}
	else {
		inlineCheckbox24_6 = Integer.parseInt(request.getParameter("inlineCheckbox24_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox24_6;
	}

	if(request.getParameter("inlineCheckbox25_6") == null ) {
		inlineCheckbox25_6=-1;
	}
	else {
		inlineCheckbox25_6 = Integer.parseInt(request.getParameter("inlineCheckbox25_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox25_6;
	}

	if(request.getParameter("inlineCheckbox26_6") == null ) {
		inlineCheckbox26_6=-1;
		
	}
	else {
		inlineCheckbox26_6 = Integer.parseInt(request.getParameter("inlineCheckbox26_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox26_6;
	}

	if(request.getParameter("inlineCheckbox27_6") == null ) {
		inlineCheckbox27_6=-1;
	}
	else {
		inlineCheckbox27_6 = Integer.parseInt(request.getParameter("inlineCheckbox27_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox27_6;
	}
	
	if(request.getParameter("inlineCheckbox28_6") == null ) {
		inlineCheckbox28_6=-1;
	}
	else {
		inlineCheckbox28_6 = Integer.parseInt(request.getParameter("inlineCheckbox28_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox28_6;
	}
	
	if(request.getParameter("inlineCheckbox29_6") == null ) {
		inlineCheckbox29_6=-1;
	}
	else {
		inlineCheckbox29_6 = Integer.parseInt(request.getParameter("inlineCheckbox29_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox29_6;
	}
	
	if(request.getParameter("inlineCheckbox30_6") == null ) {
		inlineCheckbox30_6=-1;
	}
	else {
		inlineCheckbox30_6 = Integer.parseInt(request.getParameter("inlineCheckbox30_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox30_6;
	}
	
	if(request.getParameter("inlineCheckbox31_6") == null ) {
		inlineCheckbox31_6=-1;
	}
	else {
		inlineCheckbox31_6 = Integer.parseInt(request.getParameter("inlineCheckbox31_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox31_6;
	}

	if(request.getParameter("inlineCheckbox32_6") == null ) {
		inlineCheckbox32_6=-1;
	}
	else {
		inlineCheckbox32_6 = Integer.parseInt(request.getParameter("inlineCheckbox32_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox32_6;
	}

	if(request.getParameter("inlineCheckbox33_6") == null ) {
		inlineCheckbox33_6=-1;
	}
	else {
		inlineCheckbox33_6 = Integer.parseInt(request.getParameter("inlineCheckbox33_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox33_6;
	}

	if(request.getParameter("inlineCheckbox34_6") == null ) {
		inlineCheckbox34_6=-1;
	}
	else {
		inlineCheckbox34_6 = Integer.parseInt(request.getParameter("inlineCheckbox34_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox34_6;
	}

	if(request.getParameter("inlineCheckbox35_6") == null ) {
		inlineCheckbox35_6=-1;
	}
	else {
		inlineCheckbox35_6 = Integer.parseInt(request.getParameter("inlineCheckbox35_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox35_6;
	}

	if(request.getParameter("inlineCheckbox36_6") == null ) {
		inlineCheckbox36_6=-1;
		
	}
	else {
		inlineCheckbox36_6 = Integer.parseInt(request.getParameter("inlineCheckbox36_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox36_6;
	}

	if(request.getParameter("inlineCheckbox37_6") == null ) {
		inlineCheckbox37_6=-1;
	}
	else {
		inlineCheckbox37_6 = Integer.parseInt(request.getParameter("inlineCheckbox37_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox37_6;
	}
	
	if(request.getParameter("inlineCheckbox38_6") == null ) {
		inlineCheckbox38_6=-1;
	}
	else {
		inlineCheckbox38_6 = Integer.parseInt(request.getParameter("inlineCheckbox38_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox38_6;
	}
	
	if(request.getParameter("inlineCheckbox39_6") == null ) {
		inlineCheckbox39_6=-1;
	}
	else {
		inlineCheckbox39_6 = Integer.parseInt(request.getParameter("inlineCheckbox39_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox39_6;
	}
	
	if(request.getParameter("inlineCheckbox40_6") == null ) {
		inlineCheckbox40_6=-1;
	}
	else {
		inlineCheckbox40_6 = Integer.parseInt(request.getParameter("inlineCheckbox40_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox40_1;
	}
	
	if(request.getParameter("inlineCheckbox41_6") == null ) {
		inlineCheckbox41_6=-1;
	}
	else {
		inlineCheckbox41_6 = Integer.parseInt(request.getParameter("inlineCheckbox41_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox41_6;
	}

	if(request.getParameter("inlineCheckbox42_6") == null ) {
		inlineCheckbox42_6=-1;
	}
	else {
		inlineCheckbox42_6 = Integer.parseInt(request.getParameter("inlineCheckbox42_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox42_6;
	}

	if(request.getParameter("inlineCheckbox43_6") == null ) {
		inlineCheckbox43_6=-1;
	}
	else {
		inlineCheckbox43_6 = Integer.parseInt(request.getParameter("inlineCheckbox43_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox43_6;
	}

	if(request.getParameter("inlineCheckbox44_6") == null ) {
		inlineCheckbox4_6=-1;
	}
	else {
		inlineCheckbox44_6 = Integer.parseInt(request.getParameter("inlineCheckbox44_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox44_6;
	}

	if(request.getParameter("inlineCheckbox45_6") == null ) {
		inlineCheckbox45_6=-1;
	}
	else {
		inlineCheckbox45_6 = Integer.parseInt(request.getParameter("inlineCheckbox45_6"));
		check_cnt6++;
		arr6[current_6++]=inlineCheckbox45_6;
	}
	
	//7번쨰 용지
	if(request.getParameter("inlineCheckbox1_7") == null ) {
		inlineCheckbox1_7=-1;
	}
	else {
		inlineCheckbox1_7 = Integer.parseInt(request.getParameter("inlineCheckbox1_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox1_7;
	}
	
	if(request.getParameter("inlineCheckbox2_7") == null ) {
		inlineCheckbox2_7=-1;
	}
	else {
		inlineCheckbox2_7 = Integer.parseInt(request.getParameter("inlineCheckbox2_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox2_7;
	}

	if(request.getParameter("inlineCheckbox3_7") == null ) {
		inlineCheckbox3_7=-1;
	}
	else {
		inlineCheckbox3_7 = Integer.parseInt(request.getParameter("inlineCheckbox3_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox3_7;
	}

	if(request.getParameter("inlineCheckbox4_7") == null ) {
		inlineCheckbox4_7=-1;
	}
	else {
		inlineCheckbox4_7 = Integer.parseInt(request.getParameter("inlineCheckbox4_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox4_7;
	}

	if(request.getParameter("inlineCheckbox5_7") == null ) {
		inlineCheckbox5_7=-1;
	}
	else {
		inlineCheckbox5_7 = Integer.parseInt(request.getParameter("inlineCheckbox5_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox5_7;
	}

	if(request.getParameter("inlineCheckbox6_7") == null ) {
		inlineCheckbox6_7=-1;
		
	}
	else {
		inlineCheckbox6_7 = Integer.parseInt(request.getParameter("inlineCheckbox6_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox6_7;
	}

	if(request.getParameter("inlineCheckbox7_7") == null ) {
		inlineCheckbox7_7=-1;
	}
	else {
		inlineCheckbox7_7 = Integer.parseInt(request.getParameter("inlineCheckbox7_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox7_7;
	}
	
	if(request.getParameter("inlineCheckbox8_7") == null ) {
		inlineCheckbox8_7=-1;
	}
	else {
		inlineCheckbox8_7 = Integer.parseInt(request.getParameter("inlineCheckbox8_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox8_7;
	}

	if(request.getParameter("inlineCheckbox9_7") == null ) {
		inlineCheckbox9_7=-1;
	}
	else {
		inlineCheckbox9_7 = Integer.parseInt(request.getParameter("inlineCheckbox9_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox9_7;
	}
	
	if(request.getParameter("inlineCheckbox10_7") == null ) {
		inlineCheckbox10_7=-1;
	}
	else {
		inlineCheckbox10_7 = Integer.parseInt(request.getParameter("inlineCheckbox10_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox10_7;
	}
	
	if(request.getParameter("inlineCheckbox11_7") == null ) {
		inlineCheckbox11_7=-1;
	}
	else {
		inlineCheckbox11_7 = Integer.parseInt(request.getParameter("inlineCheckbox11_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox11_7;
	}

	if(request.getParameter("inlineCheckbox12_7") == null ) {
		inlineCheckbox12_7=-1;
	}
	else {
		inlineCheckbox12_7 = Integer.parseInt(request.getParameter("inlineCheckbox12_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox12_7;
	}

	if(request.getParameter("inlineCheckbox13_7") == null ) {
		inlineCheckbox13_7=-1;
	}
	else {
		inlineCheckbox13_7 = Integer.parseInt(request.getParameter("inlineCheckbox13_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox13_7;
	}

	if(request.getParameter("inlineCheckbox14_7") == null ) {
		inlineCheckbox14_7=-1;
	}
	else {
		inlineCheckbox14_7 = Integer.parseInt(request.getParameter("inlineCheckbox14_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox14_7;
	}

	if(request.getParameter("inlineCheckbox15_7") == null ) {
		inlineCheckbox15_7=-1;
	}
	else {
		inlineCheckbox15_7 = Integer.parseInt(request.getParameter("inlineCheckbox15_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox15_7;
	}

	if(request.getParameter("inlineCheckbox16_7") == null ) {
		inlineCheckbox16_7=-1;
		
	}
	else {
		inlineCheckbox16_7 = Integer.parseInt(request.getParameter("inlineCheckbox16_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox16_7;
	}

	if(request.getParameter("inlineCheckbox17_7") == null ) {
		inlineCheckbox17_7=-1;
	}
	else {
		inlineCheckbox17_7 = Integer.parseInt(request.getParameter("inlineCheckbox17_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox17_7;
	}
	
	if(request.getParameter("inlineCheckbox18_7") == null ) {
		inlineCheckbox18_7=-1;
	}
	else {
		inlineCheckbox18_7 = Integer.parseInt(request.getParameter("inlineCheckbox18_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox18_7;
	}
	
	if(request.getParameter("inlineCheckbox19_7") == null ) {
		inlineCheckbox19_7=-1;
	}
	else {
		inlineCheckbox19_7 = Integer.parseInt(request.getParameter("inlineCheckbox19_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox19_7;
	}
	
	if(request.getParameter("inlineCheckbox20_7") == null ) {
		inlineCheckbox20_7=-1;
	}
	else {
		inlineCheckbox20_7 = Integer.parseInt(request.getParameter("inlineCheckbox20_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox20_7;
	}
	
	if(request.getParameter("inlineCheckbox21_7") == null ) {
		inlineCheckbox21_7=-1;
	}
	else {
		inlineCheckbox21_7 = Integer.parseInt(request.getParameter("inlineCheckbox21_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox21_7;
	}

	if(request.getParameter("inlineCheckbox22_7") == null ) {
		inlineCheckbox22_7=-1;
	}
	else {
		inlineCheckbox22_7 = Integer.parseInt(request.getParameter("inlineCheckbox22_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox22_7;
	}

	if(request.getParameter("inlineCheckbox23_7") == null ) {
		inlineCheckbox23_7=-1;
	}
	else {
		inlineCheckbox23_7 = Integer.parseInt(request.getParameter("inlineCheckbox23_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox23_7;
	}

	if(request.getParameter("inlineCheckbox24_7") == null ) {
		inlineCheckbox24_7=-1;
	}
	else {
		inlineCheckbox24_7 = Integer.parseInt(request.getParameter("inlineCheckbox24_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox24_7;
	}

	if(request.getParameter("inlineCheckbox25_7") == null ) {
		inlineCheckbox25_7=-1;
	}
	else {
		inlineCheckbox25_7 = Integer.parseInt(request.getParameter("inlineCheckbox25_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox25_7;
	}

	if(request.getParameter("inlineCheckbox26_7") == null ) {
		inlineCheckbox26_7=-1;
		
	}
	else {
		inlineCheckbox26_7 = Integer.parseInt(request.getParameter("inlineCheckbox26_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox26_7;
	}

	if(request.getParameter("inlineCheckbox27_7") == null ) {
		inlineCheckbox27_7=-1;
	}
	else {
		inlineCheckbox27_7 = Integer.parseInt(request.getParameter("inlineCheckbox27_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox27_7;
	}
	
	if(request.getParameter("inlineCheckbox28_7") == null ) {
		inlineCheckbox28_7=-1;
	}
	else {
		inlineCheckbox28_7 = Integer.parseInt(request.getParameter("inlineCheckbox28_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox28_7;
	}
	
	if(request.getParameter("inlineCheckbox29_7") == null ) {
		inlineCheckbox29_7=-1;
	}
	else {
		inlineCheckbox29_7 = Integer.parseInt(request.getParameter("inlineCheckbox29_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox29_7;
	}
	
	if(request.getParameter("inlineCheckbox30_7") == null ) {
		inlineCheckbox30_7=-1;
	}
	else {
		inlineCheckbox30_7 = Integer.parseInt(request.getParameter("inlineCheckbox30_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox30_7;
	}
	
	if(request.getParameter("inlineCheckbox31_7") == null ) {
		inlineCheckbox31_7=-1;
	}
	else {
		inlineCheckbox31_7 = Integer.parseInt(request.getParameter("inlineCheckbox31_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox31_7;
	}

	if(request.getParameter("inlineCheckbox32_7") == null ) {
		inlineCheckbox32_7=-1;
	}
	else {
		inlineCheckbox32_7 = Integer.parseInt(request.getParameter("inlineCheckbox32_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox32_7;
	}

	if(request.getParameter("inlineCheckbox33_7") == null ) {
		inlineCheckbox33_7=-1;
	}
	else {
		inlineCheckbox33_7 = Integer.parseInt(request.getParameter("inlineCheckbox33_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox33_7;
	}

	if(request.getParameter("inlineCheckbox34_7") == null ) {
		inlineCheckbox34_7=-1;
	}
	else {
		inlineCheckbox34_7 = Integer.parseInt(request.getParameter("inlineCheckbox34_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox34_7;
	}

	if(request.getParameter("inlineCheckbox35_7") == null ) {
		inlineCheckbox35_7=-1;
	}
	else {
		inlineCheckbox35_7 = Integer.parseInt(request.getParameter("inlineCheckbox35_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox35_7;
	}

	if(request.getParameter("inlineCheckbox36_7") == null ) {
		inlineCheckbox36_7=-1;
		
	}
	else {
		inlineCheckbox36_7 = Integer.parseInt(request.getParameter("inlineCheckbox36_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox36_7;
	}

	if(request.getParameter("inlineCheckbox37_7") == null ) {
		inlineCheckbox37_7=-1;
	}
	else {
		inlineCheckbox37_7 = Integer.parseInt(request.getParameter("inlineCheckbox37_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox37_7;
	}
	
	if(request.getParameter("inlineCheckbox38_7") == null ) {
		inlineCheckbox38_7=-1;
	}
	else {
		inlineCheckbox38_7 = Integer.parseInt(request.getParameter("inlineCheckbox38_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox38_7;
	}
	
	if(request.getParameter("inlineCheckbox39_7") == null ) {
		inlineCheckbox39_7=-1;
	}
	else {
		inlineCheckbox39_7 = Integer.parseInt(request.getParameter("inlineCheckbox39_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox39_7;
	}
	
	if(request.getParameter("inlineCheckbox40_7") == null ) {
		inlineCheckbox40_7=-1;
	}
	else {
		inlineCheckbox40_7 = Integer.parseInt(request.getParameter("inlineCheckbox40_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox40_1;
	}
	
	if(request.getParameter("inlineCheckbox41_7") == null ) {
		inlineCheckbox41_7=-1;
	}
	else {
		inlineCheckbox41_7 = Integer.parseInt(request.getParameter("inlineCheckbox41_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox41_7;
	}

	if(request.getParameter("inlineCheckbox42_7") == null ) {
		inlineCheckbox42_7=-1;
	}
	else {
		inlineCheckbox42_7 = Integer.parseInt(request.getParameter("inlineCheckbox42_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox42_7;
	}

	if(request.getParameter("inlineCheckbox43_7") == null ) {
		inlineCheckbox43_7=-1;
	}
	else {
		inlineCheckbox43_7 = Integer.parseInt(request.getParameter("inlineCheckbox43_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox43_7;
	}

	if(request.getParameter("inlineCheckbox44_7") == null ) {
		inlineCheckbox4_7=-1;
	}
	else {
		inlineCheckbox44_7 = Integer.parseInt(request.getParameter("inlineCheckbox44_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox44_7;
	}

	if(request.getParameter("inlineCheckbox45_7") == null ) {
		inlineCheckbox45_7=-1;
	}
	else {
		inlineCheckbox45_7 = Integer.parseInt(request.getParameter("inlineCheckbox45_7"));
		check_cnt7++;
		arr7[current_7++]=inlineCheckbox45_7;
	}
	
	//8번째 용지
	if(request.getParameter("inlineCheckbox1_8") == null ) {
		inlineCheckbox1_8=-1;
	}
	else {
		inlineCheckbox1_8 = Integer.parseInt(request.getParameter("inlineCheckbox1_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox1_8;
	}
	
	if(request.getParameter("inlineCheckbox2_8") == null ) {
		inlineCheckbox2_8=-1;
	}
	else {
		inlineCheckbox2_8 = Integer.parseInt(request.getParameter("inlineCheckbox2_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox2_8;
	}

	if(request.getParameter("inlineCheckbox3_8") == null ) {
		inlineCheckbox3_8=-1;
	}
	else {
		inlineCheckbox3_8 = Integer.parseInt(request.getParameter("inlineCheckbox3_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox3_8;
	}

	if(request.getParameter("inlineCheckbox4_8") == null ) {
		inlineCheckbox4_8=-1;
	}
	else {
		inlineCheckbox4_8 = Integer.parseInt(request.getParameter("inlineCheckbox4_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox4_8;
	}

	if(request.getParameter("inlineCheckbox5_8") == null ) {
		inlineCheckbox5_8=-1;
	}
	else {
		inlineCheckbox5_8 = Integer.parseInt(request.getParameter("inlineCheckbox5_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox5_8;
	}

	if(request.getParameter("inlineCheckbox6_8") == null ) {
		inlineCheckbox6_8=-1;
		
	}
	else {
		inlineCheckbox6_8 = Integer.parseInt(request.getParameter("inlineCheckbox6_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox6_8;
	}

	if(request.getParameter("inlineCheckbox7_8") == null ) {
		inlineCheckbox7_8=-1;
	}
	else {
		inlineCheckbox7_8 = Integer.parseInt(request.getParameter("inlineCheckbox7_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox7_8;
	}
	
	if(request.getParameter("inlineCheckbox8_8") == null ) {
		inlineCheckbox8_8=-1;
	}
	else {
		inlineCheckbox8_8 = Integer.parseInt(request.getParameter("inlineCheckbox8_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox8_8;
	}

	if(request.getParameter("inlineCheckbox9_8") == null ) {
		inlineCheckbox9_8=-1;
	}
	else {
		inlineCheckbox9_8 = Integer.parseInt(request.getParameter("inlineCheckbox9_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox9_8;
	}
	
	if(request.getParameter("inlineCheckbox10_8") == null ) {
		inlineCheckbox10_8=-1;
	}
	else {
		inlineCheckbox10_8 = Integer.parseInt(request.getParameter("inlineCheckbox10_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox10_8;
	}
	
	if(request.getParameter("inlineCheckbox11_8") == null ) {
		inlineCheckbox11_8=-1;
	}
	else {
		inlineCheckbox11_8 = Integer.parseInt(request.getParameter("inlineCheckbox11_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox11_8;
	}

	if(request.getParameter("inlineCheckbox12_8") == null ) {
		inlineCheckbox12_8=-1;
	}
	else {
		inlineCheckbox12_8 = Integer.parseInt(request.getParameter("inlineCheckbox12_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox12_8;
	}

	if(request.getParameter("inlineCheckbox13_8") == null ) {
		inlineCheckbox13_8=-1;
	}
	else {
		inlineCheckbox13_8 = Integer.parseInt(request.getParameter("inlineCheckbox13_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox13_8;
	}

	if(request.getParameter("inlineCheckbox14_8") == null ) {
		inlineCheckbox14_8=-1;
	}
	else {
		inlineCheckbox14_8 = Integer.parseInt(request.getParameter("inlineCheckbox14_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox14_8;
	}

	if(request.getParameter("inlineCheckbox15_8") == null ) {
		inlineCheckbox15_8=-1;
	}
	else {
		inlineCheckbox15_8 = Integer.parseInt(request.getParameter("inlineCheckbox15_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox15_8;
	}

	if(request.getParameter("inlineCheckbox16_8") == null ) {
		inlineCheckbox16_8=-1;
		
	}
	else {
		inlineCheckbox16_8 = Integer.parseInt(request.getParameter("inlineCheckbox16_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox16_8;
	}

	if(request.getParameter("inlineCheckbox17_8") == null ) {
		inlineCheckbox17_8=-1;
	}
	else {
		inlineCheckbox17_8 = Integer.parseInt(request.getParameter("inlineCheckbox17_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox17_8;
	}
	
	if(request.getParameter("inlineCheckbox18_8") == null ) {
		inlineCheckbox18_8=-1;
	}
	else {
		inlineCheckbox18_8 = Integer.parseInt(request.getParameter("inlineCheckbox18_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox18_8;
	}
	
	if(request.getParameter("inlineCheckbox19_8") == null ) {
		inlineCheckbox19_8=-1;
	}
	else {
		inlineCheckbox19_8 = Integer.parseInt(request.getParameter("inlineCheckbox19_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox19_8;
	}
	
	if(request.getParameter("inlineCheckbox20_8") == null ) {
		inlineCheckbox20_8=-1;
	}
	else {
		inlineCheckbox20_8 = Integer.parseInt(request.getParameter("inlineCheckbox20_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox20_8;
	}
	
	if(request.getParameter("inlineCheckbox21_8") == null ) {
		inlineCheckbox21_8=-1;
	}
	else {
		inlineCheckbox21_8 = Integer.parseInt(request.getParameter("inlineCheckbox21_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox21_8;
	}

	if(request.getParameter("inlineCheckbox22_8") == null ) {
		inlineCheckbox22_8=-1;
	}
	else {
		inlineCheckbox22_8 = Integer.parseInt(request.getParameter("inlineCheckbox22_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox22_8;
	}

	if(request.getParameter("inlineCheckbox23_8") == null ) {
		inlineCheckbox23_8=-1;
	}
	else {
		inlineCheckbox23_8 = Integer.parseInt(request.getParameter("inlineCheckbox23_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox23_8;
	}

	if(request.getParameter("inlineCheckbox24_8") == null ) {
		inlineCheckbox24_8=-1;
	}
	else {
		inlineCheckbox24_8 = Integer.parseInt(request.getParameter("inlineCheckbox24_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox24_8;
	}

	if(request.getParameter("inlineCheckbox25_8") == null ) {
		inlineCheckbox25_8=-1;
	}
	else {
		inlineCheckbox25_8 = Integer.parseInt(request.getParameter("inlineCheckbox25_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox25_8;
	}

	if(request.getParameter("inlineCheckbox26_8") == null ) {
		inlineCheckbox26_8=-1;
		
	}
	else {
		inlineCheckbox26_8 = Integer.parseInt(request.getParameter("inlineCheckbox26_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox26_8;
	}

	if(request.getParameter("inlineCheckbox27_8") == null ) {
		inlineCheckbox27_8=-1;
	}
	else {
		inlineCheckbox27_8 = Integer.parseInt(request.getParameter("inlineCheckbox27_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox27_8;
	}
	
	if(request.getParameter("inlineCheckbox28_8") == null ) {
		inlineCheckbox28_8=-1;
	}
	else {
		inlineCheckbox28_8 = Integer.parseInt(request.getParameter("inlineCheckbox28_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox28_8;
	}
	
	if(request.getParameter("inlineCheckbox29_8") == null ) {
		inlineCheckbox29_8=-1;
	}
	else {
		inlineCheckbox29_8 = Integer.parseInt(request.getParameter("inlineCheckbox29_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox29_8;
	}
	
	if(request.getParameter("inlineCheckbox30_8") == null ) {
		inlineCheckbox30_8=-1;
	}
	else {
		inlineCheckbox30_8 = Integer.parseInt(request.getParameter("inlineCheckbox30_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox30_8;
	}
	
	if(request.getParameter("inlineCheckbox31_8") == null ) {
		inlineCheckbox31_8=-1;
	}
	else {
		inlineCheckbox31_8 = Integer.parseInt(request.getParameter("inlineCheckbox31_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox31_8;
	}

	if(request.getParameter("inlineCheckbox32_8") == null ) {
		inlineCheckbox32_8=-1;
	}
	else {
		inlineCheckbox32_8 = Integer.parseInt(request.getParameter("inlineCheckbox32_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox32_8;
	}

	if(request.getParameter("inlineCheckbox33_8") == null ) {
		inlineCheckbox33_8=-1;
	}
	else {
		inlineCheckbox33_8 = Integer.parseInt(request.getParameter("inlineCheckbox33_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox33_8;
	}

	if(request.getParameter("inlineCheckbox34_8") == null ) {
		inlineCheckbox34_8=-1;
	}
	else {
		inlineCheckbox34_8 = Integer.parseInt(request.getParameter("inlineCheckbox34_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox34_8;
	}

	if(request.getParameter("inlineCheckbox35_8") == null ) {
		inlineCheckbox35_8=-1;
	}
	else {
		inlineCheckbox35_8 = Integer.parseInt(request.getParameter("inlineCheckbox35_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox35_8;
	}

	if(request.getParameter("inlineCheckbox36_8") == null ) {
		inlineCheckbox36_8=-1;
		
	}
	else {
		inlineCheckbox36_8 = Integer.parseInt(request.getParameter("inlineCheckbox36_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox36_8;
	}

	if(request.getParameter("inlineCheckbox37_8") == null ) {
		inlineCheckbox37_8=-1;
	}
	else {
		inlineCheckbox37_8 = Integer.parseInt(request.getParameter("inlineCheckbox37_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox37_8;
	}
	
	if(request.getParameter("inlineCheckbox38_8") == null ) {
		inlineCheckbox38_8=-1;
	}
	else {
		inlineCheckbox38_8 = Integer.parseInt(request.getParameter("inlineCheckbox38_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox38_8;
	}
	
	if(request.getParameter("inlineCheckbox39_8") == null ) {
		inlineCheckbox39_8=-1;
	}
	else {
		inlineCheckbox39_8 = Integer.parseInt(request.getParameter("inlineCheckbox39_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox39_8;
	}
	
	if(request.getParameter("inlineCheckbox40_8") == null ) {
		inlineCheckbox40_8=-1;
	}
	else {
		inlineCheckbox40_8 = Integer.parseInt(request.getParameter("inlineCheckbox40_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox40_1;
	}
	
	if(request.getParameter("inlineCheckbox41_8") == null ) {
		inlineCheckbox41_8=-1;
	}
	else {
		inlineCheckbox41_8 = Integer.parseInt(request.getParameter("inlineCheckbox41_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox41_8;
	}

	if(request.getParameter("inlineCheckbox42_8") == null ) {
		inlineCheckbox42_8=-1;
	}
	else {
		inlineCheckbox42_8 = Integer.parseInt(request.getParameter("inlineCheckbox42_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox42_8;
	}

	if(request.getParameter("inlineCheckbox43_8") == null ) {
		inlineCheckbox43_8=-1;
	}
	else {
		inlineCheckbox43_8 = Integer.parseInt(request.getParameter("inlineCheckbox43_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox43_8;
	}

	if(request.getParameter("inlineCheckbox44_8") == null ) {
		inlineCheckbox4_8=-1;
	}
	else {
		inlineCheckbox44_8 = Integer.parseInt(request.getParameter("inlineCheckbox44_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox44_8;
	}

	if(request.getParameter("inlineCheckbox45_8") == null ) {
		inlineCheckbox45_8=-1;
	}
	else {
		inlineCheckbox45_8 = Integer.parseInt(request.getParameter("inlineCheckbox45_8"));
		check_cnt8++;
		arr8[current_8++]=inlineCheckbox45_8;
	}
	
	//9반째 용지
	if(request.getParameter("inlineCheckbox1_9") == null ) {
		inlineCheckbox1_9=-1;
	}
	else {
		inlineCheckbox1_9 = Integer.parseInt(request.getParameter("inlineCheckbox1_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox1_9;
	}
	
	if(request.getParameter("inlineCheckbox2_9") == null ) {
		inlineCheckbox2_9=-1;
	}
	else {
		inlineCheckbox2_9 = Integer.parseInt(request.getParameter("inlineCheckbox2_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox2_9;
	}

	if(request.getParameter("inlineCheckbox3_9") == null ) {
		inlineCheckbox3_9=-1;
	}
	else {
		inlineCheckbox3_9 = Integer.parseInt(request.getParameter("inlineCheckbox3_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox3_9;
	}

	if(request.getParameter("inlineCheckbox4_9") == null ) {
		inlineCheckbox4_9=-1;
	}
	else {
		inlineCheckbox4_9 = Integer.parseInt(request.getParameter("inlineCheckbox4_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox4_9;
	}

	if(request.getParameter("inlineCheckbox5_9") == null ) {
		inlineCheckbox5_9=-1;
	}
	else {
		inlineCheckbox5_9 = Integer.parseInt(request.getParameter("inlineCheckbox5_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox5_9;
	}

	if(request.getParameter("inlineCheckbox6_9") == null ) {
		inlineCheckbox6_9=-1;
		
	}
	else {
		inlineCheckbox6_9 = Integer.parseInt(request.getParameter("inlineCheckbox6_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox6_9;
	}

	if(request.getParameter("inlineCheckbox7_9") == null ) {
		inlineCheckbox7_9=-1;
	}
	else {
		inlineCheckbox7_9 = Integer.parseInt(request.getParameter("inlineCheckbox7_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox7_9;
	}
	
	if(request.getParameter("inlineCheckbox8_9") == null ) {
		inlineCheckbox8_9=-1;
	}
	else {
		inlineCheckbox8_9 = Integer.parseInt(request.getParameter("inlineCheckbox8_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox8_9;
	}

	if(request.getParameter("inlineCheckbox9_9") == null ) {
		inlineCheckbox9_9=-1;
	}
	else {
		inlineCheckbox9_9 = Integer.parseInt(request.getParameter("inlineCheckbox9_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox9_9;
	}
	
	if(request.getParameter("inlineCheckbox10_9") == null ) {
		inlineCheckbox10_9=-1;
	}
	else {
		inlineCheckbox10_9 = Integer.parseInt(request.getParameter("inlineCheckbox10_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox10_9;
	}
	
	if(request.getParameter("inlineCheckbox11_9") == null ) {
		inlineCheckbox11_9=-1;
	}
	else {
		inlineCheckbox11_9 = Integer.parseInt(request.getParameter("inlineCheckbox11_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox11_9;
	}

	if(request.getParameter("inlineCheckbox12_9") == null ) {
		inlineCheckbox12_9=-1;
	}
	else {
		inlineCheckbox12_9 = Integer.parseInt(request.getParameter("inlineCheckbox12_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox12_9;
	}

	if(request.getParameter("inlineCheckbox13_9") == null ) {
		inlineCheckbox13_9=-1;
	}
	else {
		inlineCheckbox13_9 = Integer.parseInt(request.getParameter("inlineCheckbox13_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox13_9;
	}

	if(request.getParameter("inlineCheckbox14_9") == null ) {
		inlineCheckbox14_9=-1;
	}
	else {
		inlineCheckbox14_9 = Integer.parseInt(request.getParameter("inlineCheckbox14_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox14_9;
	}

	if(request.getParameter("inlineCheckbox15_9") == null ) {
		inlineCheckbox15_9=-1;
	}
	else {
		inlineCheckbox15_9 = Integer.parseInt(request.getParameter("inlineCheckbox15_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox15_9;
	}

	if(request.getParameter("inlineCheckbox16_9") == null ) {
		inlineCheckbox16_9=-1;
		
	}
	else {
		inlineCheckbox16_9 = Integer.parseInt(request.getParameter("inlineCheckbox16_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox16_9;
	}

	if(request.getParameter("inlineCheckbox17_9") == null ) {
		inlineCheckbox17_9=-1;
	}
	else {
		inlineCheckbox17_9 = Integer.parseInt(request.getParameter("inlineCheckbox17_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox17_9;
	}
	
	if(request.getParameter("inlineCheckbox18_9") == null ) {
		inlineCheckbox18_9=-1;
	}
	else {
		inlineCheckbox18_9 = Integer.parseInt(request.getParameter("inlineCheckbox18_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox18_9;
	}
	
	if(request.getParameter("inlineCheckbox19_9") == null ) {
		inlineCheckbox19_9=-1;
	}
	else {
		inlineCheckbox19_9 = Integer.parseInt(request.getParameter("inlineCheckbox19_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox19_9;
	}
	
	if(request.getParameter("inlineCheckbox20_9") == null ) {
		inlineCheckbox20_9=-1;
	}
	else {
		inlineCheckbox20_9 = Integer.parseInt(request.getParameter("inlineCheckbox20_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox20_9;
	}
	
	if(request.getParameter("inlineCheckbox21_9") == null ) {
		inlineCheckbox21_9=-1;
	}
	else {
		inlineCheckbox21_9 = Integer.parseInt(request.getParameter("inlineCheckbox21_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox21_9;
	}

	if(request.getParameter("inlineCheckbox22_9") == null ) {
		inlineCheckbox22_9=-1;
	}
	else {
		inlineCheckbox22_9 = Integer.parseInt(request.getParameter("inlineCheckbox22_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox22_9;
	}

	if(request.getParameter("inlineCheckbox23_9") == null ) {
		inlineCheckbox23_9=-1;
	}
	else {
		inlineCheckbox23_9 = Integer.parseInt(request.getParameter("inlineCheckbox23_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox23_9;
	}

	if(request.getParameter("inlineCheckbox24_9") == null ) {
		inlineCheckbox24_9=-1;
	}
	else {
		inlineCheckbox24_9 = Integer.parseInt(request.getParameter("inlineCheckbox24_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox24_9;
	}

	if(request.getParameter("inlineCheckbox25_9") == null ) {
		inlineCheckbox25_9=-1;
	}
	else {
		inlineCheckbox25_9 = Integer.parseInt(request.getParameter("inlineCheckbox25_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox25_9;
	}

	if(request.getParameter("inlineCheckbox26_9") == null ) {
		inlineCheckbox26_9=-1;
		
	}
	else {
		inlineCheckbox26_9 = Integer.parseInt(request.getParameter("inlineCheckbox26_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox26_9;
	}

	if(request.getParameter("inlineCheckbox27_9") == null ) {
		inlineCheckbox27_9=-1;
	}
	else {
		inlineCheckbox27_9 = Integer.parseInt(request.getParameter("inlineCheckbox27_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox27_9;
	}
	
	if(request.getParameter("inlineCheckbox28_9") == null ) {
		inlineCheckbox28_9=-1;
	}
	else {
		inlineCheckbox28_9 = Integer.parseInt(request.getParameter("inlineCheckbox28_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox28_9;
	}
	
	if(request.getParameter("inlineCheckbox29_9") == null ) {
		inlineCheckbox29_9=-1;
	}
	else {
		inlineCheckbox29_9 = Integer.parseInt(request.getParameter("inlineCheckbox29_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox29_9;
	}
	
	if(request.getParameter("inlineCheckbox30_9") == null ) {
		inlineCheckbox30_9=-1;
	}
	else {
		inlineCheckbox30_9 = Integer.parseInt(request.getParameter("inlineCheckbox30_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox30_9;
	}
	
	if(request.getParameter("inlineCheckbox31_9") == null ) {
		inlineCheckbox31_9=-1;
	}
	else {
		inlineCheckbox31_9 = Integer.parseInt(request.getParameter("inlineCheckbox31_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox31_9;
	}

	if(request.getParameter("inlineCheckbox32_9") == null ) {
		inlineCheckbox32_9=-1;
	}
	else {
		inlineCheckbox32_9 = Integer.parseInt(request.getParameter("inlineCheckbox32_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox32_9;
	}

	if(request.getParameter("inlineCheckbox33_9") == null ) {
		inlineCheckbox33_9=-1;
	}
	else {
		inlineCheckbox33_9 = Integer.parseInt(request.getParameter("inlineCheckbox33_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox33_9;
	}

	if(request.getParameter("inlineCheckbox34_9") == null ) {
		inlineCheckbox34_9=-1;
	}
	else {
		inlineCheckbox34_9 = Integer.parseInt(request.getParameter("inlineCheckbox34_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox34_9;
	}

	if(request.getParameter("inlineCheckbox35_9") == null ) {
		inlineCheckbox35_9=-1;
	}
	else {
		inlineCheckbox35_9 = Integer.parseInt(request.getParameter("inlineCheckbox35_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox35_9;
	}

	if(request.getParameter("inlineCheckbox36_9") == null ) {
		inlineCheckbox36_9=-1;
		
	}
	else {
		inlineCheckbox36_9 = Integer.parseInt(request.getParameter("inlineCheckbox36_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox36_9;
	}

	if(request.getParameter("inlineCheckbox37_9") == null ) {
		inlineCheckbox37_9=-1;
	}
	else {
		inlineCheckbox37_9 = Integer.parseInt(request.getParameter("inlineCheckbox37_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox37_9;
	}
	
	if(request.getParameter("inlineCheckbox38_9") == null ) {
		inlineCheckbox38_9=-1;
	}
	else {
		inlineCheckbox38_9 = Integer.parseInt(request.getParameter("inlineCheckbox38_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox38_9;
	}
	
	if(request.getParameter("inlineCheckbox39_9") == null ) {
		inlineCheckbox39_9=-1;
	}
	else {
		inlineCheckbox39_9 = Integer.parseInt(request.getParameter("inlineCheckbox39_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox39_9;
	}
	
	if(request.getParameter("inlineCheckbox40_9") == null ) {
		inlineCheckbox40_9=-1;
	}
	else {
		inlineCheckbox40_9 = Integer.parseInt(request.getParameter("inlineCheckbox40_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox40_1;
	}
	
	if(request.getParameter("inlineCheckbox41_9") == null ) {
		inlineCheckbox41_9=-1;
	}
	else {
		inlineCheckbox41_9 = Integer.parseInt(request.getParameter("inlineCheckbox41_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox41_9;
	}

	if(request.getParameter("inlineCheckbox42_9") == null ) {
		inlineCheckbox42_9=-1;
	}
	else {
		inlineCheckbox42_9 = Integer.parseInt(request.getParameter("inlineCheckbox42_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox42_9;
	}

	if(request.getParameter("inlineCheckbox43_9") == null ) {
		inlineCheckbox43_9=-1;
	}
	else {
		inlineCheckbox43_9 = Integer.parseInt(request.getParameter("inlineCheckbox43_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox43_9;
	}

	if(request.getParameter("inlineCheckbox44_9") == null ) {
		inlineCheckbox4_9=-1;
	}
	else {
		inlineCheckbox44_9 = Integer.parseInt(request.getParameter("inlineCheckbox44_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox44_9;
	}

	if(request.getParameter("inlineCheckbox45_9") == null ) {
		inlineCheckbox45_9=-1;
	}
	else {
		inlineCheckbox45_9 = Integer.parseInt(request.getParameter("inlineCheckbox45_9"));
		check_cnt9++;
		arr9[current_9++]=inlineCheckbox45_9;
	}
	
	//10번째 용지
	if(request.getParameter("inlineCheckbox1_10") == null ) {
		inlineCheckbox1_10=-1;
	}
	else {
		inlineCheckbox1_10 = Integer.parseInt(request.getParameter("inlineCheckbox1_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox1_10;
	}
	
	if(request.getParameter("inlineCheckbox2_10") == null ) {
		inlineCheckbox2_10=-1;
	}
	else {
		inlineCheckbox2_10 = Integer.parseInt(request.getParameter("inlineCheckbox2_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox2_10;
	}

	if(request.getParameter("inlineCheckbox3_10") == null ) {
		inlineCheckbox3_10=-1;
	}
	else {
		inlineCheckbox3_10 = Integer.parseInt(request.getParameter("inlineCheckbox3_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox3_10;
	}

	if(request.getParameter("inlineCheckbox4_10") == null ) {
		inlineCheckbox4_10=-1;
	}
	else {
		inlineCheckbox4_10 = Integer.parseInt(request.getParameter("inlineCheckbox4_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox4_10;
	}

	if(request.getParameter("inlineCheckbox5_10") == null ) {
		inlineCheckbox5_10=-1;
	}
	else {
		inlineCheckbox5_10 = Integer.parseInt(request.getParameter("inlineCheckbox5_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox5_10;
	}

	if(request.getParameter("inlineCheckbox6_10") == null ) {
		inlineCheckbox6_10=-1;
		
	}
	else {
		inlineCheckbox6_10 = Integer.parseInt(request.getParameter("inlineCheckbox6_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox6_10;
	}

	if(request.getParameter("inlineCheckbox7_10") == null ) {
		inlineCheckbox7_10=-1;
	}
	else {
		inlineCheckbox7_10 = Integer.parseInt(request.getParameter("inlineCheckbox7_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox7_10;
	}
	
	if(request.getParameter("inlineCheckbox8_10") == null ) {
		inlineCheckbox8_10=-1;
	}
	else {
		inlineCheckbox8_10 = Integer.parseInt(request.getParameter("inlineCheckbox8_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox8_10;
	}

	if(request.getParameter("inlineCheckbox9_10") == null ) {
		inlineCheckbox9_10=-1;
	}
	else {
		inlineCheckbox9_10 = Integer.parseInt(request.getParameter("inlineCheckbox9_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox9_10;
	}
	
	if(request.getParameter("inlineCheckbox10_10") == null ) {
		inlineCheckbox10_10=-1;
	}
	else {
		inlineCheckbox10_10 = Integer.parseInt(request.getParameter("inlineCheckbox10_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox10_10;
	}
	
	if(request.getParameter("inlineCheckbox11_10") == null ) {
		inlineCheckbox11_10=-1;
	}
	else {
		inlineCheckbox11_10 = Integer.parseInt(request.getParameter("inlineCheckbox11_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox11_10;
	}

	if(request.getParameter("inlineCheckbox12_10") == null ) {
		inlineCheckbox12_10=-1;
	}
	else {
		inlineCheckbox12_10 = Integer.parseInt(request.getParameter("inlineCheckbox12_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox12_10;
	}

	if(request.getParameter("inlineCheckbox13_10") == null ) {
		inlineCheckbox13_10=-1;
	}
	else {
		inlineCheckbox13_10 = Integer.parseInt(request.getParameter("inlineCheckbox13_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox13_10;
	}

	if(request.getParameter("inlineCheckbox14_10") == null ) {
		inlineCheckbox14_10=-1;
	}
	else {
		inlineCheckbox14_10 = Integer.parseInt(request.getParameter("inlineCheckbox14_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox14_10;
	}

	if(request.getParameter("inlineCheckbox15_10") == null ) {
		inlineCheckbox15_10=-1;
	}
	else {
		inlineCheckbox15_10 = Integer.parseInt(request.getParameter("inlineCheckbox15_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox15_10;
	}

	if(request.getParameter("inlineCheckbox16_10") == null ) {
		inlineCheckbox16_10=-1;
		
	}
	else {
		inlineCheckbox16_10 = Integer.parseInt(request.getParameter("inlineCheckbox16_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox16_10;
	}

	if(request.getParameter("inlineCheckbox17_10") == null ) {
		inlineCheckbox17_10=-1;
	}
	else {
		inlineCheckbox17_10 = Integer.parseInt(request.getParameter("inlineCheckbox17_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox17_10;
	}
	
	if(request.getParameter("inlineCheckbox18_10") == null ) {
		inlineCheckbox18_10=-1;
	}
	else {
		inlineCheckbox18_10 = Integer.parseInt(request.getParameter("inlineCheckbox18_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox18_10;
	}
	
	if(request.getParameter("inlineCheckbox19_10") == null ) {
		inlineCheckbox19_10=-1;
	}
	else {
		inlineCheckbox19_10 = Integer.parseInt(request.getParameter("inlineCheckbox19_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox19_10;
	}
	
	if(request.getParameter("inlineCheckbox20_10") == null ) {
		inlineCheckbox20_10=-1;
	}
	else {
		inlineCheckbox20_10 = Integer.parseInt(request.getParameter("inlineCheckbox20_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox20_10;
	}
	
	if(request.getParameter("inlineCheckbox21_10") == null ) {
		inlineCheckbox21_10=-1;
	}
	else {
		inlineCheckbox21_10 = Integer.parseInt(request.getParameter("inlineCheckbox21_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox21_10;
	}

	if(request.getParameter("inlineCheckbox22_10") == null ) {
		inlineCheckbox22_10=-1;
	}
	else {
		inlineCheckbox22_10 = Integer.parseInt(request.getParameter("inlineCheckbox22_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox22_10;
	}

	if(request.getParameter("inlineCheckbox23_10") == null ) {
		inlineCheckbox23_10=-1;
	}
	else {
		inlineCheckbox23_10 = Integer.parseInt(request.getParameter("inlineCheckbox23_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox23_10;
	}

	if(request.getParameter("inlineCheckbox24_10") == null ) {
		inlineCheckbox24_10=-1;
	}
	else {
		inlineCheckbox24_10 = Integer.parseInt(request.getParameter("inlineCheckbox24_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox24_10;
	}

	if(request.getParameter("inlineCheckbox25_10") == null ) {
		inlineCheckbox25_10=-1;
	}
	else {
		inlineCheckbox25_10 = Integer.parseInt(request.getParameter("inlineCheckbox25_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox25_10;
	}

	if(request.getParameter("inlineCheckbox26_10") == null ) {
		inlineCheckbox26_10=-1;
		
	}
	else {
		inlineCheckbox26_10 = Integer.parseInt(request.getParameter("inlineCheckbox26_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox26_10;
	}

	if(request.getParameter("inlineCheckbox27_10") == null ) {
		inlineCheckbox27_10=-1;
	}
	else {
		inlineCheckbox27_10 = Integer.parseInt(request.getParameter("inlineCheckbox27_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox27_10;
	}
	
	if(request.getParameter("inlineCheckbox28_10") == null ) {
		inlineCheckbox28_10=-1;
	}
	else {
		inlineCheckbox28_10 = Integer.parseInt(request.getParameter("inlineCheckbox28_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox28_10;
	}
	
	if(request.getParameter("inlineCheckbox29_10") == null ) {
		inlineCheckbox29_10=-1;
	}
	else {
		inlineCheckbox29_10 = Integer.parseInt(request.getParameter("inlineCheckbox29_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox29_10;
	}
	
	if(request.getParameter("inlineCheckbox30_10") == null ) {
		inlineCheckbox30_10=-1;
	}
	else {
		inlineCheckbox30_10 = Integer.parseInt(request.getParameter("inlineCheckbox30_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox30_10;
	}
	
	if(request.getParameter("inlineCheckbox31_10") == null ) {
		inlineCheckbox31_10=-1;
	}
	else {
		inlineCheckbox31_10 = Integer.parseInt(request.getParameter("inlineCheckbox31_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox31_10;
	}

	if(request.getParameter("inlineCheckbox32_10") == null ) {
		inlineCheckbox32_10=-1;
	}
	else {
		inlineCheckbox32_10 = Integer.parseInt(request.getParameter("inlineCheckbox32_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox32_10;
	}

	if(request.getParameter("inlineCheckbox33_10") == null ) {
		inlineCheckbox33_10=-1;
	}
	else {
		inlineCheckbox33_10 = Integer.parseInt(request.getParameter("inlineCheckbox33_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox33_10;
	}

	if(request.getParameter("inlineCheckbox34_10") == null ) {
		inlineCheckbox34_10=-1;
	}
	else {
		inlineCheckbox34_10 = Integer.parseInt(request.getParameter("inlineCheckbox34_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox34_10;
	}

	if(request.getParameter("inlineCheckbox35_10") == null ) {
		inlineCheckbox35_10=-1;
	}
	else {
		inlineCheckbox35_10 = Integer.parseInt(request.getParameter("inlineCheckbox35_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox35_10;
	}

	if(request.getParameter("inlineCheckbox36_10") == null ) {
		inlineCheckbox36_10=-1;
		
	}
	else {
		inlineCheckbox36_10 = Integer.parseInt(request.getParameter("inlineCheckbox36_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox36_10;
	}

	if(request.getParameter("inlineCheckbox37_10") == null ) {
		inlineCheckbox37_10=-1;
	}
	else {
		inlineCheckbox37_10 = Integer.parseInt(request.getParameter("inlineCheckbox37_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox37_10;
	}
	
	if(request.getParameter("inlineCheckbox38_10") == null ) {
		inlineCheckbox38_10=-1;
	}
	else {
		inlineCheckbox38_10 = Integer.parseInt(request.getParameter("inlineCheckbox38_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox38_10;
	}
	
	if(request.getParameter("inlineCheckbox39_10") == null ) {
		inlineCheckbox39_10=-1;
	}
	else {
		inlineCheckbox39_10 = Integer.parseInt(request.getParameter("inlineCheckbox39_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox39_10;
	}
	
	if(request.getParameter("inlineCheckbox40_10") == null ) {
		inlineCheckbox40_10=-1;
	}
	else {
		inlineCheckbox40_10 = Integer.parseInt(request.getParameter("inlineCheckbox40_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox40_1;
	}
	
	if(request.getParameter("inlineCheckbox41_10") == null ) {
		inlineCheckbox41_10=-1;
	}
	else {
		inlineCheckbox41_10 = Integer.parseInt(request.getParameter("inlineCheckbox41_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox41_10;
	}

	if(request.getParameter("inlineCheckbox42_10") == null ) {
		inlineCheckbox42_10=-1;
	}
	else {
		inlineCheckbox42_10 = Integer.parseInt(request.getParameter("inlineCheckbox42_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox42_10;
	}

	if(request.getParameter("inlineCheckbox43_10") == null ) {
		inlineCheckbox43_10=-1;
	}
	else {
		inlineCheckbox43_10 = Integer.parseInt(request.getParameter("inlineCheckbox43_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox43_10;
	}

	if(request.getParameter("inlineCheckbox44_10") == null ) {
		inlineCheckbox4_10=-1;
	}
	else {
		inlineCheckbox44_10 = Integer.parseInt(request.getParameter("inlineCheckbox44_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox44_10;
	}

	if(request.getParameter("inlineCheckbox45_10") == null ) {
		inlineCheckbox45_10=-1;
	}
	else {
		inlineCheckbox45_10 = Integer.parseInt(request.getParameter("inlineCheckbox45_10"));
		check_cnt10++;
		arr10[current_10++]=inlineCheckbox45_10;
	}
	
	
	
	
 	if(0<check_cnt1 && check_cnt1<6) {
		
		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('1번 입력이 안된사항이 있습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
	}
 	else if(check_cnt1>6) {

		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('1번 입력을 초과했습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
 	}
 	
	if(0<check_cnt2 && check_cnt2<6) {
		
		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('2번 입력이 안된사항이 있습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
	}
 	
 	else if(check_cnt2>6) {

		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('2번 입력을 초과했습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
 	}
	
	if(0<check_cnt3 && check_cnt3<6) {
		
		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('3번 입력이 안된사항이 있습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
	}
 	
 	else if(check_cnt3>6) {

		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('3번 입력을 초과했습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
 	}

	
	if(0<check_cnt4 && check_cnt4<6) {
		
		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('4번 입력이 안된사항이 있습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
	}
 	
 	else if(check_cnt4>6) {

		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('4번 입력을 초과했습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
 	}
	
	
	if(0<check_cnt5 && check_cnt5<6) {
		
		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('5번 입력이 안된사항이 있습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
	}
 	
 	else if(check_cnt5>6) {

		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('5번 입력을 초과했습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
 	}
	
	
	if(0<check_cnt6 && check_cnt6<6) {
		
		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('6번 입력이 안된사항이 있습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
	}
 	
 	else if(check_cnt6>6) {

		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('6번 입력을 초과했습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
 	}
	
	
	if(0<check_cnt7 && check_cnt7<6) {
		
		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('7번 입력이 안된사항이 있습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
	}
 	
 	else if(check_cnt7>6) {

		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('7번 입력을 초과했습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
 	}
	
	
	if(0<check_cnt8 && check_cnt8<6) {
		
		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('8번 입력이 안된사항이 있습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
	}
 	
 	else if(check_cnt8>6) {

		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('8번 입력을 초과했습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
 	}
	
	
	if(0<check_cnt9 && check_cnt9<6) {
		
		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('9번 입력이 안된사항이 있습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
	}
 	
 	else if(check_cnt9>6) {

		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('9번 입력을 초과했습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
 	}
	
	
	if(0<check_cnt10 && check_cnt10<6) {
		
		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('10번 입력이 안된사항이 있습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
	}
 	else if(check_cnt10>6) {

		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('10번 입력을 초과했습니다.')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
 	}
	

	LottoDAO lottoDAO=new LottoDAO();
	
	Draw draw=new Draw();

	
	int cnt=0;
	

	Compare compare =new Compare();
	UserDTO userDTO =new UserDTO();
	UserDAO userDAO =new UserDAO();
	PlayDAO playDAO=new PlayDAO();
	ResultDAO resultDAO=new ResultDAO();
	int grade1=0;
	int grade2=0;
	int grade3=0;
	int grade4=0;
	int grade5=0;
	int grade6=0;
	int grade7=0;
	int grade8=0;
	int grade9=0;
	int grade10=0;
	int value1=compare.Comparison(arr1[0],arr1[1],arr1[2],arr1[3],arr1[4],arr1[5]);
	if(value1==6) {
		grade1=1;
	}
	else if(value1==5) {
		if(compare.getBounce()==1) {
			grade1=2;
		}
		else {
			grade1=3;
		}
	}
	else if(value1==4) {
		grade1=4;
	}
	else if(value1==3){
		grade1=5;
	}
	
	int value2=compare.Comparison(arr2[0],arr2[1],arr2[2],arr2[3],arr2[4],arr2[5]);
	if(value2==6) {
		grade2=1;
	}
	else if(value2==5) {
		if(compare.getBounce()==1) {
			grade2=2;
		}
		else {
			grade2=3;
		}
	}
	else if(value2==4) {
		grade2=4;
	}
	else if(value2==3){
		grade2=5;
	}
	
	int value3=compare.Comparison(arr3[0],arr3[1],arr3[2],arr3[3],arr3[4],arr3[5]);
	if(value3==6) {
		grade3=1;
	}
	else if(value3==5) {
		if(compare.getBounce()==1) {
			grade3=2;
		}
		else {
			grade3=3;
		}
	}
	else if(value3==4) {
		grade3=4;
	}
	else if(value3==3){
		grade3=5;
	}
	
	int value4=compare.Comparison(arr4[0],arr4[1],arr4[2],arr4[3],arr4[4],arr4[5]);
	if(value4==6) {
		grade4=1;
	}
	else if(value4==5) {
		if(compare.getBounce()==1) {
			grade4=2;
		}
		else {
			grade4=3;
		}
	}
	else if(value4==4) {
		grade4=4;
	}
	else if(value4==3){
		grade4=5;
	}
	
	int value5=compare.Comparison(arr5[0],arr5[1],arr5[2],arr5[3],arr5[4],arr5[5]);
	if(value5==6) {
		grade5=1;
	}
	else if(value5==5) {
		if(compare.getBounce()==1) {
			grade5=2;
		}
		else {
			grade5=3;
		}
	}
	else if(value5==4) {
		grade5=4;
	}
	else if(value5==3){
		grade5=5;
	}
	
	int value6=compare.Comparison(arr6[0],arr6[1],arr6[2],arr6[3],arr6[4],arr6[5]);
	if(value6==6) {
		grade6=1;
	}
	else if(value6==5) {
		if(compare.getBounce()==1) {
			grade6=2;
		}
		else {
			grade6=3;
		}
	}
	else if(value6==4) {
		grade6=4;
	}
	else if(value6==3){
		grade6=5;
	}
	
	int value7=compare.Comparison(arr7[0],arr7[1],arr7[2],arr7[3],arr7[4],arr7[5]);
	if(value7==6) {
		grade7=1;
	}
	else if(value7==5) {
		if(compare.getBounce()==1) {
			grade7=2;
		}
		else {
			grade7=3;
		}
	}
	else if(value7==4) {
		grade7=4;
	}
	else if(value7==3){
		grade7=5;
	}
	
	int value8=compare.Comparison(arr8[0],arr8[1],arr8[2],arr8[3],arr8[4],arr8[5]);
	if(value8==6) {
		grade8=1;
	}
	else if(value8==5) {
		if(compare.getBounce()==1) {
			grade8=2;
		}
		else {
			grade8=3;
		}
	}
	else if(value8==4) {
		grade8=4;
	}
	else if(value8==3){
		grade8=5;
	}
	
	int value9=compare.Comparison(arr9[0],arr9[1],arr9[2],arr9[3],arr9[4],arr9[5]);
	if(value9==6) {
		grade9=1;
	}
	else if(value9==5) {
		if(compare.getBounce()==1) {
			grade9=2;
		}
		else {
			grade9=3;
		}
	}
	else if(value9==4) {
		grade9=4;
	}
	else if(value9==3){
		grade9=5;
	}
	
	int value10=compare.Comparison(arr10[0],arr10[1],arr10[2],arr10[3],arr10[4],arr10[5]);
	if(value10==6) {
		grade10=1;
	}
	else if(value10==5) {
		if(compare.getBounce()==1) {
			grade10=2;
		}
		else {
			grade10=3;
		}
	}
	else if(value10==4) {
		grade10=4;
	}
	else if(value10==3){
		grade10=5;
	}

	if(arr1[0]!=0) {

		resultDAO.reslt_insert(draw.getRounding(), 1,value1, grade1);
		 playDAO.play_insert(draw.getRounding(),userDAO.password,1,arr1[0],arr1[1],arr1[2],arr1[3], arr1[4], arr1[5]);
		cnt++;
	}
	if(arr2[0]!=0) {
		resultDAO.reslt_insert(draw.getRounding(), 2,value2, grade2);
		 playDAO.play_insert(draw.getRounding(),userDAO.password,2,arr2[0],arr2[1],arr2[2],arr2[3],arr2[4],arr2[5]);
		cnt++;
	}
	if(arr3[0]!=0) {

		resultDAO.reslt_insert(draw.getRounding(), 3,value3, grade3);
		playDAO.play_insert(draw.getRounding(),userDAO.password,3,arr3[0],arr3[1],arr3[2],arr3[3],arr3[4],arr3[5]);
		cnt++;
	}
	if(arr4[0]!=0) {
		resultDAO.reslt_insert(draw.getRounding(), 4,value4, grade4);
		playDAO.play_insert(draw.getRounding(),userDAO.password,4 ,arr4[0],arr4[1],arr4[2],arr4[3],arr4[4],arr4[5]);
		cnt++;
	}
	if(arr5[0]!=0) {
		resultDAO.reslt_insert(draw.getRounding(), 5,value5, grade5);
		playDAO.play_insert(draw.getRounding(),userDAO.password,5,arr5[0],arr5[1],arr5[2],arr5[3],arr5[4],arr5[5]);
		cnt++;
	}
	if(arr6[0]!=0) {
		resultDAO.reslt_insert(draw.getRounding(), 6,value6, grade6);
		playDAO.play_insert(draw.getRounding(),userDAO.password,6 ,arr6[0],arr6[1],arr6[2],arr6[3],arr6[4],arr6[5]);
		cnt++;
	}
	if(arr7[0]!=0) {
		resultDAO.reslt_insert(draw.getRounding(), 7,value7, grade7);
		playDAO.play_insert(draw.getRounding(),userDAO.password,7,arr7[0],arr7[1],arr7[2],arr7[3],arr7[4],arr7[5]);
		cnt++;
	}
	if(arr8[0]!=0) {
		resultDAO.reslt_insert(draw.getRounding(), 8,value8, grade8);
		playDAO.play_insert(draw.getRounding(),userDAO.password,8 ,arr8[0],arr8[1],arr8[2],arr8[3],arr8[4],arr8[5]);
		cnt++;
	}
	if(arr9[0]!=0) {

		resultDAO.reslt_insert(draw.getRounding(), 9,value9, grade9);
		playDAO.play_insert(draw.getRounding(),userDAO.password,9 ,arr9[0],arr9[1],arr9[2],arr9[3],arr9[4],arr9[5]);
		cnt++;
	}
	if(arr10[0]!=0) {

		resultDAO.reslt_insert(draw.getRounding(), 10,value10, grade10);
		 playDAO.play_insert(draw.getRounding(),userDAO.password,10,arr10[0],arr10[1],arr10[2],arr10[3],arr10[4],arr10[5]);
		cnt++;
	}
	if(cnt>0) {
		PrintWriter script = response.getWriter();
	
		script.println("<script>");
		
		script.println("com=confirm('로또가 저장되었습니다. 게임을 더하겠습니까?');");
	
		script.println("if(com) { ");
	
		script.println("	location.href='Game2.jsp' }");
		
		script.println("else { ");
	
		script.println("	location.href='index.jsp' }");
		
		script.println("</script>");
	
		script.close();
		return;
	}
	else {

		PrintWriter script = response.getWriter();

		script.println("<script>");
		
		script.println("alert('입력이 안돼었습니다. 입력하세요')");

		script.println("history.back();");

		script.println("</script>");

		script.close();
		return;
	}

%>