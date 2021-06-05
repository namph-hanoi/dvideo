pragma solidity ^0.5.0;

contract DVideo {
  uint public videoCount = 0;
  string public name = "DVideo";
  //Create id=>struct mapping

  struct Video {
    uint id;
    // Hash is returned from the IPFS
    string hash;
    string title;
    address author;
  }

  //Create Event


  constructor() public {
  }

  function uploadVideo(string memory _videoHash, string memory _title) public {
    // Make sure the video hash exists

    // Make sure video title exists

    // Make sure uploader address exists


    // Increment video id

    // Add video to the contract

    // Trigger an event

  }
}
