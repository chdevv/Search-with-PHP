const inputSearch = document.querySelector("input-search")


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


inputSearch.addEventListener("keydown", (event) => {
  console.log(event)
  console.log("oi")
})
//insira um elemento ao datalist para testar.



