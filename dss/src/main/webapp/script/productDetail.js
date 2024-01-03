function handleThumbnailClick(imageUrl) {
    const selectedImage = document.getElementById('selectedImage');
    selectedImage.src = imageUrl;
 }

function viewButton() {
    const infoButton = document.getElementById('info_button');
    const selectedImage = document.getElementById('selectedImage');
    
    // 현재 이미지 스타일의 max-height 값을 가져옵니다.
    const currentMaxHeight = selectedImage.style.maxHeight;
    
    // 이미지 스타일의 max-height 값이 '10000px'인 경우 이미지를 원래 크기로 되돌립니다.
    if (currentMaxHeight === '10000px') {
        selectedImage.style.maxHeight = '600px'; // 이미지 원래 높이로 변경
        infoButton.style.display = 'none'; // 버튼 숨기기
    } else {
        // 그렇지 않으면 이미지를 크게 표시하고 버튼을 보이게 합니다.
        selectedImage.style.maxHeight = '10000px';
        infoButton.style.display = 'block'; // 버튼 표시
    }
}

function changeColor(){
	document.getElementById("icon").style.color="red";
}
