
var sticky = new Sticky('.sticky');


$('#sameshipping').prop('checked', true);

function myFunctionShip() {

var x = document.getElementById('shipping-information');

if (x.style.display == 'none' && x.id == 'shipping-information') {
x.style.display = 'block';
document.getElementById("sameshipping").checked = false;
} else {
x.style.display = 'none';
document.getElementById("sameshipping").checked = true;
}
}

function myFunctionPay() {

var y = document.getElementById('payoptions');

if (y.style.display == 'none' && y.id == 'payoptions') {
y.style.display = 'flex';
document.getElementById("payoptions").checked = true;
} else {
y.style.display = 'none';
document.getElementById("payoptions").checked = false;
}

}

function myFunctionCoupon() {

var z = document.getElementById('couponcode');

if (z.style.display == 'none' && z.id == 'couponcode') {
z.style.display = 'flex';
document.getElementById("couponcode").checked = true;
} else {
z.style.display = 'none';
document.getElementById("couponcode").checked = false;
}
}







window.onload = function() {
document.getElementById('FirstNameShip').value = '';
}
var fnship = document.getElementById('FirstNameShipping').value;
var fnsship = document.getElementById('FirstNameShip').value;
const p = document.querySelector('#FirstNameShipping');

function foo(x) {

document.getElementById("FirstNameShipping").style.padding = "5px 0 0 10px";

if (fnship === 0) {document.getElementById("FirstNameShipping").style.padding = "18px 0 0 16px";  };
if (fnship === "undefined") {document.getElementById("FirstNameShipping").style.padding = "18px 0 0 16px";  };

}
function foox(x) {
FirstNameShipping.classList.add("my-class");
document.getElementById("FirstNameShipping").style.padding = "18px 0 0 16px";

console.log(document.getElementById('FirstNameShipping').value);
console.log("out");

if (fnship === 0) {document.getElementById("FirstNameShipping").style.padding = "18px 0 0 16px" };

if (document.getElementById('FirstNameShip').value.length > 0) {document.getElementById("FirstNameShipping").style.padding = "5px 0 0 10px"}
else {
document.getElementById("FirstNameShipping").style.padding = "18px 0 0 16px";
};




}


