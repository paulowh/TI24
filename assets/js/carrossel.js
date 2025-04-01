let indexSlide = 0;
function showSlide(index){
    const carrossel = document.querySelector('.carrossel')
    const totalSlides = document.querySelectorAll('.carrossel img').length
    
    if (index >= totalSlides) {
        indexSlide = 0
    } else if (index < 0 ){
        indexSlide = totalSlides - 1
    } else {
        indexSlide = index
    }

    const offset = -indexSlide*100
    carrossel.style.transform = `translateX(${offset}%)`
}

function proximoSlide(){
    indexSlide = indexSlide + 1
    showSlide(indexSlide)
}

function voltarSlide(){
    indexSlide = indexSlide - 1
    showSlide(indexSlide)
}

setInterval(() => {
    proximoSlide()
}, 2000)