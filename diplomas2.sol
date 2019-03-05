pragma solidity 0.5;

contract LivreDesDiplomes {
    
    constructor() public {
    }
    
    struct Diplome {
        string nom;
        string prenom;
        uint numeroDiplome;
    }
    
    Diplome[] public diplomes; 
    
    function ajouterDiplome(string memory nom, string memory prenom, uint numerodiplome) public  {
        Diplome memory undiplome = Diplome(nom, prenom, numerodiplome);
        diplomes.push(undiplome);
    }
    
    function totalDiplome() public view returns(uint) {
        return diplomes.length;
    }
    
    function voirUnDiplome(uint i) public view returns(string memory) {
        return diplomes[i].nom;
    }
    
    function voirNumeroDiplome(string memory name) public view returns(uint) {
        uint numero = 0;
        uint i;
        for(i=0;i<totalDiplome();i++) {
            if (keccak256(abi.encodePacked(diplomes[i].nom)) == keccak256(abi.encodePacked(name)))
                numero = diplomes[i].numeroDiplome;
        }
        return numero;
    }
    
        
}
    
