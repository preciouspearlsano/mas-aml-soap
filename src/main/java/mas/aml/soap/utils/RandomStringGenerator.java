package mas.aml.soap.utils;

import java.util.Random;

public class RandomStringGenerator {

	private static final String ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	private static final int LENGTH = 12;

	public static String generate() {
		Random random = new Random();
		StringBuilder builder = new StringBuilder(LENGTH);

		for (int i = 0; i < 2; i++) {
			builder.append(ALPHABET.charAt(random.nextInt(ALPHABET.length())));
		}
		for (int i = 0; i < 10; i++) {
			builder.append(random.nextInt(10));
		}

		return builder.toString();
	}

	public static void main(String[] args) {
		System.out.println(generate());
	}
}