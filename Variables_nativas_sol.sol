// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract variables_nativas_sol {

    string private fullName; // Solo puede acceder el que iniciallizo el contrato

    constructor(string memory _lastName){//solo se ejecuta una ves al inicializar

        fullName=string.concat("Mi nimbre es:"," ",_lastName);

    }
    function getName() public view returns  (string memory){
        return fullName;
        
    }
    /*
    uint enteros sin signo (no negativos)
    uint8 rango de 0 a 2 ** 8 -1
    uint16
    */
    uint public  uint_8 =1;
    uint16 public uint_16 = 123;

    // se pueden poner negativos
    int8 public int_8= -1;

    //address es una dirección

    address public  my_address = 0x8A46Fe031241d1CCc9A6a50578711ec92617F9B9;
    
}