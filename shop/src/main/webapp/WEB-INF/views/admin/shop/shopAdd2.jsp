<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html class="no-js" lang="zxx">
<jsp:include page="../../include_main/header_css.jsp" />
<body>

	<div class="wrapper">
		<jsp:include page="../../include_main/header.jsp" />
		<div class="banner-area hm1-banner pt-130 pb-107"><!-- divnanner -->
		<div class="container col-md-12">    
            <div class="container">
            
    <div id="signupbox" style=" margin-top:50px ">
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="panel-title text-center"><h3>상품등록 하기</h3></div>
            </div>
            
            
 
             
             <div class="col-md-6">
                        <div id="div_p_name" class="form-group required">
                            <label for="p_name" class="control-label col-md-4  requiredField">Project Name<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md emailinput form-control" id="p_name" name="p_name" placeholder="Enter Project Name" style="margin-bottom: 10px" type="text" />
                            </div>     
                        </div>
                    </div>
            
            
            <div class="col-md-6">
                        <div id="div_id_downloads" class="form-group required">
                            <label for="p_downloads" class="control-label col-md-4  requiredField">Project Language<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <select name="cars" style="margin-bottom: 10px" class="form-control" >                                   
                                    <option value="volvo">Java</option>
                                     <option value="saab">Python</option>
                                    <option value="fiat">Php</option>
                                    <option value="audi">Dot Net</option>
                                
                                </select>
                                
                                <select name="cars" style="margin-bottom: 10px" class="form-control" >                                   
                                    <option value="volvo">Java</option>
                                     <option value="saab">Python</option>
                                    <option value="fiat">Php</option>
                                    <option value="audi">Dot Net</option>
                                
                                </select>
                                
                                
                            </div> 
                                
                        </div>
                    </div>
                    
                    
                    
                      
            <div class="panel-body" >                
                     <div class="col-md-6">
                        <div id="div_id_image" class="form-group required">
                            <label for="id_image"  class="control-label col-md-4  requiredField">Main Image<span class="asteriskField"></span> </label>
                            <div class="controls col-md-8 "  style="margin-bottom: 10px">
                                <input class="input-md emailinput form-control" id="p_id" name="p_id" placeholder="Enter Project Id" style="margin-bottom: 10px" type="file" />
                            </div>
                        </div>
                    </div>




                    <div class="col-md-12">
                        <div id="div_description" class="form-group required">
                            <label for="p_name" class="control-label col-md-2  requiredField">Description<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-10 ">
                                <textarea style="margin-bottom: 10px" ></textarea>
                            </div>     
                        </div>
                    </div>
                    <br/>
                    <div class="form-group">
                    <div class="col-md-12 text-center">
                        <br/>
                        <button class="btn btn-info btn-md" type="submit">Add Project</button>  <button class="btn btn-danger btn-md" type="reset">Cancel</button>
                    </div>
                    </div>
                
            </div>
        </div>
    </div> 
</div>
		   </div>       
            </div><!-- divbannerEnd -->

		<jsp:include page="../../include_main/footer.jsp" />
		
	</div><!-- wrapperEnd -->
	<jsp:include page="../../include_main/footer_js.jsp" />

</body>
</html>