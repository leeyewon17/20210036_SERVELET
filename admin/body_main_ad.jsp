<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dao.ProductRepository"%>

<%! String greeting = "현재 페이지는 VGA 그래픽 카드 상품 목록입니다.";
	String tagline = "하단 페이지 : 확인";%>

    <div class="container">
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-4">
				<%=greeting%>
            </h3>
		</div>
	</div>
	<%
		ProductRepository dao = ProductRepository.getInstance();
        ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>

        
    <div class="card bg-dark text-white">
        <img src="image/product/<%=product.getFilename()%>" class="card-img" alt="...">
        <div class="card-img-overlay">
        <h5 class="card-title">그래픽 카드 이미지 샘플</h5>
        <p class="card-text">출처 : 구글 검색</p>
        </div>
        </div>
        
	<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
				<h3><%=product.getPname()%></h3> <!--상품 이름-->
				<p><%=product.getDescription()%> <!--상품 정보-->
				<p><%=product.getUnitPrice()%>원 <!--상품 가격-->
                <p><a href="product_detail_ad.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
        

        
    <div class="list-group">
      <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
        지포스 3060 시리즈
      </a>
      <a href="#" class="list-group-item list-group-item-action">지포스 3070 시리즈</a>
      생략….
    </div>
