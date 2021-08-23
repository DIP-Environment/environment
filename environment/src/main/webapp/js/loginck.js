function Validation()
        {
            var idtext = document.getElementById("text-0ad8");
            //아이디의 id값
            var natext = document.getElementById("name-ebf3");
			var patext = document.getElementById("text-485b");
            //비밀번호의 id값
			var patextck = document.getElementById("text-8310");
            var mtext = document.getElementById("email-ebf3");

            var id = idtext.value;
			var name = natext.value;
            var password = patext.value;
			var confirmPassword = patextck.value;
            var email = mtext.value;

            var regExp1 = /^[a-zA-Z0-9]{4,12}$/;
            //id와 비밀번호의 유효성 검사
			var regExp2 = /^[a-zA-Zㄱ-힣0-9]*$/;
			//이름의 유효성 검사
            var regExp3 = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
            //e-mail의 유효성 검사

            if(!regExp1.test(id))
             //아이디 유효성 검사 후 4~12자의 영문 대소문자와 숫자의 유효성이 안 맞다면
             //공백을 주고 알람을 띄운다.
             //밑에 동일한 유효성 검사
            {
                alert("아이디는 영문대소문자와 숫자로만 입력해주세요");
                idtext.value = "";
                idtext.focus();
                return false;
            }

			if (!regExp2.test(name))
            {
                alert("이름은 영문대소문자와 한글,숫자로만 입력해주세요");
                patext.value = "";
                patext.focus();
                return false;
            }

            if (!regExp1.test(password))
            {
                alert("비밀번호는 영문대소문자와 숫자로만 입력해주세요");
                patext.value = "";
                patext.focus();
                return false;
            } 

            if ((password.slice(0, password.length) == id.slice(0, id.length))) 
            {
                alert("비밀번호가 ID와 동일하면 안됩니다.");
                patext.value = "";
                patext.focus();
                cpatext.value = "";
                cpatext.focus();
                return false;
            }

			if ((password.slice(0, password.length) != confirmPassword.slice(0, confirmPassword.length))) 
            {
                alert("비밀번호와 확인이 일치하지 않습니다.");
                patext.value = "";
                patext.focus();
                patextck.value = "";
                patextck.focus();
                return false;
            }

            if (!regExp2.test(email))
            {
                alert("올바른 이메일 형식이 아닙니다.");
                mtext.value = "";
                mtext.focus();
                return false;
            }
		}