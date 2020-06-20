
const dom_signUp = document.getElementsByClassName("nsignup_signup_submit")[0];

dom_signUp.addEventListener("click", function() {
    console.log("클릭");
    const info = signUp();


});

const dom_gender = document.querySelector(".select_gender label");

dom_gender.addEventListener("click", function() {
    console.log(this.previousSibling.previousSibling.getAttribute("name") + "클릭");

    const clickThis = this.getAttribute("for");

    const dom_gender = document.querySelectorAll(".select_gender input");
    dom_gender.getAttribute('id');
    for(let obj in dom_gender) {
        if(obj.getAttribute("id") == clickThis) {
            obj.setAttribute("selected", "selected");
        } else {
            obj.removeAttribute("selected");
        }
    }
});

const signUp = function() {

    const account = document.getElementById("id");
    const name = document.getElementById("name");
    const password = document.getElementById("password");
    const gender = document.querySelector(".select_gender input[selected='selected']");
    const birthday = document.createElement("input");
    birthday.setAttribute("name", "birthday");
    const email = document.createElement("input");
    email.setAttribute("name", "email");

    // info
    const value_account = account.value;
    const value_name = name.value;
    const value_password = password.value;
    const value_gender = gender.value;

    const birthday_year = document.getElementById("birthday_year");
    const birthday_month = document.getElementById("birthday_month");
    const birthday_day = document.getElementById("birthday_day");
    const value_birthday = value_birthday_year.options[birthday_year.selectedIndex].value
                            + value_birthday_month.options[birthday_month.selectedIndex].value
                            + value_birthday_day.options[birthday_day.selectedIndex].value;

    const value_email = document.getElementById("email_1").value + "@" + document.getElementById("email_2").value;

    const resultObject = {};

    setObjAttribute(resultObject, account, valueAccount);
    setObjAttribute(resultObject, name, valueName);
    setObjAttribute(resultObject, password, valuePassword);
    setObjAttribute(resultObject, gender, value_gender);
    setObjAttribute(resultObject, birthday_day, value_birthday);
    setObjAttribute(resultObject, email, value_email);

    console.log("잘됨 : " + value_gender);

    return resultObject;
}

const setObjAttribute = function(resultObject, obj, value) {

    const hidden = document.createElement("input");

    hidden.setAttribute("type", "hidden");
    hidden.setAttribute("name", obj.getAttribute("name"));

    obj.setAttribute("_value", value);
    resultObject[obj.getAttribute("name")] = obj;
}

const formSubmit = function(objects, charset, method, action) {
    const form = document.createElement("form");

    form.setAttribute("charset", "UTF-8");
    form.setAttribute("method", "Post");  //Post 방식
    form.setAttribute("action", "/user/signup"); //요청 보낼 주소

    for(let obj in objects) {
        form.appendChild(obj);
        console.log(obj.value);
    }

    form.submit();
}
