<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../include/head.jsp"></jsp:include>
<style>
    @font-face {
        font-family: 'LotteMartDream';
        font-style: normal;
        font-weight: 200;
        src: url('http://cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartDream/LotteMartDreamMedium.woff2') format('woff2'), url('http://cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartDream/LotteMartDreamMedium.woff') format('woff');
    }
    .main-wrap .introduce-wrap{width:1100px;min-height:700px;background-color:#fff;display:inline-block;}
    .main-wrap .introduce-wrap .introduce-button-wrap{width:100%;height:100px;text-align:center;}
    .main-wrap .introduce-wrap .introduce-button-wrap .introduce-button{width:548px;font-size:20px;padding:20px 0;color:#4c4c4c;float:left;border:1px solid #e6e6e6;}
    .main-wrap .introduce-wrap .introduce-button-wrap .introduce-button.on{background-color:red;border:1px solid red;color:#fff;font-weight:bold;}
    .main-wrap .introduce-wrap .introduce-button-wrap .introduce-button:hover{cursor:pointer;font-weight:bold;}
    .main-wrap .introduce-wrap .company-introduce-wrap{width:100%;min-height:500px;text-align:center;color:black;display:flex;align-items: center;justify-content: center;flex-direction: column;}
    .main-wrap .introduce-wrap .follow-wrap{width:100%;min-height:500px;text-align:center;color:black;display:none;align-items: center;justify-content: center;flex-direction: column;}
    .main-wrap .introduce-wrap .follow-wrap .title{font-size:40px;}
    .main-wrap .introduce-wrap .follow-wrap .desc{font-size:20px;font-weight:300;line-height:40px;padding-top:10px;}
    .main-wrap .introduce-wrap .follow-wrap .map-info{width:725px;text-align:right;padding:7px 10px;background-color:rgba(0,0,0,0.7);font-size:13px;color:#fff;position:relative;top:-27px;}
    .main-wrap .introduce-wrap .company-introduce-wrap span{font-size:50px;}
    .main-wrap .introduce-wrap .company-introduce-wrap .startBtn{width:250px;height:55px;border-radius:25px;background-color:inherit;border:2px solid black;color:black;position:relative;top:20px;font-size:17px;margin-top:150px;font-family:LotteMartDream;}
    .main-wrap .introduce-wrap .company-introduce-wrap .startBtn:hover{background-color:black;color:#fff;cursor:pointer;}
    .main-wrap .introduce-wrap .company-introduce-wrap .img{width:100%;height:600px;opacity:0;top:50px;position:relative;}
    .main-wrap .introduce-wrap .company-introduce-wrap .img img{width:50%;height:100%;}
</style>
<script>
	$(document).ready(function(){
	    $(window).on("scroll",function(){
	    var sct = $(window).scrollTop();
	        if(sct >= 600){
	        $("#wrap2-text01").animate({"opacity":"1","top":"10px"},500,function(){
	            $("#wrap2-text02").animate({"opacity":"1","top":"50px"},500,function(){
	                $("#wrap2-text03").animate({"opacity":"1","margin-top":"180px"},500,function(){
	                    $("#wrap2-text04").animate({"opacity":"1","height":"302px"},800,function(){
	                        $('.main-wrap .introduce-wrap .company-introduce-wrap .img').animate({"opacity":"1","top":"0px"},500);
	                        });
	                    });
	                });
	            });
	        }
	    });
	    
	    $('.introduce-button').on('click',function(){
            $('.introduce-button').removeClass("on");
            $(this).addClass("on");
            var el = $(this).attr("id");
            $('.introduce').css('display','none');
            $('.'+el).css('display','flex');
            if(el == 'follow-wrap'){
            $("#wrap2-text01").css({"opacity":"0","top":"150px"});
            $("#wrap2-text02").css({"opacity":"0","top":"150px"});
            $("#wrap2-text03").css({"opacity":"0","margin-top":"250px"});
            $("#wrap2-text04").css({"opacity":"0","height":"0px"});
            $('.main-wrap .introduce-wrap .company-introduce-wrap .img').css({"opacity":"0","top":"50px"});
            }else if(el =='company-introduce-wrap'){
            var sct = $(window).scrollTop();
                if(sct >= 600){
                $("#wrap2-text01").animate({"opacity":"1","top":"10px"},500,function(){
                    $("#wrap2-text02").animate({"opacity":"1","top":"50px"},500,function(){
                        $("#wrap2-text03").animate({"opacity":"1","margin-top":"180px"},500,function(){
                            $("#wrap2-text04").animate({"opacity":"1","height":"302px"},800,function(){
                                $('.main-wrap .introduce-wrap .company-introduce-wrap .img').animate({"opacity":"1","top":"0px"},500);
                                });
                            });
                        });
                    });
                }
            }
        });
	});
</script>
</head>
<body>
    <div class="wrap">
    <jsp:include page="../include/header.jsp"></jsp:include>
    	<div class="main-visual" style="background-image:url(/static/images/introduce_bg.jpg);">
            <div class="main-visual-txt" style="opacity:1;">
                <span style="font-size:50px;color:#fff;font-weight:bold;position:relative;top:-150px;">Introduce</span>
            </div>
        </div>
        <div class="main-wrap" style="position:relative;top:-65px;background-color:inherit;">
           <div class="introduce-wrap">
                <div class="introduce-button-wrap">
                    <div class="introduce-button on" id="company-introduce-wrap">회사소개</div>
                    <div class="introduce-button" id="follow-wrap">오시는 길</div>
                </div>
                <div class="introduce company-introduce-wrap">
                    <span id="wrap2-text01" style="font-size:55px;opacity:0;position:relative;top:150px;font-family:LotteMartDream;"><span style="color:red">HELIO CITY</span> 전문 부동산</span><br/><br/>
                    <span id="wrap2-text02" style="font-size:25px;opacity:0;position:relative;top:150px;font-family:LotteMartDream;">
                        강남 위에서 9,510세대 대도시를 만나다<br/>
                        아이파크, 힐스테이트, 래미안이 만드는 송파 헬리오시티!<br/>
                        서울의 프리미엄을 바꿉니다.<br/></span>

                    <input id="wrap2-text03" style="opacity: 0;margin-top:250px;" type="button" class="startBtn" value="412-0090"><br/>
                    <div id="wrap2-text04" style="width:1px;height:0px;opacity:0; border-left:1px solid black;display:inline-block;"></div>    
                    <div class="img">
                      <img src="/static/images/introduce_1.jpg"/><img src="/static/images/introduce_2.jpg"/>
                    </div>
                </div>
                <div class="introduce follow-wrap">
                   <span class="title">가락명품공인중개사에 오신 것을 환영합니다.</span><br/>
                   <span class="desc">저희 가락명품공인은 송파구 송파대로 345, 001A동 1015호에 위치해 있으며<br/>
                        송파헬리오시티 전문 부동산으로써<br/>
                        조합원입주권, 분양권을 전문으로 중개하는 공인중개사사무소입니다.<br/><br/>
                        고객님의 소중한 재산을 중개함에 있어 신속하고 정확한 판단으로<br/>
                        고객님의 이익에 부합하도록  최선의 노력을 다하고 있습니다.<br/>
                        계약이 이루어 진 후에도 사후 서비스에 불편함이 없도록 최선을 다 할 것입니다.<br/><br/>
                        늘 고객님께 친절하고 성실한  가락명품공인중개사로 기억되고 싶습니다.<br/>
                        감사합니다.<br/><br/>
                    </span>
                    <img src="/static/images/info_map.PNG"/>
                    <div class="map-info">주소 : 서울시 송파구 송파대로 345, 001A동 1015호 Tel.02-412-0090</div>
                </div>
           </div>
        </div>
    <jsp:include page="../include/footer.jsp"></jsp:include>
    </div>
</body>
</html>