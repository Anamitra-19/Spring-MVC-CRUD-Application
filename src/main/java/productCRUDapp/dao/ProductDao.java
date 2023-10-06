package productCRUDapp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import productCRUDapp.model.Product;

@Component
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	//to create product
	@Transactional
	public void createProduct(Product product) {
		// this.hibernateTemplate.save(product);
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	
	//to get all products
	public List<Product> getProducts(){
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	
	//delete the single product
	@Transactional
	public void deleteProduct(int pId) {
		Product p = this.hibernateTemplate.load(Product.class, pId);
		this.hibernateTemplate.delete(p);
	}
	
	
	//to get a single product
	public Product getProduct(int pId) {
		Product p = this.hibernateTemplate.get(Product.class,pId);
		return p;
	}
}
