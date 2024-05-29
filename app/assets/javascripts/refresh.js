
// document.addEventListener("DOMContentLoaded", function() {
//     
//     var form = document.getElementById("user-profile-form");
//     
//     form.addEventListener("submit", function(event) {
//       
//       event.preventDefault();
//       
//       console.log("Привет");
//     });
//   });



// document.addEventListener("DOMContentLoaded", function() {
//     
//     var form = document.getElementById("user-profile-form");
  
//     
//     form.addEventListener("submit", function(event) {
//       
//       event.preventDefault();
      
//       console.log("Привет");

//       
//       var nickname = document.getElementById("user_profile_nickname").value;
//       var dateOfBirth = document.getElementById("user_profile_date_of_birth").value;
//       var dateOfRegistration = document.getElementById("user_profile_date_of_registration").value;
//       var email = document.getElementById("user_email").value;
//       var password = document.getElementById("user_password").value;
//       var passwordConfirmation = document.getElementById("user_password_confirmation").value;
//       var currentPassword = document.getElementById("user_current_password").value;
      
//      
//       console.log("Nickname:", nickname);
//       console.log("Date of Birth:", dateOfBirth);
//       console.log("Date of Registration:", dateOfRegistration);
//       console.log("Email:", email);
//       console.log("Password:", password);
//       console.log("Password Confirmation:", passwordConfirmation);
//       console.log("Current Password:", currentPassword);
//       
//       form.querySelector("#user_profile_nickname").value = nickname;
//       form.querySelector("#user_profile_date_of_birth").value = dateOfBirth;
//       form.querySelector("#user_profile_date_of_registration").value = dateOfRegistration;
//       form.querySelector("#user_email").value = email;
//       form.querySelector("#user_password").value = password;
//       form.querySelector("#user_password_confirmation").value = passwordConfirmation;
//       form.querySelector("#user_current_password").value = currentPassword;

//       
//       form.submit();
//     });
//   });





// document.addEventListener("DOMContentLoaded", function() {
//     var form = document.getElementById("user-profile-form");
  
//     form.addEventListener("submit", function(event) {
//       event.preventDefault();
  
//       console.log("Привет");
//       var currentUrl = window.location.href;
//       var userId = currentUrl.split("/")[4]; 
//       var editUrl = "http://localhost:3000/user_profiles/" + userId + "/edit";
//       console.log(editUrl)

//       $.ajax({
//         type: "POST", 
//         url: editUrl, 
//         data: $(this).serialize(), 
//         success: function(response) {
//           
//           $("#user-profile-form").html(response);
//         },
//         error: function(xhr, status, error) {
//           
//           console.error(error);
//         }
//       });

//     });
//   });


document.addEventListener("DOMContentLoaded", function() {
    const avatarPreview = document.getElementById("avatar_preview");
    const avatarInput = document.getElementById("avatar_input");
  
    avatarPreview.addEventListener("click", function(event) {
      avatarInput.click();
    });
  
    avatarInput.addEventListener("change", function() {
      document.getElementById("user-profile-form").submit();
    });
  });