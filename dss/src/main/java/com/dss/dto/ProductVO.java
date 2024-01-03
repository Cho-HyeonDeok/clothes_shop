package com.dss.dto;

import java.sql.Timestamp;

public class ProductVO {
	// product_seq, price1, price2, price3  : price1, price2, price3의 값???
	private int pseq, price1, price2, price3;
	// 상품 이름, 종류, 내용, 이미지, useyn???, bestyn???
	private String name, kind, content, image, useyn, bestyn, brand,coordi;
	public String getCoordi() {
		return coordi;
	}
	public void setCoordi(String coordi) {
		this.coordi = coordi;
	}

	private String image1, image2, image3, image4, image5, image6, image7, image8, image9;
	public String getImage6() {
		return image6;
	}
	public void setImage6(String image6) {
		this.image6 = image6;
	}
	public String getImage7() {
		return image7;
	}
	public void setImage7(String image7) {
		this.image7 = image7;
	}
	public String getImage8() {
		return image8;
	}
	public void setImage8(String image8) {
		this.image8 = image8;
	}
	public String getImage9() {
		return image9;
	}
	public void setImage9(String image9) {
		this.image9 = image9;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getImage2() {
		return image2;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	public String getImage3() {
		return image3;
	}
	public void setImage3(String image3) {
		this.image3 = image3;
	}
	public String getImage4() {
		return image4;
	}
	public void setImage4(String image4) {
		this.image4 = image4;
	}
	public String getImage5() {
		return image5;
	}
	public void setImage5(String image5) {
		this.image5 = image5;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}

	// 날짜
	private Timestamp indate;
	
	public int getPseq() {
		return pseq;
	}
	public void setPseq(int pseq) {
		this.pseq = pseq;
	}
	public int getPrice1() {
		return price1;
	}
	public void setPrice1(int price1) {
		this.price1 = price1;
	}
	public int getPrice2() {
		return price2;
	}
	public void setPrice2(int price2) {
		this.price2 = price2;
	}
	public int getPrice3() {
		return price3;
	}
	public void setPrice3(int price3) {
		this.price3 = price3;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getUseyn() {
		return useyn;
	}
	public void setUseyn(String useyn) {
		this.useyn = useyn;
	}
	public String getBestyn() {
		return bestyn;
	}
	public void setBestyn(String bestyn) {
		this.bestyn = bestyn;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	
	@Override
	public String toString() {
		return "ProductVO [pseq=" + pseq + ", price1=" + price1 + ", price2=" + price2 + ", price3=" + price3
				+ ", name=" + name + ", kind=" + kind + ", content=" + content + ", image=" + image + ", useyn=" + useyn
				+ ", bestyn=" + bestyn + ", brand=" + brand + ", indate=" + indate + "]";
	}
}
