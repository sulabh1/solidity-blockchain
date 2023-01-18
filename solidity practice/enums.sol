//SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.7.0<0.9.0;

contract EnumLearning{
    enum PizzaSize{
        LARGER, MEDIUM, SMALL
    }

    PizzaSize choice;
    PizzaSize constant defaultChoice = PizzaSize.MEDIUM;

    //lets change the size of pizza

    function changeSize() public{
        choice = PizzaSize.MEDIUM;
    }

    function checkSize() public view returns(string memory){
         if(choice==defaultChoice){
            return "This is the right choice!!!";

        }else{
            return "No other choice is needed!!!";
        }
    }
}