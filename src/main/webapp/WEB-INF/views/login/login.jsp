<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>I CAMP DO IT</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <link rel="stylesheet" href="./resources/bootstrap-5/html/css/font.css" type="text/css">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="./resources/bootstrap-5/html/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="./resources/bootstrap-5/html/vendor/magnific-popup/magnific-popup.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="./resources/bootstrap-5/html/css/style.green.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="./resources/bootstrap-5/html/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="./resources/bootstrap-5/html/img/logo2.svg">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
  	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
  </head>
  <body>
    <div class="container-fluid px-3">
      <div class="row min-vh-100">
        <div class="col-md-8 col-lg-6 col-xl-5 d-flex align-items-center">
          <div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
            <div class="mb-5"><img class="img-fluid mb-3" src="./resources/bootstrap-5/html/img/logo2.svg" alt="..." style="max-width: 4rem;">
              <h2>LOGIN</h2>
            </div>
            
            <!-- 로그인시작 -->
            <form class="login form-validate" action="login_ok.do" method="post">
              <!-- 아이디 -->
              <div class="mb-4">
                <div class="row">
                  <div class="col">
                    <label class="form-label" for="loginUserID"> ID</label>
                  </div>
                  <div class="col-auto"><a class="form-text small text-primary" href="#" data-bs-toggle="modal" data-bs-target="#FindID">Forgot ID?</a></div>
                </div>
                <input class="form-control" name="id" id="id" type="ID" placeholder="ID" autocomplete="off" required data-msg="Please enter your ID">
              </div>
              <!-- 비밀번호 -->
              <div class="mb-4">
                <div class="row">
                  <div class="col">
                    <label class="form-label" for="loginPassword"> Password</label>
                  </div>
                  <div class="col-auto"><a class="form-text small text-primary" href="#" data-bs-toggle="modal" data-bs-target="#FindPwd">Forgot password?</a></div>
                </div>
                <input class="form-control" name="pwd" id="pwd" placeholder="Password" type="password" required data-msg="Please enter your password">
              </div>
              
              <!-- Submit-->
              <div class="d-grid">
                <button class="lbtn btn btn-lg btn-primary">Sign in</button>
              </div>
              <hr class="my-3 hr-text letter-spacing-2" data-content="OR">
              <div class="d-grid gap-2">
              <a id="custom-login-btn" href="javascript:loginWithKakao()">
			  <img src="./resources/bootstrap-5/html/img/kakao_login.png"
			    width="300"
			    alt="카카오 로그인 버튼" />
			  </a>
              </div>
              <hr class="my-4">
              <p class="text-center"><small class="text-muted text-center">Don't have an account yet? <a href="signup.do">Sign Up</a></small></p>
            </form><a class="close-absolute me-md-5 me-xl-6 pt-5" href="./home.do"> 
              <svg class="svg-icon w-3rem h-3rem">
                <use xlink:href="#close-1"> </use>
              </svg></a>
          </div>
        </div>
        
        <!-- 아이디 찾기 모달 -->
	    <div class="modal fade" id="FindID" role="dialog">
		  <div class="modal-dialog modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" style="font-family: 'Recipekorea';">아이디 찾기</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <form>  
		          <div class="form-group">
		            <label for="name" class="col-form-label"><b>이름</b></label>
		            <input type="text" class="form-control" id="name">
		          </div>
		          <div class="form-group">
		            <label for="birth" class="col-form-label"><b>생년월일(YYYYMMDD)</b></label>
		            <input type="text" class="form-control" id="birth" placeholder="ex) 19961116">
		          </div>
		          <div class="form-group">
		            <label for="email" class="col-form-label"><b>이메일</b></label>
		            <input type="text" class="form-control" id="email"  placeholder="name@address.com">
		          </div>
		        </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-dark" data-bs-dismiss="modal">취소</button>
		        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#FindID2">확인</button>
		      </div>
		    </div>
		  </div>
		</div>
		
		<!-- 아이디 알려주는 모달 -->
	    <div class="modal fade" id="FindID2" role="dialog">
		  <div class="modal-dialog modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" style="font-family: 'Recipekorea';">아이디 찾기</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <form>  
		          <div class="form-group">
		            <p>회원님의 아이디는 <b>soye**</b> 입니다.</p>
		          </div>
		        </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">확인</button>
		      </div>
		    </div>
		  </div>
		</div>
        
        <!-- 비밀번호 찾기 모달 -->
	    <div class="modal fade" id="FindPwd" role="dialog">
		  <div class="modal-dialog modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" style="font-family: 'Recipekorea';">비밀번호 찾기</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <form>  
		          <div class="form-group">
		            <label for="name" class="col-form-label"><b>이름</b></label>
		            <input type="text" class="form-control" id="name">
		          </div>
		          <div class="form-group">
		            <label for="id" class="col-form-label"><b>아이디</b></label>
		            <input type="text" class="form-control" id="id">
		          </div>
		          <div class="form-group">
		            <label for="email" class="col-form-label"><b>이메일</b></label>
		            <input type="text" class="form-control" id="email">
		          </div>
		          <!--  
		          <div class="form-group">
		            <label for="birth" class="col-form-label"><b>생년월일(YYYYMMDD)</b></label>
		            <input type="text" class="form-control" id="birth" placeholder="ex) 19961116">
		          </div>
		          -->
		          <div class="form-group">
		            <label for="hint" class="col-form-label"><b>비밀번호확인질문 :</b><br> " 자신의 보물 1호는? "</label>
		            <input type="text" class="form-control" id="answer">
		          </div>
		        </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-dark" data-bs-dismiss="modal">취소</button>
		        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#NewPwd">확인</button>
		      </div>
		    </div>
		  </div>
		</div>
		
		<!-- 비밀번호 재설정 모달 -->
	    <div class="modal fade" id="NewPwd" role="dialog">
		  <div class="modal-dialog modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" style="font-family: 'Recipekorea';">비밀번호 재설정</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <form>  
		          <div class="form-group">
		            <label for="newpwd" class="col-form-label"><b>새로운 비밀번호</b></label>
		            <input type="text" class="form-control" id="pwd">
		          </div>
		          <div class="form-group">
		            <label for="newpwd" class="col-form-label"><b>비밀번호 확인</b></label>
		            <input type="text" class="form-control" id="pwd" placeholder="비밀번호를 한번 더 입력하세요.">
		          </div>
		          <!--  
		          <div class="form-group">
		            <label for="birth" class="col-form-label"><b>생년월일(YYYYMMDD)</b></label>
		            <input type="text" class="form-control" id="birth" placeholder="ex) 19961116">
		          </div>
		          -->
		        </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-dark" data-bs-dismiss="modal">취소</button>
		        <button type="button" class="btn btn-primary">확인</button>
		      </div>
		    </div>
		  </div>
		</div>
        
        <div class="col-md-4 col-lg-6 col-xl-7 d-none d-md-block">
          <!-- Image-->
          <div class="bg-cover h-100 me-n3" style="background-image: url(./resources/bootstrap-5/html/img/photo/캠핑.jpg);"></div>
        </div>
      </div>
    </div>
    <!-- JavaScript files-->
    <script>
      // ------------------------------------------------------- //
      //   Inject SVG Sprite - 
      //   see more here 
      //   https://css-tricks.com/ajaxing-svg-sprite/
      // ------------------------------------------------------ //
      function injectSvgSprite(path) {
      
          var ajax = new XMLHttpRequest();
          ajax.open("GET", path, true);
          ajax.send();
          ajax.onload = function(e) {
          var div = document.createElement("div");
          div.className = 'd-none';
          div.innerHTML = ajax.responseText;
          document.body.insertBefore(div, document.body.childNodes[0]);
          }
      }    
      // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
      // use your own URL in production, please :)
      // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
      //- injectSvgSprite('${path}icons/orion-svg-sprite.svg'); 
      injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg'); 

    </script>
    
    <script type="text/javascript">
    
	    window.onload = function() {
	  		document.getElementById( 'idbtn' ).onclick = function() {
	  			// 데이터 전송 			
	  			alert('test');
	  		};
	  	};
	
	      $('#idbtn').click(function () {		
	  	    if ($('#idname').val() != '' && $('#idbirth').val() != '' && $('#idemail').val() != '') {	        
	  	        $.ajax({ 	   					
	  	            type: 'GET',
	  	            url: './idsearch.do',
	  	            data: 'idname=' + $('#idname').val(),
	  	            	'idbirth='+$('#idbirth').val(),
	  	            	'idemail='+$('#idemail').val(),
	  	            dataType: 'json',
	  	            success: function(result) {
	  	               const data = result.split('/');
	  	               let html= '';
	  	               for(var i in data){
	  	            	   html+='<p>회원님의 아이디는 <b>'+ data[i] +'</b>입니다.</p>' 
	  	               }
	  	               $('#idresult').html(html);
	  	               
	  	            },
	  	            error: function(a, b, c) {
	  	                console.log(a, b, c);
	  	            }				
	  	        });
	  	   				
	  	    } else {
	  	        alert('빈칸을 모두 입력해주세요.');
	  	        $('#idname').focus();
	  	    } 	   			
	  	});
      
    	//카카오 초기화
    	Kakao.init('2dde53cc9d654a3a8d8b78783aa5cbfc');
    	console.log( Kakao.isInitialized() ); //초기화 판단 여부. console 에 true 나오면 됨.
    	
    	//데모버전으로 들어가서 카카오로그인 코드확인
		function loginWithKakao() {
			Kakao.Auth.login({
		      success: function(authObj) {
		    	  console.log( authObj ); //access 토큰값 출력
		    	  Kakao.Auth.setAccessToken(authObj.access_token ); //access 토큰값 저장
		    	  
		    	  getInfo();
		      },
		      fail: function(err) {
		        console.log(err);
		      },
		    })
		}
    	
    	//access 토큰을 발급받고, 아래 함수 호출시켜 사용자 정보를 받아오기
    	function getInfo(){
    		Kakao.API.request({
    			url: '/v2/user/me',
    			success: function(res){
    				console.log(res);
    				var nickname = res.kakao_account.profile.nickname;
    				var email = res.kakao_account.email;
    				var gender = res.kakao_account.gender;
    				var age = res.kakao_account.age_range;
    				
    				console.log( email, nickname, gender, age );
    			},
    			fail: function(error){
    				alert('카카오 로그인에 실패했습니다. 관리자에게 문의하세요.' + JSON.stringify(error) );
    			}
    		});
    	}
    	
    	
    	//로그아웃 기능 - 카카오 서버에 접속하는 엑세스 토큰 만료. 사용자 어플리케이션의 로그아웃은 따로 해야 함.
    	function kakaoLogout(){
    		if( !Kakao.Auth.getAccessToken() ){
    			alert( 'Not logged in' );
    			return;
    		}
    		Kakao.Auth.logout(function(){
    			alert( 'logout ok\naccess token -> ' + Kakao.Auth.getAccessToken() );
    		});
    	}
	</script>
    <!-- jQuery-->
    <script src="./resources/bootstrap-5/html/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="./resources/bootstrap-5/html/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="./resources/bootstrap-5/html/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="./resources/bootstrap-5/html/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="./resources/bootstrap-5/html/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="./resources/bootstrap-5/html/vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>var basePath = ''</script>
    <!-- Main Theme JS file    -->
    <script src="./resources/bootstrap-5/html/js/theme.js"></script>
  </body>
</html>