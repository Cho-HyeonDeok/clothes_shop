document.addEventListener('DOMContentLoaded', function () {
  const topHeaderContainer = document.querySelector('.main_topLogo');
  const mainHeaderRanking = document.querySelector('.main_header_Ranking ul');
  const liItems = mainHeaderRanking.querySelectorAll('li');

  let cnt = 0;
  let count = 0;
  let login = localStorage.getItem('login') || 0; // 로그인 값 가져오기 없으면 0



  setInterval(function () {
    if (cnt == 0) {
      topHeaderContainer.style.transform = `translateX(-2600px)`;

      cnt++;
    } else if (cnt == 1) {
      topHeaderContainer.style.transform = `translateX(-5200px)`;

      cnt++;
    } else if (cnt == 2) {
      topHeaderContainer.style.transform = `translateX(0px)`;

      cnt = 0;
    }
  }, 3000);
  setInterval(function () {
    liItems.forEach((li, index) => {
      if (index === count) {
        li.style.display = 'block';
      } else {
        li.style.display = 'none';
      }
    });

    count = (count + 1) % liItems.length;
  }, 2000);


});