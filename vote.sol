/ SPDX-License-Identifier: GPL-3.0
pragma solidity^0.8.7;

contract Voter{
    
    uint public one;
    uint public two;
    mapping(address => bool) public voted;
    mapping(address => bool) public verified;
    address owner = msg.sender;


    function vote1(address _addr) public {
        assert(verified[_addr] == true);
        assert(voted[_addr] == false);
        one++;
        voted[_addr] = true;
    }

    function vote2(address _addr) public {
        assert(verified[_addr] == true);
        assert(voted[_addr] == false);
        
        two++;
        voted[_addr] = true;
    }

    function verifyVoter(address _addr) public {
        assert(msg.sender == owner);
        verified[_addr] = true;
    }


}
