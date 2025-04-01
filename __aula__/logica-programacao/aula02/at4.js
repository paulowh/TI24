//Crie um programa que leia três números e determine qual é o maior.

numero1 = 20
numero2 = 20
numero3 = 25

if (numero1 > numero2) {
    console.log('O numero 1 é maior que o numero 2');

    if (numero1 > numero3) {
        console.log('O numero 1 é maior que o numero 3');
        console.log('O MAIOR numero é do numero 1')
    }
}

if (numero2 > numero1) {
    console.log('O numero 2 é maior que o numero 1');
    
    if (numero2 > numero3) {
        console.log('O numero 2 é maior que o numero 3');
        console.log('O MAIOR numero é do numero 2')
    }
}

if (numero3 > numero1) {
    console.log('O numero 3 é maior que o numero 1');
    
    if (numero3 > numero2) {
        console.log('O numero 3 é maior que o numero 2');
        console.log('O MAIOR numero é do numero 3')
    }
}
