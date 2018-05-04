pragma solidity ^0.4.17;

contract Adoption {
	address[16] public adopters;

	// Adopting a pet
	function adopt(uint horseId) public returns (uint) {
		require (horseId >= 0 && horseId <= 15);

		adopters[horseId] = msg.sender;

		return horseId;
	}

	// Retrieving the adopters
	function getAdopters() public view returns (address[16]) {
		return adopters;
	}
	
}