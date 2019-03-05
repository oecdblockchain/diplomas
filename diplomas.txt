pragma solidity 0.5;

contract LivreDesDiplomes {

    constructor() public {
    }

    struct Diplome {
        string nom;
        string prenom;
        uint numDiplome;
    }

    Diplome[] public diplomes;

    function ajouterDiplome(string memory nom, string memory prenom, uint numerodiplome) public{
        Diplome memory undiplome = Diplome(nom,prenom, numerodiplome);
        diplomes.push(undiplome);
    }

    function totalDiplome() public view returns (uint)  {
        return diplomes.length;
    }

    function voirUnDiplome(uint i) public view returns (string memory)  {
        return diplomes[i].nom;
    }

}
