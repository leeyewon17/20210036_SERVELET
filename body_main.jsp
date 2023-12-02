<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
<%@ include file="db/db_conn.jsp"%>

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
		            String sql = "select * from product"; // 조회
		            pstmt = conn.prepareStatement(sql); // 연결 생성
		            rs = pstmt.executeQuery(); // 쿼리 실행
		            while (rs.next()) { // 결과 ResultSet 객체 반복
	        %>
			<div class="col-md-4">
                <div class="card bg-dark text-white">
                <img src="image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                <div class="card-img-overlay">
                <h5 class="card-title">이미지 샘플</h5>
                <p class="card-text">출처:W컨셉</p>
                </div>
                </div>
				<h3><%=rs.getString("p_name")%></h3>
		        <p><%=rs.getString("p_description")%>
		        <p><%=rs.getString("p_UnitPrice")%>원
		        <p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
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
