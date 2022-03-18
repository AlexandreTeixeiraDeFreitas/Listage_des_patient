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
            console.log('test1', res)
            
        })
  }

  let displayPatient =(
    
    console.log(data.success),
    data.success.map(element =>{

        console.log(".map", element)
        
        return(
            <tr>
              <td>{element.nom}</td>
              <td>{element.prenom}</td>
              <td>{element.age}</td>
              <td>{element.taille}</td>
              <td>{element.poids}</td>
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
      {data.success.length == 0 ? console.log("data is undefined") : displayPatient}
      </tbody>
      </table>
    </div>
  );
}

export default App;
