//
//  ViewController.swift
//  PlacesWhereYouCantGO
//
//  Created by Erwan Bouriau on 03/12/2019.
//  Copyright © 2019 Erwan Bouriau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var api = [
        "Tour Eiffel":
        [
            "Longitude": 48.858472,
            "Latitude": 2.294496,
            "Image": "Tour-Eiffel.jpg",
            "Pays": "France",
            "Site": "https://www.toureiffel.paris/fr",
            "Desc": ""
        ],
        "Tour de Pise":
        [
            "Longitude": 43.723130,
            "Latitude": 10.396618,
            "Image": "Tour-de-pise.jpeg",
            "Pays": "Italie",
            "Site": "http://www.torrepisa.com/torre-di-pisa/",
            "Desc": ""
        ],
        "Tour Perret":
        [
            "Longitude": 45.185203,
            "Latitude": 5.735433,
            "Image": "Tour-Perret.jpg",
            "Pays": "France",
            "Site": "https://www.grenoble-tourisme.com/fr/catalogue/activite/tour-perret-35439/",
            "Desc": ""
        ],
        "Big Ben":
        [
            "Longitude": 51.500916,
            "Latitude": -0.124690,
            "Image": "Big-Ben.jpg",
            "Pays": "Angleterre",
            "Site": "http://monumentsdelondres.com/big-ben",
            "Desc": ""
        ],
        "Pyramide de Gizeh":
        [
            "Longitude": 29.977594,
            "Latitude": 31.132538,
            "Image": "Pyramide-de-Gizeh.jpg",
            "Pays": "Egypte",
            "Site": "https://www.passion-egyptienne.fr/Gizeh%20site.htm",
            "Desc": ""
        ],
        "Statue de la Liberté":
        [
            "Longitude": 40.689453,
            "Latitude": -74.044157,
            "Image": "Statue-de-la-liberte.jpg",
            "Pays": "Etats-Unis",
            "Site": "https://www.nps.gov/stli/index.htm",
            "Desc": ""
        ],
        "Opéra de Sydney":
        [
            "Longitude": -33.856562,
            "Latitude": 151.215565,
            "Image": "Opera-sydney.jpg",
            "Pays": "Australie",
            "Site":  "https://www.sydneyoperahouse.com/",
            "Desc": ""
        ],
        "Grande muraille de Chine":
        [
            "Longitude": 40.433686,
            "Latitude": 116.573375,
            "Image": "Grande-muraille-de-Chine.jpg",
            "Pays": "Chine",
            "Site": "https://www.lamurailledechine.net/",
            "Desc": ""
        ],
        "Christ rédempteur":
        [
            "Longitude": -22.951738,
            "Latitude": -43.210029,
            "Image": "Christ-redempteur.jpg",
            "Pays": "Brésil",
            "Site": "https://www.merveilles-du-monde.com/Christ-redempteur/",
            "Desc": ""
        ],
        "Taj Mahal":
        [
            "Longitude": 27.175412,
            "Latitude": 78.042700,
            "Image": "Taj-Mahal.jpeg",
            "Pays": "Inde",
            "Site": "https://www.tajmahal.gov.in/",
            "Desc": ""
        ],
        "Mont Saint-Michel":
        [
            "Longitude": 48.636430,
            "Latitude": -1.509438,
            "Image": "Mont-Saint-Michel.jpg",
            "Pays": "France",
            "Site": "https://www.ot-montsaintmichel.com/index.htm",
            "Desc": ""
        ],
        "Kremlin":
        [
            "Longitude": 55.752060,
            "Latitude": 37.617515,
            "Image": "Kremlin.jpg",
            "Pays": "Russie",
            "Site": "https://www.kreml.ru/en-Us/museums-moscow-kremlin/",
            "Desc": ""
        ],
        "Sagrada Familia":
        [
            "Longitude": 41.403693,
            "Latitude": 2.174376,
            "Image": "Sagrada-Familia.jpg",
            "Pays": "Espagne",
            "Site": "https://sagradafamilia.org/en/home",
            "Desc": ""
        ],
        "Porte de Brandebourg":
        [
            "Longitude": 52.516327,
            "Latitude": 13.377693,
            "Image": "Porte-de-Brandebourg.jpg",
            "Pays": "Allemagne",
            "Site": "https://www.berlin.de/fr/monuments/3560266-3104069-porte-de-brandebourg.fr.html",
            "Desc": ""
        ],
        "Temple du Buddha d'émeraude":
        [
            "Longitude": 13.751998,
            "Latitude": 100.493273,
            "Image": "Temple-du-buddha.jpg",
            "Pays": "Thaïlande",
            "Site": "https://vivre-en-thailande.com/wat-phra-kaeo-temple-bouddha-demeraude/3561/",
            "Desc": ""
        ],
        "Statue de l'Île de Pâques":
        [
            "Longitude": -27.110854,
            "Latitude": -109.351277,
            "Image": "Statue-ile-de-pâques.jpg",
            "Pays": "Chili",
            "Site": "https://www.voyage-au-chili.com/chili_iledepaques.php",
            "Desc": ""
        ],
        "Chute du Niagara":
        [
            "Longitude": 43.093335,
            "Latitude": -79.073071,
            "Image": "Chute-du-Niagara.jpg",
            "Pays": "Etats-Unis",
            "Site": "https://fr.niagarafallstourism.com/",
            "Desc": ""
        ],
        "Sainte-Sophie":
        [
            "Longitude": 41.008625,
            "Latitude": 28.980152,
            "Image": "Sainte-Sophie.jpg",
            "Pays": "Turquie",
            "Site": "http://www.istanbul-city.fr/guide-istanbul/sainte-sophie-ayasofya/",
            "Desc": ""
        ],
        "Chichen Itza":
        [
            "Longitude": 20.684292,
            "Latitude": -88.567783,
            "Image": "Chichen-Itza.jpg",
            "Pays": "Mexique",
            "Site": "http://mundomaya.travel/fr/arqueologia/top-10/item/chichen-itza.html",
            "Desc": ""
        ],
        "Fort de la Bastille":
        [
            "Longitude": 45.198889,
            "Latitude": 5.725335,
            "Image": "Fort-de-la-Bastille.jpg",
            "Pays": "France",
            "Site": "https://bastille-grenoble.fr/",
            "Desc": ""
        ],
        "Atomium":
        [
            "Longitude": 50.894954,
            "Latitude": 4.341551,
            "Image": "Atomium.jpg",
            "Pays": "Belgique",
            "Site": "https://atomium.be/home/cover",
            "Desc": ""
        ],
        "Acropole":
        [
            "Longitude": 37.971538,
            "Latitude": 23.725751,
            "Image": "Acropole.jpg",
            "Pays": "Grèce",
            "Site": "http://monumentsathenes.com/acropole",
            "Desc": ""
        ]
    ] as [String : Any]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

