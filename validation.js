/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function val(v)
            {
                document.getElementById(v).innerHTML="";
            }
            function validation()
            {
                var flag=true;
                
                var name2=document.regform.name1.value;
                var email2=document.regform.email1.value;
                var pass2=document.regform.pass1.value;
               
                
                var name_pattern=/^[a-zA-Z ]{3,30}$/;
                var email_pattern = /^([a-zA-Z0-9])(([a-zA-Z0-9])*([\._\+-])*([a-zA-Z0-9]))*@(([a-zA-Z0-9\-])+(\.))+([a-zA-Z]{2,4})+$/;
                var password_pattern = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
                
               
                
                if(!name2.match(name_pattern))
                {
                    document.getElementById('name_error').innerHTML="Name is not properly formated";
                    flag=false;
                }
                if(name2==="")
                {
                    document.getElementById('name_error').innerHTML="Name cannot be empty";
                    flag=false;
                }
                
                if(!email2.match(email_pattern))
                {
                    document.getElementById('email_error').innerHTML="Email is not properly formatted";
                    flag=false;
                }
                if(email2==="")
                {
                    document.getElementById('email_error').innerHTML="Email cannot be empty";
                    flag=false;
                }
                
                if(!pass2.match(password_pattern))
                {
                    document.getElementById('password_error').innerHTML="Password is not properly formatted (should contain 0-9,special characters";
                    flag=false;
                }
                if(pass2==="")
                {
                    document.getElementById('password_error').innerHTML="Password cannot be empty";
                    flag=false;
                }
               
                return flag;
            }
