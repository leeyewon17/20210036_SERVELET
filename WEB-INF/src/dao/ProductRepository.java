package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>(); // ArrayList를 Product로 캐스팅
    private static ProductRepository instance = new ProductRepository();

	public ProductRepository() {
		Product phone = new Product("P1234", "LOOKAST", 108,000);
		phone.setDescription("위트니 컷아웃 니트 탑 / WHITNEY CUTOUT KNIT TOP_3colors");
		phone.setCategory("니트");
		phone.setManufacturer("룩캐스트");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
        phone.setFilename("p1234.png");

        
        Product notebook = new Product("P1235", "MONGDOL", 248,000);
		notebook.setDescription("에코 퍼 무스탕 자켓 블랙 MDJK025BLACK");
		notebook.setCategory("무스탕");
		notebook.setManufacturer("몽돌");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("New");
        notebook.setFilename("p1235.png");


		Product tablet = new Product("P1236", "grove", 128,000);
		tablet.setDescription("AILE KNIT [2COLOR]");
		tablet.setCategory("니트");
		tablet.setManufacturer("그로브");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("New");
        tablet.setFilename("p1236.png");

		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		// listOfProducts.add(상품명);
	}
    

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
    
    public static ProductRepository getInstance(){
	            return instance;
    }

    public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
    
    public void addProduct(Product product) {
	listOfProducts.add(product);
    }
}