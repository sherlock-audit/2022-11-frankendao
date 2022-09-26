pragma solidity ^0.8.10;

interface IFrankenPunks {

    ////////////
    // Events //
    ////////////
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);
    event Finalized();
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    event SetAuctionStartAndEnd(uint256 auctionStart, uint256 auctionEnd);
    event SetBaseURI(string baseURI);
    event SetContractURI(string contractURI);
    event SetIsRevealed(bool isRevealed);
    event SetPlaceholderURI(string placeholderURI);
    event SetPresaleIsActive(bool presaleIsActive);
    event SetPresaleMerkleRoot(bytes32 root);
    event SetProvenanceHash(string provenanceHash);
    event SetRoyaltyInfo(address royaltyRecipient, uint256 royaltyAmountNumerator);
    event SetSaleIsActive(bool saleIsActive);
    event SetStartingIndex(uint256 startingIndex, uint256 blockNumber);
    event SetStartingIndexBlockNumber(uint256 blockNumber, bool usedForce);
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event Withdrew(uint256 balance);

    ////////////////////
    // View Functions //
    ////////////////////
    function AUCTION_PRICE_END() external view returns (uint256);
    function AUCTION_PRICE_START() external view returns (uint256);
    function MAX_MINT_PER_TX() external view returns (uint256);
    function MAX_SUPPLY() external view returns (uint256);
    function PRESALE_PRICE() external view returns (uint256);
    function RESERVED_SUPPLY() external view returns (uint256);
    function ROYALTY_AMOUNT_DENOMINATOR() external view returns (uint256);
    function TOKEN_URI_EXTENSION() external view returns (string memory);
    function _auctionEnd() external view returns (uint256);
    function _auctionStart() external view returns (uint256);
    function _isFinalized() external view returns (bool);
    function _isRevealed() external view returns (bool);
    function _numPresaleMints(address) external view returns (uint256);
    function _presaleIsActive() external view returns (bool);
    function _presaleMerkleRoot() external view returns (bytes32);
    function _provenanceHash() external view returns (string memory);
    function _royaltyAmountNumerator() external view returns (uint256);
    function _royaltyRecipient() external view returns (address);
    function _saleIsActive() external view returns (bool);
    function _startingIndex() external view returns (uint256);
    function _startingIndexBlockNumber() external view returns (uint256);
    function _startingIndexWasSet() external view returns (bool);
    function _usedVoucher(address) external view returns (bool);
    function approve(address to, uint256 tokenId) external;
    function balanceOf(address owner) external view returns (uint256);
    function contractURI() external view returns (string memory);
    function fallbackSetStartingIndexBlockNumber() external;
    function finalize() external;
    function getApproved(uint256 tokenId) external view returns (address);
    function getCost(uint256 numToMint, bool isPresale) external view returns (uint256);
    function getCurrentAuctionPrice() external view returns (uint256);
    function isApprovedForAll(address owner, address operator) external view returns (bool);
    function mint(uint256 numToMint) external payable;
    function mintPresale(uint256 numToMint, uint256 maxMints, uint256 voucherAmount, bytes32[] memory merkleProof)
        external
        payable;
    function mintReservedTokens(address recipient, uint256 numToMint) external;
    function name() external view returns (string memory);
    function owner() external view returns (address);
    function ownerOf(uint256 tokenId) external view returns (address);
    function renounceOwnership() external;
    function royaltyInfo(uint256, uint256 salePrice) external view returns (address, uint256);
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory _data) external;
    function setApprovalForAll(address operator, bool approved) external;
    function setAuctionStartAndEnd(uint256 auctionStart, uint256 auctionEnd) external;
    function setBaseURI(string memory baseURI) external;
    function setContractURI(string memory newContractURI) external;
    function setIsRevealed(bool isRevealed) external;
    function setPlaceholderURI(string memory placeholderURI) external;
    function setPresaleIsActive(bool presaleIsActive) external;
    function setPresaleMerkleRoot(bytes32 root) external;
    function setProvenanceHash(string memory provenanceHash) external;
    function setRoyaltyInfo(address royaltyRecipient, uint256 royaltyAmountNumerator) external;
    function setSaleIsActive(bool saleIsActive) external;
    function setStartingIndex() external;
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
    function symbol() external view returns (string memory);
    function tokenURI(uint256 tokenId) external view returns (string memory);
    function tokensOfOwner(address owner, uint256 startId, uint256 endId) external view returns (uint256[] memory);
    function totalSupply() external view returns (uint256);
    function transferFrom(address from, address to, uint256 tokenId) external;
    function transferOwnership(address newOwner) external;
    function walletOfOwner(address owner) external view returns (uint256[] memory);
    function withdraw() external;
}