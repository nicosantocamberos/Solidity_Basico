// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Mapping   {

    // Definir un mapping de direcciones y enteros
    mapping (address => uint256 )balances;
    function setBalance (address _addr ) public {
        uint256 arbBalance = _addr.balance;
        balances[_addr]= arbBalance;
    }

    //function consultar el valor del balance de una direccion en particular
    function getBalance(address _addr) public  view returns (uint256){

        return balances[_addr];
    }
    // funcion me permite es eleminar un valor del mapping
    function remove(address _addr) public  {
        delete balances[_addr];
    }
    // Funcion llama a otra funcion para actualizar los balances de un mapping
    function updateBalanceArb(address _addr) public  {

    setBalance(_addr);
    }
}