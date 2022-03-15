pragma solidity ^0.8.12;

contract SocialNetwork { 
    string public name;
    uint public postCount = 0;
    mapping(uint => Post) public posts;

    struct Post {
        uint id;
        string content;
        uint tipAmount;
        address author;
    }

    constructor() public {
        name = "Brink Social Network";

    }
    function createPost(string memory _content) public {
        
        postCount ++;
        posts[postCount]= Post(postCount, _content, 0, msg.sender);
       
    }
}