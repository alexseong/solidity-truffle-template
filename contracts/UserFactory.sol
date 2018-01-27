pragma solidity ^0.4.8;
import "./User.sol";

contract UserFactory {

  // index of created contracts

  address[] public users;

  // useful to know the row count in contracts index

  function getUserCount()
    public
    constant
    returns(uint userCount)
  {
    return users.length;
  }

  // deploy a new contract

  function newUser(address uid, string name, string surname, string interests, string about)
    public
    returns(address newUser)
  {
    address u = new User(uid, name, surname, interests, about);
    users.push(u);
    return u;
  }
}