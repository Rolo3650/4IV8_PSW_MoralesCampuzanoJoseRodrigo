const anims = document.querySelectorAll('.js-anim-container');

anims.forEach( (anim,index) => {
	let anim_json = JSON.parse(document.querySelector('.js-anim-json[data-key="' + (index+1) + '"]').dataset.json);
	lottie.loadAnimation({
	    container: anim, // the dom element that will contain the animation
	    renderer: 'svg',
	    loop: true,
	    autoplay: true,
	    animationData: anim_json // the path to the animation json
	});
});