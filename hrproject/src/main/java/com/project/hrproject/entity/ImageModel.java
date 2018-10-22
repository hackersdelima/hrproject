package com.project.hrproject.entity;

public class ImageModel {
private String images_id, userid, imagetype[], description[];
private byte[] image;
public String getImages_id() {
	return images_id;
}
public void setImages_id(String images_id) {
	this.images_id = images_id;
}
public String getUserid() {
	return userid;
}
public void setUserid(String userid) {
	this.userid = userid;
}
public String[] getImagetype() {
	return imagetype;
}
public void setImagetype(String[] imagetype) {
	this.imagetype = imagetype;
}
public String[] getDescription() {
	return description;
}
public void setDescription(String[] description) {
	this.description = description;
}
public byte[] getImage() {
	return image;
}
public void setImage(byte[] image) {
	this.image = image;
}

}
