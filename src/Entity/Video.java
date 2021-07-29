package Entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Video")
public class Video {
	@Id 
	@GeneratedValue(strategy =GenerationType.IDENTITY )
	@Column(name = "id")
	String id;
	@Column(name = "title")
	String title;
	@Column(name = "content")
	String content;
	@Column(name = "director")
	String director;
	@Column(name = "timee")
	Integer timee;
	@Column(name = "languagee")
	String languagee;
	@Column(name = "review")
	String review;
	@Column(name = "trailer")
	String trailer;
	@Column(name = "img")
	String img;
	@Column (name ="tenloai")
	String tenloai;
	@Column(name ="kieu")
	String kieu;
	@OneToMany(mappedBy ="video")
	List<Favorite> favorite;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public Integer getTimee() {
		return timee;
	}
	public void setTimee(Integer timee) {
		this.timee = timee;
	}
	public String getLanguagee() {
		return languagee;
	}
	public void setLanguagee(String languagee) {
		this.languagee = languagee;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public String getTrailer() {
		return trailer;
	}
	public void setTrailer(String trailer) {
		this.trailer = trailer;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getTenloai() {
		return tenloai;
	}
	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}
	public String getKieu() {
		return kieu;
	}
	public void setKieu(String kieu) {
		this.kieu = kieu;
	}
	public List<Favorite> getFavorite() {
		return favorite;
	}
	public void setFavorite(List<Favorite> favorite) {
		this.favorite = favorite;
	}
	
	

	
}
