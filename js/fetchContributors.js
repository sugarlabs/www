const apiUrl = 'https://api.github.com/repos/sugarlabs/www/contributors';
async function fetchContributors() {
    try {
        const response = await fetch(apiUrl);
        if (!response.ok) throw new Error('Network response was not ok ' + response.statusText);
        const contributors = await response.json();
        displayContributors(contributors);
    } catch (error) {
        console.error('Fetch operation error:', error);
    }
}

function displayContributors(contributors) {
    const contributorsList = document.getElementById('contributors-list');
    contributorsList.innerHTML = '';
    contributors.forEach(contributor => {
        const listItem = document.createElement('div');
        listItem.className = 'contributor-box';
        listItem.innerHTML = `
            <img src="${contributor.avatar_url}" alt="${contributor.login}'s avatar" class="contributor-avatar"><br/>
            <a href="${contributor.html_url}" target="_blank">${contributor.login}</a>
            <p>(${contributor.contributions} contributions)</p>
        `;
        contributorsList.appendChild(listItem);
    });
}

document.addEventListener('DOMContentLoaded', fetchContributors);
