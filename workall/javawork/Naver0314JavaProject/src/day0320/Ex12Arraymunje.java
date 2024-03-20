package day0320;

import java.util.Scanner;

public class Ex12Arraymunje {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String[] name;
		int[] kor;
		int[] eng;
		int[] inwon;
		int[] rank;
		int[] avg;
		int count = 0;

		System.out.println("인원수 : ");
		count = sc.nextInt();
		name = new String[count];
		kor = new int[count];
		eng = new int[count];
		inwon = new int[count];
		rank = new int[count];
		avg = new int[count];

		for (int i = 0; i < count; i++) {
			System.out.print("이름 : ");
			name[i] = sc.next();
			System.out.print("국어 : ");
			kor[i] = sc.nextInt();
			System.out.print("영어 : ");
			eng[i] = sc.nextInt();
			avg[i] = (kor[i] + eng[i]) / 2;
		}

		for (int i = 0; i < count; i++) {
			rank[i] = 1;
			for (int j = 0; j < count; j++) {
				if (avg[i] < avg[j]) {
					rank[i] += 1;
				}
			}
		}

		System.out.println("=".repeat(50));
		System.out.println("번호\t이름\t국어\t영어\t평균\t등수");
		System.out.println("=".repeat(50));
		for (int i = 0; i < count; i++) {
			System.out.printf("%d\t%s\t%d\t%d\t%d\t%d\n", i + 1, name[i], kor[i], eng[i], avg[i], rank[i]);
		}
	}
}
