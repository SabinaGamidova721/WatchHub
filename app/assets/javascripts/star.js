// document.addEventListener('DOMContentLoaded', function() {
//   const stars = document.querySelectorAll('.star-rating [type="radio"]');
  
//   stars.forEach(function(star) {
//       star.addEventListener('click', function() {
//           const rating = this.value;
//           console.log('Selected rating:', rating); 
          
          
//           const starIcons = document.querySelectorAll('.star-rating i');
//           starIcons.forEach(function(icon, index) {
//               if (index < rating) {
//                   icon.style.color = '#faec1b'; 
//               } else {
//                   icon.style.color = ''; 
//               }
//           });
//       });
//   });
// });


// document.addEventListener('DOMContentLoaded', function() {
//   const stars = document.querySelectorAll('.star-rating [type="radio"]');
  
//   stars.forEach(function(star) {
//       star.addEventListener('click', function() {
//           const rating = this.value;
//           console.log('Selected rating:', rating); 
          
//           const filmId = document.getElementById('film-data').dataset.filmId;
//           const url = 'http://localhost:3000/ratings/new?film_id=' + filmId + "&score=" + rating;

//           const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

//           fetch(url, {
//             method: 'POST',
//             headers: {
//               'Content-Type': 'application/json',
//               'X-CSRF-Token': csrfToken
//             },
//             body: JSON.stringify({ rating: rating, film_id: filmId, score: rating })
//           })
//           .then(response => response.json())
//           .then(data => console.log(data))
//           .catch(error => console.error('Error:', error));
          
//           const starIcons = document.querySelectorAll('.star-rating i');
//           starIcons.forEach(function(icon, index) {
//               if (index < rating) {
//                   icon.style.color = '#faec1b'; 
//               } else {
//                   icon.style.color = ''; 
//               }
//           });
//       });
//   });
// });


document.addEventListener('DOMContentLoaded', function() {
  const filmData = document.getElementById('film-data');
  const filmId = filmData.dataset.filmId;

  const userRatingData = document.getElementById('user-rating');
  const userRating = userRatingData.dataset.userRating;

  console.log('userRating:', userRating);
  updateStarDisplay(userRating);

  const stars = document.querySelectorAll('.star-rating [type="radio"]');

  stars.forEach(function(star) {
      star.addEventListener('click', handleStarClick);
  });

  function handleStarClick() {
    const rating = this.value;
    console.log('Selected rating:', rating); 

    const url = 'http://localhost:3000/ratings/new?film_id=' + filmId + "&score=" + rating;
    const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

    fetchRatingUpdate(url, csrfToken, rating);
  }


  function fetchRatingUpdate(url, csrfToken, rating) {
    fetch(url, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': csrfToken
      },
      body: JSON.stringify({ rating: rating, film_id: filmId, score: rating })
    })
    .then(response => response.json())
    .then(data => console.log(data))
    .catch(error => console.error('Error:', error));
  }


  function updateStarDisplay(userRating) {
    const starIcons = document.querySelectorAll('.star-rating i');
    starIcons.forEach(function(icon, index) {
      if (index < userRating) {
        icon.style.color = '#faec1b'; 
      } else {
        icon.style.color = ''; 
      }
    });
  }
});
