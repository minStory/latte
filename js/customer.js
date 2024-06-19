// 페이지 로드 시 실행되는 코드
document.addEventListener("DOMContentLoaded", () => {
    const customer_tableBtn = Array.from(document.getElementsByClassName("customer_tab")[0].children);
    
    const customer_box = document.getElementsByClassName("customer_box")[0];
    const customer_notice_box = document.getElementsByClassName("customer_notice_box")[0];
    const customer_inquiry_box = document.getElementsByClassName("customer_inquiry_box")[0];

    // 초기 상태 설정
    // url에 notice를 가지고 있으면 공지사항으로 이동
    if(window.location.href.includes("notice")){
       customer_box.style.display = "none";
       customer_inquiry_box.style.display = "none";
       customer_tableBtn[1].classList.add("bar");
   // url에 inquiry를 가지고 있으면 공지사항으로 이동
    }else if(window.location.href.includes("inquiry")){
       customer_box.style.display = "none";
       customer_notice_box.style.display = "none";
       customer_tableBtn[2].classList.add("bar");
   // url에 쿼리파라미터가 없으면 FAQ로 이동
    }else{
       customer_notice_box.style.display = "none";
       customer_inquiry_box.style.display = "none";
       customer_tableBtn[0].classList.add("bar");
    }
    
    // 탭 버튼 클릭 시 이동 설정
    customer_tableBtn.forEach((btn, idx) => {
        btn.addEventListener("click", () => {
           customer_tableBtn.forEach((li) => {
              li.classList.remove("bar");
           })
            if (idx === 0) {
                customer_box.style.display = "block";
                customer_notice_box.style.display = "none";
                customer_inquiry_box.style.display = "none";
                btn.classList.add("bar");
                window.history.replaceState({}, document.title, window.location.pathname);
            } else if (idx === 1) {
                customer_notice_box.style.display = "block";
                customer_inquiry_box.style.display = "none";
                customer_box.style.display = "none";
                btn.classList.add("bar");
                window.history.replaceState({}, document.title, '?notice');
            } else if (idx === 2) {
                customer_inquiry_box.style.display = "block";
                customer_box.style.display = "none";
                customer_notice_box.style.display = "none";
                btn.classList.add("bar");
                window.history.replaceState({}, document.title, '?inquiry');
            }
        });
    });
    
    // FAQ 목록 클릭 시 내용 펼쳐보기
    const faq_btn = Array.from(document.getElementsByClassName("faq_btn"));
    const faq_content = Array.from(document.getElementsByClassName("faq_content"));
    
    // 초기 설정
    faq_content.forEach((li) => {
       li.style.display = "none";
    });
    
    // 클릭 시 열고 닫힘
    faq_btn.forEach((btn_li, btn_idx) => {
       btn_li.addEventListener("click", () => {
          faq_content.forEach((content_li, content_idx) => {
             if(btn_idx === content_idx){
                if(content_li.style.display === "none"){
                   content_li.style.display = "block";
                }else{
                   content_li.style.display = "none";
                }
             }else{
                content_li.style.display = "none";
             }
          });
       });
    });
});
// ------ DOMContentLoaded end ------



// 필수 입력란
function validateForm() {
   const typeEtc = document.getElementsByName("type_etc")[0].value;
    const type = document.getElementsByName("type")[0].value;
    const title = document.getElementsByName("title")[0].value;
    const content = document.getElementsByName("content")[0].value;


   
    if (typeEtc === "분류 선택" || type === "문의 종류" || title === "" || content === "") {
        alert("필수 입력 사항을 입력해주세요.");
        return false; // form 제출을 취소합니다.
    }

// 개인정보 동의 체크 여부를 확인합니다.
const agreement = document.querySelector('input[name="rdo_agreement"][id="rdo_agree"]:checked');

if (agreement) {
    return true; // form 제출
} else {
    alert("개인정보 수집에 대한 동의를 체크해주세요.");
    return false; // form 제출 취소합니다.
}
    return true; // form 제출을 허용합니다.
}

// 글자수 체크
document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("titletextarea").addEventListener("keyup", function (event) {
        inputLimitLengthChecked(event.target,"50");
    });
    document.getElementById("contentTextarea").addEventListener("keyup", function (event) {
        inputLimitLengthChecked(event.target,"2000");
    });
});
//설정된 문자길이를 넘어서지 못하게 체크하는 함수
function inputLimitLengthChecked(obj) {

    if (obj.value.length > obj.dataset.length) {
        alert("작성할 수 있는 텍스트의 글자수가 입력 범위를 초과하였습니다.");
        obj.value = obj.value.substr(0, obj.dataset.length);
    }
    // 해당 textarea의 카운터 업데이트
    var counterElement = obj.parentElement.querySelector(".counterSpan");
    if (counterElement) {
        counterElement.innerText = obj.value.length;
    }
}