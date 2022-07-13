var element=document.getElementById("login-form-create");
element.addEventListener("click", function() {
    document.location.href='create-acc/create-acc.html';
});
var username=document.getElementById(username-field);
if(username==null){
    console.log("Please enter the username");
}
function validation(){
    var id=document.f1.user.value;
    var ps=document.password.value;
    if(id.length=="" && ps.length==""){
        alert("Username and Password fields are empty");
         return false;
    }else{
        if(id.length==""){
            alert("Username is empty");
            return false;
        }
        if(ps.length==""){
           alert("Password field is empty");
           return false;
        }

    }
}