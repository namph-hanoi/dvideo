pragma solidity ^0.5.0;

contract DVideo {
  uint public videoCount = 0;
  string public name = "DVideo";
  mapping(uint => Video) public videos;

  struct Video {
    uint id;
    // Hash is returned from the IPFS
    string hash;
    string title;
    address author;
  }

  event VideoUploaded(
    uint id,
    string hash,
    string title,
    address author
  );

  //Create Event


  constructor() public {
  }

  function uploadVideo(string memory _videoHash, string memory _title) public {
    // Make sure the video hash exists
    require(bytes(_videoHash).length > 0);
    // Make sure video title exists
    require(bytes(_title).length > 0);
    // Make sure uploader address exists
    require(msg.sender != address(0));

    // Increment video id
    videoCount++;

    // Add video to the contract
    videos[videoCount] = Video(videoCount, _videoHash, _title, msg.sender);
    
    // Trigger an event
    emit VideoUploaded(videoCount, _videoHash, _title, msg.sender);
  }
}
