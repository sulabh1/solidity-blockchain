//SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.7.0<0.9.0;

contract Student{
    uint age;
    string name;
    uint rollNo;
    uint grade;

    constructor(uint _age, string memory _name, uint _rollNo, uint _grade){
        age=_age;
        name=_name;
        rollNo=_rollNo;
        grade=_grade;
    }

    function verifyAdmission()public view returns(string memory){
        if(grade>55){
            return "Eligible for admission";
        }else{
            return "Not eligible for this college. Better luck next time!!!";
        }
    }
}

contract Ram is Student(21, "ram shrestha", 25, 56){
    uint bookCount;
    constructor(uint _bookCount){
        bookCount=_bookCount;
    }

    function checkbookCount()public view returns(string memory){
        if(bookCount>=100){
            return "Ill get admission";
        }else{
            return "Sorry try next student!!";
        }
    }

}

contract AnotherSchool is Student{
    uint __age;
    string __name;
    uint __rollNumber;
    uint __grade;
    constructor(uint a, string memory n, uint r, uint g) Student(a, n, r, g){
        __age=a;
        __name=n;
        __rollNumber=r;
        __grade=g;

    }

    function returnAge() view public returns(uint){
        return __age;
    }
     function returnName() view public returns(string memory){
        return __name;
    }
     function returnRollNo() view public returns(uint){
        return __rollNumber;
    }
    function returnGrade() view public returns(uint){
        return __grade;
    }

    function admissionVerificationRequirment() public view returns(string memory){
        if(__age>25){
            return "Not elligible for admission in another school age is to high!!!";
        }else if(__grade<60){
            return "Not elligible for admission grade is too low!!!";
        }else if(__rollNumber>35){
            return "Not eligible for admission rollnumber is too high!!!";
        }else{
            return "Congratulation! you are selected for this school!!!";
        }
    }
}