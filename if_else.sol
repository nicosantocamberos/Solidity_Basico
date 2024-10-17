// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract if_else {

    uint256 public numero;        //eedead
    uint256 public edad_limit;    //edad limite

    constructor(uint256 _edad_limit){
    edad_limit = _edad_limit;
    }

    function establecernumero(uint256 _numero) public  {
        numero =_numero;
    }
    
    function mensaje() public view returns  (string memory) {

        if (numero > edad_limit){
            return  "Puedes ingresar eres mayor de edad";
        }else if (numero == edad_limit){
            return "Acabas de cumplir la mayoria de edad puedes ingresar";
        }else{
            return "Eres menor de edad FF";
        }
    }
}