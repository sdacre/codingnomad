var img = document.getElementById('flower');

img.onmouseout = function () {
   this.src = 'flower.jpeg';
};

img.onmouseover = function () {
   this.src = 'code-flower.jpeg';
};