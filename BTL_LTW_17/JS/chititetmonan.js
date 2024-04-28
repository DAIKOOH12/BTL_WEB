var btnDesAmount = document.getElementById("btn-des-amount")
var btnInsAmount = document.getElementById("btn-ins-amount")

btnDesAmount.addEventListener("click", function () {
    var amount = document.getElementById("soluong").value;
    if (amount == 0) {
        document.getElementById("soluong").setAttribute('value', "0");
    }
    else {
        amount--;
        document.getElementById("soluong").setAttribute('value', amount);
    }
});

btnInsAmount.addEventListener("click", function () {
    var amount = document.getElementById("soluong").value;
    amount++;
    document.getElementById("soluong").setAttribute('value', amount);
})

function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
}

var oldprice = numberWithCommas(document.getElementsByClassName("old-price")[0].innerText);
document.getElementsByClassName("old-price")[0].innerText = oldprice + " VND";

var newprice = numberWithCommas(document.getElementsByClassName("sale-price")[0].innerText);
document.getElementsByClassName("sale-price")[0].innerText = newprice + " VND";