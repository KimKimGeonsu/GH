<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
				<c:forEach var="vo" items="${list}"> 
					  <tr>
							<td data-th="전체">
								<input type="checkbox">
							</td>
							<td data-th="번호">${vo.PD_NAME }</td>
							<td data-th="이미지">
								<div class="row">
									<div class="col-sm-2 hidden-xs"><img src="shopImg/${vo.PD_IMG}" alt="..." class="img-responsive"/></div>									
								</div>
							</td>
							<td data-th="분류">${vo.PD_PRICE}</td>
							<td data-th="이름">${vo.PD_PRICE}</td>
							<td data-th="수량" style="vertical-align:top; font-size: 0.7px">
								<table class="table-striped" style="width: 100%">
									<tr>
										<td>빨간색레드빨간색레드<td>
										
											<table style="width: 100%">
												<tr>
													<td>99~98 99~98 <br>사이즈</td>
													<td>50050개</td>													
												</tr>
												<tr>
													<td>99~98 99~98 <br>사이즈</td>
													<td>50050개</td>													
												</tr>
												<tr>
													<td>99~98 99~98 <br>사이즈</td>
													<td>50050개</td>													
												</tr>
											</table>
										</td>
									</tr>									
								</table>																									
							</td>
							<td data-th="판매량" class="text-center">15000</td>
							<td class="actions" data-th="">
								<button class="btn btn-info btn-sm"><i class="fa fa-pencil"></i></button>
								<button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>								
							</td>
						</tr>
				</c:forEach>