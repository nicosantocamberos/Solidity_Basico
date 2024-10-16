// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract solidity_vars {

    address public block_now; //direccion del minero actual
    uint public block_dif;    //Dificultad del bloque actual
    uint public block_num;    // Numer del bloque actual
    bytes32 public block_hash; //Tipo de datos para el block hash
    uint public time_stamp;   // msrca del tiempo de la cadena de bloques
    uint public gas_left;     // gas left
    address public sender;    // Direccion de quien esta realizando la llamada al contrato
    bytes4 public sig_id;     // primeros 4 bytes de la llamada a la funcion
    uint public gas_limit;    // Limite del gas del bloque actual
    function updateParams() public  
    {
        block_now =block.coinbase;
        block_dif= block.prevrandao;
        block_num=block.number;
        time_stamp= block.timestamp;
        gas_left=gasleft();
        sender=msg.sender;
        sig_id=msg.sig;
        gas_limit=block.gaslimit;
    }
}


