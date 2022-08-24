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
	<!-- Sweet Alert -->
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>	  
  </head>
  <body>
    <div class="container-fluid px-3">
      <div class="row min-vh-100">
        <div class="col-md-8 col-lg-6 col-xl-5 d-flex align-items-center">
          <div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
            <div class="mb-4"><img class="img-fluid mb-4" src="./resources/bootstrap-5/html/img/logo2.svg" alt="..." style="max-width: 4rem;">
              <h2>CREATE ACCOUNT</h2>
            </div>
            
            <!-- 회원가입 시작 -->
            <form class="form-validate" action="signup_ok.do" method="post" name="signup">
              <!-- 이름 -->
              <div class="mb-3">
                <label class="form-label" for="name"> *NAME</label>
                <input class="form-control" name="name" id="name" type="Name" placeholder="이름은 2글자 이상, 한글만 입력해주세요." autocomplete="off" required data-msg="Please enter your Name">
              </div>
              
              <!-- 아이디 -->
              <div class="mb-4">
                <label class="form-label" for="id"> *ID</label>
                <div style="line-height:15%;">
                <input name="id" id="id" type="ID" class="form-control" placeholder="ID는 영어, 숫자를 포함해 4자 이상 입력해 주세요." autocomplete="off" required data-msg="Please enter your ID" onkeydown="inputIdChk()">
                <br>
                <button type="button" id="btnCheck" class="btn btn btn-dark btn-sm" style="float: right; height: 30px; display: flex; align-items:center;">아이디 중복확인</button>
                </div>
                <span id="result" style="color:red"></span>
                <input type="hidden" id="idcheck" value="idUncheck"/>
              </div>
              
              <!-- 비밀번호 -->
           	  <div class="mb-3">
                <label class="form-label" for="password"> *Password</label>
                <input class="form-control" name="pwd" id="pwd" placeholder="Password" type="password" required data-msg="Please enter your password">
              </div>
              
              <!-- 생년월일 -->
              <div class="mb-3">
                <label class="form-label" for="birth"> *Date of Birth(YYYYMMDD)</label>
                <input class="form-control" name="birth" id="birth" placeholder="ex) 19961116" type="birth" required data-msg="Please enter your password">
              </div>
              
              <!-- 이메일 -->
              <div class="mb-3">
                <label class="form-label" for="email"> *Email Address</label>
                <input class="form-control" name="email" id="email" type="email" placeholder="name@address.com" autocomplete="off" required data-msg="Please enter your email">
              </div>
              
              <!-- 비밀번호 확인 질문 -->
              <div class="mb-3">
                <label class="form-label" for="pwdhint"> *비밀번호 확인 질문</label>
                <div class="mb-3">
                <select class="form-select" name="hint">
                  <option value="1">자신의 보물 1호는?</option>
                  <option value="2">내가 어릴적 살던 동네이름은?</option>
                  <option value="3">내가 제일 좋아하는 과자이름은?</option>
                  <option value="4">가장 기억에 남는 선생님 성함은?</option>
   				</select>
              	</div>
              </div>
              
              <!-- 비밀번호 확인 답변 -->
              <div class="mb-3">
              	<label class="form-label" for="pwdanswer"> *비밀번호 확인 답변</label>
                <input class="form-control" name="answer" id="answer" type="email" autocomplete="off" required data-msg="Please enter your answer">
              </div>
              
              <!-- 성별 -->
              <div class="mb-3">
                <label class="form-label" for="gender"> *Gender</label>
                <div class="form-check">
                  <input class="form-check-input" name="gen" value="남" type="radio">
                  <label class="form-check-label text-muted"><span class="text-sm">남</span></label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" name="gen" value="여" type="radio">
                  <label class="form-check-label text-muted"><span class="text-sm">여</span></label>
                </div>
              </div>
              
              <!-- 약관동의 -->
              <div class="mb-4">
                <label class="form-label" for="loginUsername"> *이용약관 동의</label>
	                  <div class="container mb-2">
						  <form>
						    <div class="form-group">
						      <textarea class="form-control" rows="7" id="" style="background-color: white" readonly>제1조. 목적&#13;&#10; 본 약관은 I Camp Do It(이하 "아이캠두잇")이 제공하는 모든 서비스의 이용조건 및 절차, 이용자와 아이캠두잇의 권리, 의무, 책임사항과 기타 필요한 사항을 규정합니다.&#13;&#10;&#13;&#10;제2조. 개인정보 수집목적 및 이용목적&#13;&#10;[회원 관리]&#13;&#10;1. 회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 연령확인, 불만처리 등 민원처리, 고지사항 전달&#13;&#10;2. 수집하는 개인정보 항목 : 이름, 생년월일, 성별, 로그인ID, 비밀번호, 이메일, 14세미만 가입자의 경우 법정대리인의 정보&#13;&#10;3. 개인정보의 보유기간 및 이용기간&#13;&#10;원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.&#13;&#10;o 소비자 불만 또는 분쟁처리에 관한 기록&#13;&#10;-보존이유 : 소비자보호에관한법률&#13;&#10;-보존기간 : 3년&#13;&#10;o 로그 기록&#13;&#10;-보존이유: 통신비밀보호법&#13;&#10;-보존기간 : 3개월&#13;&#10;※ 동의를 거부할 수 있으나 거부시 회원 가입이 불가능합니다.</textarea>
						    </div>
						  </form>
	                  </div>    			  
      			<div class="form-check">
                  <input class="form-check-input" id="info" type="checkbox" name="info">
                  <label class="form-check-label text-muted"> <span class="text-sm">[필수] 이용약관 및 개인정보수집/이용에 모두 동의합니다.</span></label>
                </div>
              </div>
              
              <!-- 회원가입 버튼 -->            
              <div class="d-grid gap-2">
                <button id="sbtn" class="btn btn-lg btn-primary">Sign up</button>
              </div>
              <hr class="my-3 hr-text letter-spacing-2" data-content="OR">
            </form>
              
              <!-- 카카오 소셜로그인 버튼 -->
              <div class="d-grid gap-2" name="kakao_frm">
                <button type="button" class="btn btn-lg btn-social btn-warning" onClick="location.href='javascript:loginWithKakao()'" style="color:#2e322e"><i class="fa fa-solid fa-comment btn-social-icon fa-2x"></i>LOGIN <span class="d-none d-sm-inline">WITH KAKAKO</span></button>
              </div>
              <div>
              		<form id="kakao_frm" method="post" action="./kakaologin_form.do" name="kakao_frm">
				  	<input type="hidden" name="kakaoemail" id="kakaoemail" />
				  	<input type="hidden" name="kakaonickname" id="kakaonickname" />
				  	<input type="hidden" name="kakaokid" id="kakaokid" />
				  	</form>
              </div>
            
            <a class="close-absolute me-md-5 me-xl-6 pt-5" href="./home.do"> 
              <svg class="svg-icon w-3rem h-3rem">
                <use xlink:href="#close-1"> </use>
              </svg>
            </a>
          </div>
        </div>
        <div class="col-md-4 col-lg-6 col-xl-7 d-none d-md-block">
          <!-- Image-->
          <div class="bg-cover h-100 me-n3" style="background-image: url(./resources/bootstrap-5/html/img/photo/캠핑.jpg);"></div>
        </div>
      </div>
    </div>
    <!-- JavaScript files-->
    <!-- jQuery-->
    <script src="./resources/bootstrap-5/html/vendor/jquery/jquery.min.js"></script>
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
      
  
      window.onload = function() {
    	  const Toast = Swal.mixin({
  		    toast: true,
  		    position: 'center-center',
  		    showConfirmButton: false,
  		    timer: 3000,
  		    timerProgressBar: false,
  		    didOpen: (toast) => {
  		        toast.addEventListener('mouseenter', Swal.stopTimer)
  		        toast.addEventListener('mouseleave', Swal.resumeTimer)
  		    }
  		  })
  		
    		document.getElementById( 'sbtn' ).onclick = function() {
    			// 데이터 전송
				if( document.signup.name.value.trim() == '' ) {
					Toast.fire({
	 				    icon: 'warning',
	 				    title: '이름을 입력해 주세요.'
	 				})
					return false;				
				}else{
					if(isName(document.signup.name.value)){
						$("#name").css('border-color', '#ced4da');
					}else{
						$("#name").css('border-color', 'red');
						Toast.fire({
		 				    icon: 'warning',
		 				    title: '올바른 이름이 아닙니다.'
		 				})
						return false;
					}
				}
				if( document.signup.id.value.trim() == '' ) {
					Toast.fire({
	 				    icon: 'warning',
	 				    title: '아이디를 입력해 주세요.'
	 				})
					return false;				
				}
					
				
				if( document.signup.pwd.value.trim() == '' ) {
					Toast.fire({
	 				    icon: 'warning',
	 				    title: '비밀번호를 입력해 주세요.'
	 				})
					return false;				
				}
				if( document.signup.birth.value.trim() == '' ) {
					Toast.fire({
	 				    icon: 'warning',
	 				    title: '생년월일을 입력해 주세요.'
	 				})
					return false;				
				}else{
					if(isBirthday(document.signup.birth.value)){
						//유효성 맞음
						$("#birth").css('border-color', '#ced4da');
					}else{
						//유효성 안맞음
						$("#birth").css('border-color', 'red');
						Toast.fire({
		 				    icon: 'warning',
		 				    title: '올바른 생년월일이 아닙니다.'
		 				})
						return false;
					}
				}
				if( document.signup.email.value.trim() == '' ) {
					Toast.fire({
	 				    icon: 'warning',
	 				    title: '이메일을 입력해 주세요.'
	 				})
					return false;				
				}else{
					if(isEmail(document.signup.email.value)){
						
						$("#email").css('border-color', '#ced4da');
					}else{
						//유효성 안맞음
						$("#email").css('border-color', 'red');
						Toast.fire({
		 				    icon: 'warning',
		 				    title: '올바른 이메일 형식이 아닙니다.'
		 				})
						return false;
					}
					
				}
				if( document.signup.answer.value.trim() == '' ) {
					Toast.fire({
	 				    icon: 'warning',
	 				    title: '비밀번호 확인 답변을&emsp;&emsp;&emsp;&emsp; 입력해 주세요.'
	 				})
					return false;				
				}
				if( document.signup.gen.value.trim() == '' ) {
					Toast.fire({
	 				    icon: 'warning',
	 				    title: '성별을 체크해 주세요.'
	 				})
					return false;				
				}if( document.signup.idcheck.value != 'idChecked' ) {
					Toast.fire({
	 				    icon: 'warning',
	 				    title: '아이디 중복체크를 해주세요.'
	 				})
					return false;				
				}			
				if( document.signup.info.checked == false ) {
    				Toast.fire({
     				    icon: 'warning',
     				    title: '동의하셔야 합니다.'
     				})
					return false;
				}
    			document.signup.submit();
    			
    		};
    	};
    	
    	
    	function isBirthday(dateStr) {
    		var reg_Birthday = /^[0-9]{8,8}$/;
    		if(reg_Birthday.test(dateStr)){
	    		var year = Number(dateStr.substr(0,4)); 
	    		var month = Number(dateStr.substr(4,2)); 
	    		var day = Number(dateStr.substr(6,2));
	    		var today = new Date(); 
	    		var yearNow = today.getFullYear(); 
	
	    		if (dateStr.length <=8) {
	    		
	    			if (1900 > year || year > yearNow){
	    				return false;
	    			} else if (month < 1 || month > 12) {
	    				return false;
	    			} else if (day < 1 || day > 31) {
	    				return false;
	    			} else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
	    				return false;
	    			} else if (month == 2) {
	
	    				var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
	    				if (day>29 || (day==29 && !isleap)) {
	    					return false;
	    				} else {
	    					return true;
	    				} 
	    			} else {
	    				return true;
	    			}
	    		}
	    		else {
	    			
	    			return false;
	    		}
    		}else{
    			return false;
    		}
    	}
    	
    	function isEmail(emailStr) {                                                 
    	     var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
    	     if(!reg_email.test(emailStr)) {                            
    	          return false;         
    	     }                            
    	     else {                       
    	          return true;         
    	     }                            
    	}                            
    	

    	function isId(id) {            
    		      
    		var reg_Id = /^[a-zA-z0-9]{4,12}$/;       
    		if (!reg_Id.test(id)) {                                 
    			 return false;        
    			}        
    		return true; 
    	}
    	
    	function isName(name) {            
    		      
    		var reg_Name = /^[가-힣]{2,}$/;    
    		if (!reg_Name.test(name)) {                                 
    			 return false;        
    			}        
    		return true; 
    	}
    	
    	
    	$('#btnCheck').click(function () {	
    		const Toast = Swal.mixin({
      		    toast: true,
      		    position: 'center-center',
      		    showConfirmButton: false,
      		    timer: 3000,
      		    timerProgressBar: false,
      		    didOpen: (toast) => {
      		        toast.addEventListener('mouseenter', Swal.stopTimer)
      		        toast.addEventListener('mouseleave', Swal.resumeTimer)
      		    }
      		  })
    		
    	    if ($('#id').val() != '') {
    	    	
    	    	if(isId(document.signup.id.value)){
					//유효성 맞음
    	    		$.ajax({ 	   					
        	            type: 'GET',
        	            url: './idcheck.do',
        	            data: 'id=' + $('#id').val(),
        	            dataType: 'json',
        	            success: function(result) {
        	                if (result == '1') {
        	                    $('#result').text('사용 가능한 아이디입니다.');
        	                    $("#id").css('border-color', 'green');
        	                    $('#idcheck').val('idChecked');

        	                } else {
        	                    $('#result').text('이미 사용중인 아이디입니다.');
        	                    $("#id").css('border-color', 'red');
        	                }
        	            },
        	            error: function(a, b, c) {
        	                console.log(a, b, c);
        	            }				
        	        });
					
				}else{
					$("#id").css('border-color', 'red');
					$('#result').text( '영문(대, 소문자)와 숫자만 사용가능합니다.' );
					return false;
				}
    	        
    	   				
    	    } else {
    	    	Toast.fire({
 				    icon: 'warning',
 				    title: '아이디를 입력해 주세요.'
 				})
    	        $('#id').focus();
    	    }
    	   			
    	});
    	
    	function inputIdChk(){
    		$('#idcheck').val('idUncheck');
    	}
    </script>
    
    <script type="text/javascript">
      
    	//카카오 초기화
    	Kakao.init('2dde53cc9d654a3a8d8b78783aa5cbfc');
    	
    	//데모버전으로 들어가서 카카오로그인 코드확인
		function loginWithKakao() {
			window.Kakao.Auth.login({
		      	success: function(authObj) {	    	  	
		    	  	Kakao.Auth.setAccessToken(authObj.access_token ); //access 토큰값 저장
		    	  	
		    	  	//로그인 성공시, API 호출
		    	    //access 토큰을 발급받고, 아래 함수 호출시켜 사용자 정보를 받아오기
		    	  	Kakao.API.request({
		    			url: '/v2/user/me',
		    			success: function(res){
		    				var nickname = res.kakao_account.profile.nickname;
		    				var email = res.kakao_account.email;
		    				var kid = res.id;
		    				
		    				$( '#kakaonickname' ).val( nickname );
		    				$( '#kakaoemail' ).val( email );
		    				$( '#kakaokid' ).val( kid );		    				
		    				
		    				$('#kakao_frm').submit();
		    			},
		    			fail: function(error){
		    				alert('카카오 로그인에 실패했습니다. 관리자에게 문의하세요.' + JSON.stringify(error) );
		    			}
		    	  	});
		      },
		      fail: function(err) {
		        console.log(err);
		      },
		    });
		}
    	
    </script>
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