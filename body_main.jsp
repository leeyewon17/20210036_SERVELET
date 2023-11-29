<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "W Concept에 오신것을 환영합니다.";
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
        
	<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
                <div class="card bg-dark text-white">
                <img src="image/product/<%=product.getFilename()%>" class="card-img" alt="...">
                <div class="card-img-overlay">
                <h5 class="card-title">이미지 샘플</h5>
                <p class="card-text">출처:W컨셉</p>
                </div>
                </div>
				<h3><%=product.getPname()%></h3> <!--상품 이름-->
				<p><%=product.getDescription()%> <!--상품 정보-->
				<p><%=product.getUnitPrice()%>원 <!--상품 가격-->
                <p><a href="product_detail.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
        

        
    <div class="list-group">
      <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
        더블유데이
      </a>
      <a href="#" class="list-group-item list-group-item-action">W컨셉 시리즈</a>
    </div>
