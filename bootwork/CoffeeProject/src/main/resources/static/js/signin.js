//login form action Event
const id = document.querySelector('.id')
const password = document.querySelector('.password')
const text = document.querySelector('.alert-text')

//위 조건들을 만족했을 때 실행시킬 코드
document.querySelector('.submit').addEventListener('click',function(e){
    //id, password 공백일 경우 alert창 띄우기
    if(id.value==''){
        alert('아이디를 입력하세요')
        e.preventDefault()
    }

    if(password.value==''){
        alert('비밀번호를 입력하세요')
        e.preventDefault()
    }

    if(password.value.length<6){
        e.preventDefault()
        alert('6자 이상의 비밀번호를 입력하세요')
    }
})

password.addEventListener('input',function(){
    if(password.value.length<6){
        text.innerHTML = '6자 미만입니다.'
    }else{
        text.innerHTML=''
    }
})
