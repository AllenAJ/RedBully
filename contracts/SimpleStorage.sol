pragma solidity ^0.5.0;

contract SimpleStorage {
  uint storedData;
  string mess="workkkkkkkkk";

	uint totalcomplains;
	string lol = "test";

  struct Complaintlist{
          uint id;
          string cemail;
          string cname;
          string clinkuser;
          string ctarget;
          string clinktarget;
          string desc;
          uint creward;
      }
      //,Complaintlist[] public clientc;
      mapping(uint => Complaintlist) public complains;

  function createComplain(string memory _cemail,string memory _cname,string memory _clinkuser,string memory _ctarget,string memory _clinktarget,string memory _desc,uint _creward) public{
              totalcomplains++;
              complains[totalcomplains]=Complaintlist(totalcomplains,_cemail,_cname,_clinkuser,_ctarget,_clinktarget,_desc,_creward);
            }	
	
  function set(uint x) public {
    storedData = x;
  }

  function get() public view returns (uint) {
    return storedData;
  }
  function getm() public view returns (string memory) {
    return mess;
  }
}


