import logo from './logo.svg';
import './App.css';
import { useEffect, useState } from 'react';
function App() {

  const [data, setData] = useState([])

  function request(){
    var question = 'http://localhost:5500/api/patient';
    convertQuestion(question)
  }

  const convertQuestion = (question) =>{
    fetch(question)
        .then(res => res.json())
        .then(res => {
            setData(res)
        })
  }

  let displayPatient =(
    
    console.log('test1', data),
    data.map(element =>{

        console.log(".map", element.success)
        
        return(
            <tr>
              <td>{element.success.nom}</td>
              <td>{element.success.prenom}</td>
              <td>{element.success.age}</td>
              <td>{element.success.taille}</td>
              <td>{element.success.poids}</td>
              <td><button></button><hr></hr><button></button></td>
            </tr>)
    })
    
  )

  useEffect(()=>{

    request()

  },[]) 
  

  return (
    <div className="App">
      <table>
          <thead>
            <tr>
              <th>nom</th>
              <th>prenom</th>
              <th>age</th>
              <th>kg</th>
            </tr>
          </thead>
          <tbody>
      {data.length == 0 ? console.log("data is undefined") : displayPatient}
      </tbody>
      </table>
    </div>
  );
}

export default App;
