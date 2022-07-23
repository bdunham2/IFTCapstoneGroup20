
var mdl = document.getElementById('newsLetter');

function modal(){
    var mdl = document.getElementById('newsLetter');
    mdl.style.display = "block";
}

function closeModal(){
    var mdl = document.getElementById('newsLetter');
   mdl.style.display = "none";

}

function checkModal(){
    var nme = document.getElementById('mdl-name').value;
    var email = document.getElementById('mdl-eml').value;
    var mdl = document.getElementById('newsLetter');

    mdl.style.display = "none";

    if(nme !== null || email !== null){
        alert("Thank you "+nme+ " for your subscription!")
        document.cookie = "userName="+nme;
        document.cookie = "email="+email;
    }else{
        alert("You have not subscribed")
    }
    validateEmail();   
}

function validate() {
    if (document.getElementById('fname').value === '')
    {
        document.getElementById('fname-error').innerHTML = 'Please enter your first name';
        return false;
    } else
        document.getElementById('fname-error').innerHTML = '';
	if (document.getElementById('user-email').value === '')
    {
        document.getElementById('user-email-error').innerHTML = 'Please enter your email';
        return false;
    } else
        document.getElementById('user-email-error').innerHTML = '';
	if (document.getElementById('message').value === '')
    {
        document.getElementById('message-error').innerHTML = 'Please enter your message';
        return false;
    } else
        document.getElementById('message-error').innerHTML = '';
	
    return false;
}
function display() {
    var message = "You are about to submit the following details:\n\nFirst Name: " + document.getElementById('fname').value;
    message += "\nEmail: " + document.getElementById('user-email').value;
    message += "\nMessage: " + document.getElementById('message').value;
    alert(message);
}

function validateEmail(){
    var email = document.getElementById("user-email").value;
    var format = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    if(!email.match(format)){
        alert("You have entered a wrong email format use format example@email.com");
    }else{
        alert("Form submitted successfully");
    }
}

