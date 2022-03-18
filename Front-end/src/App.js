import './App.css';
import { useEffect, useState } from 'react';
function App() {

  const [data, setData] = useState([])

  useEffect(()=>{

    request()

  },[]) 

  function request(){
    var question = 'http://localhost:5500/api/patient';
    convertQuestion(question)
    console.log('data1', data)
  }


  const convertQuestion = (question) =>{
    fetch(question)
        .then(res => res.json())
        .then(res => {
            setData(res)
        })
  }

  let displayPatient =(
    
    console.log('data2', data),
    data.map(element =>{

        console.log(".map", element)
        console.log('ok');
        return(
            <tr>
              <td>{element.nom}</td>
              <td>{element.prenom}</td>
              <td>{element.age}</td>
              <td>{element.taille}</td>
              <td>{element.poids}</td>
              <td><button></button><hr></hr><button></button></td>
            </tr>)
    })
    
  )

  return (
    <div className="App">
      <table>
          <thead>
            <tr>
              <th>nom</th>
              <th>prenom</th>
              <th>age</th>
              <th>taille</th>
              <th>kg</th>
            </tr>
          </thead>
          <tbody>
      {data.length === 0 ? console.log("data is undefined") : displayPatient}
      </tbody>
      </table>
    </div>
  );
}

export default App;
