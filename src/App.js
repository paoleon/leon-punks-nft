import { useState } from 'react';
import './App.css';
import MainMint from './MainMint';
import NavBar from './NavBar';
import { ChakraProvider } from '@chakra-ui/react';
import fs from 'fs';

function App() {
  const [accounts, setAccounts] = useState([]);

  function test(){
    console.log(fs);
  }
  return (
    <ChakraProvider>
      <div className="overlay">
        <div className="App">
          <div className="App">
            {test()}
            <NavBar accounts={accounts} setAccounts={setAccounts} />
            <MainMint accounts={accounts} setAccounts={setAccounts} />
          </div>
          <div className="moving-background"> </div>
        </div>
      </div>
    </ChakraProvider>);
}


export default App;