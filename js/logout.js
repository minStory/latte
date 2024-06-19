// ------ 로그아웃 버튼을 클릭하면 확인창을 표시할 메서드 ------
function confirmLogout() {
    if (confirm("로그아웃하시겠습니까?")) {
        window.location.href = "logout";
    } else {
        return false;
    }
}
// ------ end ------