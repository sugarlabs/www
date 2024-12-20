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
            const current = +counter.innerText;
            const increment = target / speed;

            if (current < target) {
                counter.innerText = Math.ceil(current + increment);
                setTimeout(updateCount, 10); // Repeat every 10ms
            } else {
                
                if (target === 170) {
                    counter.innerText = `${target}`; 
                } else {
                    counter.innerText = `${target}+`;
                }
              
            }
        };

        updateCount();
    }

    // Use IntersectionObserver to detect when the element comes into view
    const observerOptions = {
        root: null, 
        threshold: 0.3 
    };

    const observer = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                animateCounter(entry.target); // Start animation
                observer.unobserve(entry.target); // Stop observing after animation starts
            }
        });
    }, observerOptions);

    counters.forEach(counter => {
        observer.observe(counter); // Observe each counter
    });
});

const donateBanner = document.getElementById("donation-banner");
const closeBtn = document.getElementById("close-button");

closeBtn.addEventListener("click", function() {
    donateBanner.style.display = "none";
});