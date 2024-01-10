const inputSearch = document.querySelector(".input-search")

function addInElementFather(elementassigned, datalist){
  datalist.appendChild(elementassigned);
}

function setAtribueELement(element,valueData){
  element.value = valueData
  return element
}

function createELements(data){
  const datalist = document.querySelector(".datalistOptions")
  while (datalist.firstChild) {
    datalist.removeChild(datalist.firstChild)
  }
  data.forEach(data => {
    const elementCreated = document.createElement("option")
    const valueData = data.titulo
    const elementassigned = setAtribueELement(elementCreated, valueData)
    addInElementFather(elementassigned,datalist)
  });
  
}
async function requestSearch(){
  const protocol = window.location.protocol
  const url = window.location.host
  const UrlRequest = `${protocol}//${url}/src/Main.php`
  const inputText = inputSearch.value
  console.log(inputText)
  if(inputText != ""){
    const response = await fetch(UrlRequest,{
      method: "POST",
      headers: {
        "Content-Type": "application/json" // Indica que o corpo é JSON
      },
      body: JSON.stringify({ "tituloPais": inputText })
    })
    const data = await response.json()
    createELements(data)
  }
}

inputSearch.addEventListener("keyup", () => {
  requestSearch()
})



