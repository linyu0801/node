<?php require __DIR__ . '/parts/db_connect.php';
$pagename = 'register';
?>
<?php require __DIR__ . '/parts/header.php'; ?>
<?php require __DIR__ . '/parts/navbar.php'; ?>
<style>
    form small.error-msg {
        color: red;
    }

    body {
        background-color: #dcdcdc;
    }

    .card {
        background-color: #dcdcdc;
        border: none;
    }

    .btn {
        color: white;
        background-color: black;
        width: 50%;
    }

    .card-body button {
        margin: 0 auto;
    }
</style>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-6">
            <div class="card">
                <div class="card-body">
                    <h1 class="card-title">註冊</h1><br>
                    <h5>register</h5><br>
                    <div class="alert alert-danger" role="alert" id="info" style="display: none">

                    </div>
                    <form name="reg1" novalidate onsubmit="checkForm(); return false;">
                        <div class="form-group">
                            <label for="username">請輸入使用者名稱</label>
                            <input type="text" class="form-control" value="" id="username" name="username">
                            <small class="form-text error-msg" style="display: none"></small>
                        </div>
                        <div class="form-group">
                            <label for="account">請輸入帳號</label>
                            <input type="text" class="form-control" value="" id="account" name="account">
                            <small class="form-text error-msg" style="display: none"></small>
                        </div>
                        <div class="form-group">
                            <label for="password">請輸入密碼</label>
                            <input type="password" class="form-control" value="" id="password" name="password">
                        </div>
                        <div class="form-group">
                            <label for="password2">再次輸入密碼</label>
                            <input type="password" class="form-control" value="" id="password2" name="password2">
                            <small class="form-text error-msg" style="display: none"></small>
                        </div>
                        <div class="form-group">
                            <label for="email">輸入email</label>
                            <input type="email" class="form-control" value="" id="email" name="email">
                            <small class="form-text error-msg" style="display: none"></small>
                        </div><br>
                        <div class="d-flex justify-content-center">
                            <button type="submit" class="btn " style="width:100%">提交</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
<?php require __DIR__ . '/parts/script.php'; ?>
<script>
    function checkForm() {
        const user = document.querySelector('#username')
        const fd = new FormData(document.reg1)
        let acc = document.querySelector('#account')
        let e = document.querySelector('#email')
        const email_re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;

        const p1 = document.querySelector('#password')
        const p2 = document.querySelector('#password2')
        const info = document.querySelector('#info')
        info.style.display = 'none'
        info.innerHTML = ""
        acc.style.borderColor = '#CCCCCC';
        acc.nextElementSibling.style.display = 'none';
        e.style.borderColor = '#CCCCCC';
        e.nextElementSibling.style.display = 'none';
        p2.style.borderColor = '#CCCCCC';
        p2.nextElementSibling.style.display = 'none';

        if (!email_re.test(email.value)) {

            e.style.borderColor = 'red';
            let small = e.closest('.form-group').querySelector('small');
            small.innerText = "請輸入正確的 email";
            small.style.display = 'block';
        }

        fetch('register.api.php', {
                method: 'POST',
                body: fd
            })
            .then(r => r.json())
            .then(obj => {
                console.log(obj)
                let errormsg = obj.error
                if (obj.code == 1) {
                    if (obj.error == '帳號重複') {

                        acc.style.borderColor = 'red';
                        let small = acc.closest('.form-group').querySelector('small');
                        small.innerText = `${obj.error}`;
                        small.style.display = 'block';
                    }
                    if (p1.value != p2.value) {
                        p2.style.borderColor = 'red';
                        let small = p2.closest('.form-group').querySelector('small');
                        small.innerText = `密碼輸入錯誤`;
                        small.style.display = 'block';
                    }
                    if (obj.error == '電子郵件重複') {
                        e.style.borderColor = 'red';
                        let small = e.closest('.form-group').querySelector('small');
                        small.innerText = `${obj.error}`;
                        small.style.display = 'block';
                    }
                    info.classList.remove('alert-success');
                    info.classList.add('alert-danger');
                    info.innerHTML = `${errormsg}`
                    info.style.display = 'block'
                }
                if (obj.code != 1) {
                    info.classList.remove('alert-danger');
                    info.classList.add('alert-success');
                    info.innerHTML = "註冊成功"
                    info.style.display = 'block'
                }
            })
    }
    //
</script>
<?php require __DIR__ . '/parts/footer.php'; ?>