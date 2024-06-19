document.addEventListener('DOMContentLoaded', () => {
    const timetableBtns = Array.from(document.getElementsByClassName("area_Timetable")[0].children);
    const timetableTable = document.getElementsByClassName("Timetable_table")[0];
    const priceList = document.getElementsByClassName("area_price_list")[0];
    const tabConTy2 = document.getElementsByClassName("tab_con_ty2")[0];
    const tabConTy3 = document.getElementsByClassName("tab_con_ty3")[0];

    // 초기 상태 설정
    priceList.style.display = "none";
    tabConTy2.style.display = "none";
    tabConTy3.style.display = "none";

    // 상영시간표 및 요금안내 버튼 이벤트 설정
    timetableBtns.forEach((btn, idx) => {
        btn.addEventListener("click", () => {
            if (idx === 1) { // 요금안내 버튼 클릭 시
                priceList.style.display = "block";
                timetableTable.style.display = "none";
                tabConTy2.style.display = "block";
                tabConTy3.style.display = "none";
            } else { // 상영시간표 버튼 클릭 시
                timetableTable.style.display = "block";
                priceList.style.display = "none";
            }
        });
    });

    // 요금안내 내 탭 버튼 이벤트 설정
    document.querySelectorAll('.tab_tit').forEach(button => {
        button.addEventListener('click', () => {
            tabConTy2.style.display = "none";
            tabConTy3.style.display = "none";

            document.querySelector(button.dataset.target).style.display = 'block';
        });
    });
});


document.addEventListener('DOMContentLoaded', function() {
    function setupModal(btnClass, modalClass) {
        const btns = document.querySelectorAll(btnClass);
        const modal = document.querySelector(modalClass);

        btns.forEach(function(btn) {
            btn.addEventListener('click', function() {
                modal.style.display = 'block';
            });
        });

        modal.addEventListener('click', function(e) {
            if (e.target === modal) {
                modal.style.display = 'none';
            }
        });
    }

    setupModal('.area_modal_btn1', '.area_header_modal1');
    setupModal('.area_modal_btn2', '.area_header_modal2');
    setupModal('.area_modal_btn3', '.area_header_modal3');
});