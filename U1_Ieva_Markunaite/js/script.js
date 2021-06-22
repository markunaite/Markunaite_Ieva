function validateForm() {
    const name = document.querySelector('#name').value;
    const email = document.querySelector('#email').value;


    if (name === '' || email === '') {
        alert('Būtina užpildyti visus laukus!');
    } else {
        const successMessage = document.querySelector('#success-message');
        successMessage.style.display = 'inline'
        setTimeout(function() { successMessage.style.display = 'none'; }, 6000);

    }
}