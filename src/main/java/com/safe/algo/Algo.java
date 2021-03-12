package com.safe.algo;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Random;

import com.safe.vo.Food;

public class Algo {

	public List<Food> goodFood(List<Food> list) {

		Collections.sort(list, new Comparator<Food>() {

			@Override
			public int compare(Food o1, Food o2) {
				double total1 = o1.getCarbo() + o1.getProtein() + o1.getFat();
				double total2 = o2.getCarbo() + o2.getProtein() + o2.getFat();

				double gap1 = Math.abs(50.0 - (o1.getCarbo() / total1) * 100.0)
						+ Math.abs(30.0 - (o1.getProtein() / total1) * 100)
						+ Math.abs(20.0 - (o1.getFat() / total1) * 100);
				double gap2 = Math.abs(50.0 - (o2.getCarbo() / total2) * 100.0)
						+ Math.abs(30.0 - (o2.getProtein() / total2) * 100)
						+ Math.abs(20.0 - (o2.getFat() / total2) * 100);

				return Double.compare(gap1, gap2);
			}
		});
		return list;
	}

	public List<Food> badFood(List<Food> list) {

		Collections.sort(list, new Comparator<Food>() {

			@Override
			public int compare(Food o1, Food o2) {
				double total1 = o1.getCarbo() + o1.getProtein() + o1.getFat()+o1.getSugar()+o1.getNatrium()+o1.getChole()+o1.getFattyacid()+o1.getTransfat();
				double total2 = o2.getCarbo() + o2.getProtein() + o2.getFat()+o1.getSugar()+o2.getNatrium()+o2.getChole()+o2.getFattyacid()+o2.getTransfat();
				
				
				
				return -Double.compare(o1.getTransfat()/total1, o2.getTransfat()/total2);
			}
		});
		return list;
	}

	public Food randomFood(List<Food> list) {

		Random random = new Random();
		int r_index = random.nextInt(list.size());

		Food f = list.get(r_index);

		return f;
	}

	public List<Food> chartFoods(List<Food> list) {

		Collections.sort(list, new Comparator<Food>() {

			@Override
			public int compare(Food o1, Food o2) {
				return -Integer.compare(o1.getCount(), o2.getCount());
			}
		});
		return list;
	}
	
	
	
	

}
