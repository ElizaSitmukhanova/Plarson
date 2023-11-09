function checkComplete() {
	document.addEventListener('readystatechange', () => {
		if (document.readyState === 'interactive') {
			alert('The page is interactive');
			document.addEventListener('DOMContentLoaded', () => {
				alert('The page is interactive');
			});
		}
	})
}


checkComplete();

document.addEventListener('DOMContentLoaded', () => {
	alert('Dom content loaded');
})

// чтобы проверить, что страница полностью загрузилась 

/* function checkComplete() {
	document.addEventListener('readystatechange', () => {
		if (document.readyState === 'complete') {
			alert('The page is completely ready');
		}
	})
}

checkComplete()

document.addEventListener('DOMContentLoaded', () => {
	alert('Dom loaded');
}) */