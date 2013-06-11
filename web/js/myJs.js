/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

function cancelConfirmPage()
{
    window.location = 'shelf.jsp';
}


function validateForm()
{
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    var name = document.getElementById("name").value;
    var address = document.getElementById("address").value;
    var email = document.getElementById("email").value;
    var captcha = document.getElementById("captcha").value;

    if (username == null | username == ""){
        alert("username must be filled out");
        document.getElementById("username").focus();
        return false;
    }
    
    if (password == null | password == ""){
        alert("password must be filled out");
        document.getElementById("password").focus();
        return false;
    }
    
    if (name == null | name == ""){
        alert("name must be filled out");
        document.getElementById("name").focus();
        return false;
    }
    
    if (address == null | address == ""){
        alert("address must be filled out");
        document.getElementById("address").focus();
        return false;
    }
    
    if (email == null | email == ""){
        alert("email must be filled out");
        document.getElementById("password").focus();
        return false;
    }
    
    if (captcha == null | captcha == ""){
        alert("captcha must be filled out");
        document.getElementById("captcha").focus();
        return false;
    }
    
   
}