//document.getElementById('registrationForm').addEventListener('submit', function(event) {
//    var username = document.getElementById('#username').value;
//    var email = document.getElementById('#email').value;
//    var password = document.getElementById('#password').value;
//    var age = document.getElementById('#age').value;
//
//    if (username === '' || email === '' || password === '' || age === '') {
//        alert('Please fill in all fields.');
//        event.preventDefault();
//    } else if (/^\s+$/.test(username) || /^\s+$/.test(email) || /^\s+$/.test(password)) {
//        alert('Username, email, or password cannot be only spaces.');
//        event.preventDefault();
//    }
//});

var username, email, age, password, userId, dob; 

var validationRegex = new RegExp("^[A-Za-z]\\w{5, 29}$");

function handleUserIDValidation(){
    username = document.getElementById("userId");
    document.getElementById("userId").value = username.value.trim();
    console.log(document.getElementById("userId").value)
}

function handleUsernameValidation(){
    username = document.getElementById("username");
    document.getElementById("username").value = username.value.trim();
    console.log(document.getElementById("username").value)
}
document.getElementById('deleteAccount').addEventListener('click', function() {
    document.getElementById('popup').style.display = 'flex';
});

document.querySelectorAll('#popup .popup-buttons a').forEach(function(anchor) {
    anchor.addEventListener('click', function(e) {
        e.preventDefault();
        if (this.classList.contains('yes')) {
            document.getElementById('passwordPopup').style.display = 'flex';
        } else {
            document.getElementById('popup').style.display = 'none';
        }
    });
});

//document.getElementById('passwordForm').addEventListener('submit', function(e) {
//    e.preventDefault();
//    var password = document.getElementById('passwordInput').value;
//    if (password === 'yourpassword') {
//        alert('Account deleted successfully!');
//        // Code to delete account goes here
//    } else {
//        alert('Incorrect password. Please try again.');
//    }
//    document.getElementById('passwordPopup').style.display = 'none';
//    document.getElementById('popup').style.display = 'none';
//});
