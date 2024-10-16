// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract array {

    uint256[] public arr1;              //array vacia
    uint256[] public arr2=[22,33,44];   // array con elementos
    uint256[10] public arr3;            //array vacion pero se cuantos voy a gastar

    //Trae un elemento particular del array
    function get(uint _i) public  view returns  (uint256){
        return  arr2[_i];
    }
    //array completo
    function getArr() public view returns (uint256[] memory) {
        
        return arr2;

    }

    //nuevo elemento en el array
    function push(uint256 _i) public  {
        arr2.push(_i);
    }
    // borra el ultimo elemnto en el array
    function pop() public  {
        arr2.pop();
    }

    //Contar el numero de elemtnos que tiene el array

    function get_length() public view returns (uint256){
        return  arr2.length;
    }

    //borrar un elemento en particular
    function remove (uint256 _i) public {
        delete  arr2[_i];
    }
}