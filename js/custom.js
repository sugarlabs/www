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

// Counter Animation of the home page 
document.addEventListener('DOMContentLoaded', () => {
    const counters = document.querySelectorAll('.count');
    // Function to animate the counter
    function animateCounter(counter) {
        const target = +counter.getAttribute('data-target');
        const speed = 200; 

        const updateCount = () => {
            const current = +counter.innerText.replace(/,/g, '');
            const increment = Math.ceil(target / speed);

            if (current < target) {
                counter.innerText = Math.min(current + increment, target).toLocaleString();
                setTimeout(updateCount, 10);
            } else if (target === 170) {
                counter.innerText = target.toLocaleString();
            } else {
                counter.innerText = target.toLocaleString() + '+';
            }
        };

        updateCount();
    }

    const observerOptions = {
        root: null, 
        threshold: 0.3 
    };

    const observer = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                animateCounter(entry.target); 
                observer.unobserve(entry.target);
            }
        });
    }, observerOptions);

    counters.forEach(counter => {
        observer.observe(counter);
    });
});
