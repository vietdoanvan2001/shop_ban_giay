var checkValid = function () {
    var valid = true;
    valid =
      kiemTraRong("taikhoan", "error__tk") &
      kiemTraRong("matkhau", "error__mk") &
      kiemTraRong("laimatkhau", "error__lmk") &
      kiemTraRong("sdt", "error__sdt");
    valid &= kiemTraDoDai("#matkhau", "#error__lengthMK") & kiemTraDoDai('#laimatkhau','#error__lengthLMK');
    valid &= kiemTraSDT("#sdt","#check__sdt");
    if (!valid) {
      return false;
    }
    return true;
  };
  
  var kiemTraRong = function (selectorValue, selectorError) {
    var inputText = document.getElementById(selectorValue);
  
    if (inputText.value.trim() === "") {
      document.getElementById(selectorError).innerHTML =
        inputText.name + " không được bỏ trống";
      document.getElementById(selectorError).style.display = "block";
      return false;
    } else {
      document.getElementById(selectorError).innerHTML = "";
      document.getElementById(selectorError).style.display = "none";
      return true;
    }
  };
  var kiemTraDoDai = function (selectorValue, selectorError) {
    var inputText = document.querySelector(selectorValue);
    if (inputText.value.length >= inputText.minLength && inputText.value.length <= inputText.maxLength) {
      document.querySelector(selectorError).innerHTML = "";
      document.querySelector(selectorError).style.display = "none";
      return true;
    } else {
      document.querySelector(selectorError).innerHTML = inputText.name + " từ " + inputText.minLength + " đến " + inputText.maxLength;
      document.querySelector(selectorError).style.display = "block";
      return false;
    }
  };
  var kiemTraSDT =  function (selectorValue , selectorError) {
    var inputText = document.querySelector(selectorValue);
    var regex = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im ;
    if(regex.test(inputText.value)) {
      document.querySelector(selectorError).innerHTML = "";
      document.querySelector(selectorError).style.display = "none";
      return true;
    } else {
      document.querySelector(selectorError).innerHTML =inputText.name + " không hợp lệ";
      document.querySelector(selectorError).style.display = "block";
      return false;
    }
  };
  
  
  document.getElementById("btn___dk").onclick = checkValid;
  