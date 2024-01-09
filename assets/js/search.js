const inputSearch = document.querySelector(".input-search")


function addInElementFather(elementassigned){
  const datalist = document.querySelector(".datalistOptions")
  datalist.appendChild(elementassigned);
}

function setAtribueELement(element,valueData){
  element.value = valueData
  return element
}

function createELements(){
  const elementCreated = document.createElement("option")
  const elementassigned = setAtribueELement(elementCreated, valueData)
  addInElementFather(elementassigned)
}


inputSearch.addEventListener("keyup", (event) => {
  const protocol = window.location.protocol
  const url = window.location.host
  const UrlRequest = `${protocol}//${url}/src/Main.php`
  const inputText = inputSearch.value
  console.log(inputText)

  fetch(UrlRequest,{
    method: "POST",
    body:{"tituloPais": inputText}
  })
})
//insira um elemento ao datalist para testar.



