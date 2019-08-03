pragma solidity ^0.5.0;

contract Voting
{
	event Voted
	(
		address user,
		bytes32 evidence,
		bool vote
	);

	mapping (address => bool) exists;

	address public User;

	constructor()public
	{
		User=msg.sender;
	}

	modifier notVoted() { 
	 	
	 	require(exists[User], "Vote has already been cast");
	 	_;
	 }
	  
	function castVote(bytes32 evidence, bool choice)public notVoted
	{
		emit Voted(User, evidence, choice);
	}
}
