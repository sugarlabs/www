//show answer and change indicator for /FAQ page
function toggleAnswer(answerId, element) {
    const answer = document.getElementById(answerId);
    const indicator = element.querySelector('.indicator'); 

    if (answer) {
        answer.classList.toggle('d-none');
        
        if (answer.classList.contains('d-none')) {
            indicator.innerHTML = '+';
        } else {
            indicator.innerHTML = '-';
        }
    }
}