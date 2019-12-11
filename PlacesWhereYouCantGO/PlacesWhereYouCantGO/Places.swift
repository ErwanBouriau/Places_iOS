//
//  Places.swift
//  PlacesWhereYouCantGO
//
//  Created by Remy Jacquet on 09/12/2019.
//  Copyright © 2019 Erwan Bouriau. All rights reserved.
//

import Foundation

public struct Place {
    let longitude: float_t
    let latitude: float_t
    let title: String
    let image: String
    let pays: String
    let site: String
    let desc: String
}

//Classe correspondant à notre API (créée à la main)
public class PlacesApi {
    
    public func getLieux() -> [Place] {
        return lieux
    }
    
    let lieux =  [
        Place(
            longitude: 48.858472,
            latitude: 2.294496,
            title: "Tour Eiffel",
            image: "Tour-Eiffel.jpg",
            pays: "France",
            site: "https://www.toureiffel.paris/fr",
            desc: "La tour Eiffel est une tour de fer puddlée de 324 mètres de hauteur (avec antennes) située à Paris, à l’extrémité nord-ouest du parc du Champ-de-Mars en bordure de la Seine dans le 7e arrondissement. Construite par Gustave Eiffel et ses collaborateurs pour l’Exposition universelle de Paris de 1889, et initialement nommée « tour de 300 mètres », ce monument est devenu le symbole de la capitale française, et un site touristique de premier plan : il s’agit du troisième site culturel français payant le plus visité en 2015, avec 6,9 millions de visiteurs et le monument payant le plus visité au monde."
        ),
        Place(
            longitude: 43.723130,
            latitude: 10.396618,
            title: "Tour de Pise",
            image: "Tour-de-pise.jpeg",
            pays: "Italie",
            site: "http://www.torrepisa.com/torre-di-pisa/",
            desc: "La tour de Pise (torre di Pisa en italien) est le campanile de la cathédrale Notre-Dame de l’Assomption de Pise, en Toscane (Italie). Elle est située à proximité du chevet de la cathédrale et fait partie des monuments de la piazza dei Miracoli (la « place des Miracles »), inscrit au patrimoine mondial de l'UNESCO. Sa construction débuta en 1173. Mondialement connue, elle est un des symboles de l’Italie et l’emblème de la ville de Pise. Outre le fait qu’elle soit considérée comme un chef-d’œuvre de l’art roman toscan en marbre, sa célébrité vient notamment de son inclinaison caractéristique (qui est actuellement d’un angle de 3° 59′ vers le sud), apparue très rapidement pendant sa construction, du fait qu’elle ait été édifiée sur une plaine alluviale. Ce défaut serait dû soit à un défaut de fondation, soit à un affaissement de terrain dû à une roche : la marne. "
        ),
        Place(
            longitude: 45.185203,
            latitude: 5.735433,
            title: "Tour Perret",
            image: "Tour-Perret.jpg",
            pays: "France",
            site: "https://www.grenoble-tourisme.com/fr/catalogue/activite/tour-perret-35439/",
            desc: "La tour Perret est une tour d'observation située à Grenoble dans le parc Paul-Mistral. Édifice emblématique de la ville, c'est aussi la première tour en béton armé construite au monde. Elle a été classée au titre des monuments historiques en 1998. C'est également le seul vestige restant de l'exposition internationale de la houille blanche et du tourisme. Elle a été construite par l'architecte et entrepreneur Auguste Perret en 1924 à l'occasion de la tenue en 1925 de l'exposition internationale de la houille blanche et du tourisme sur la production, le transport et la distribution de l'énergie électrique, et le tourisme, seconde source d'activité économique dans les Alpes au début du siècle."
        ),
        Place(
            longitude: 51.500916,
            latitude: -0.124690,
            title: "Big Ben",
            image: "Big-Ben.jpg",
            pays: "Angleterre",
            site: "http://monumentsdelondres.com/big-ben",
            desc: "Big Ben est le surnom de la grande cloche de 13,5 tonnes se trouvant au sommet de la tour Élisabeth (Elizabeth Tower), la tour horloge du Palais de Westminster, qui est le siège du parlement britannique (Houses of Parliament), à Londres. La tour a été renommée à l'occasion du jubilé de diamant d'Élisabeth II en 2012. Auparavant, elle était simplement appelée tour de l'Horloge (Clock Tower). Par métonymie, le nom de la cloche est aussi communément employé pour désigner l'horloge dans son ensemble et la tour qui abrite le tout. Il s'agit d'un symbole de la ville de Londres."
        ),
        Place(
            longitude: 29.977594,
            latitude: 31.132538,
            title: "Pyramide de Gizeh",
            image: "Pyramide-de-Gizeh.jpg",
            pays: "Egypte",
            site: "https://www.passion-egyptienne.fr/Gizeh%20site.htm",
            desc: "Les trois plus grandes et plus célèbres des pyramides d'Égypte, celles de Khéops, Khéphren et Mykérinos, se trouvent sur la nécropole de Gizeh. Le site comprend également quelques pyramides plus petites comme les « pyramides des reines » et la pyramide de Khentkaous Ire. La pyramide de Khéops ou grande pyramide de Gizeh est un monument construit par les Égyptiens de l'Antiquité, formant une pyramide à base carrée. Tombeau présumé du pharaon Khéops, elle fut édifiée il y a plus de 4 500 ans, sous la IVe dynastie, au centre du complexe funéraire de Khéops. Elle est la plus grande des pyramides de Gizeh. Elle était considérée dans l'Antiquité comme la première des Sept Merveilles du monde. Durant des millénaires, elle fut la construction humaine de tous les records : la plus haute, la plus volumineuse et la plus massive. Ce monument phare de l'Égypte antique est depuis plus de 4 500 ans scruté et étudié sans relâche."
        ),
        Place(
            longitude: 40.689453,
            latitude: -74.044157,
            title: "Statue de la Liberté",
            image: "Statue-de-la-liberte.jpg",
            pays: "Etats-Unis",
            site: "https://www.nps.gov/stli/index.htm",
            desc: "La Liberté éclairant le monde, (Liberty Enlightening the World), ou Liberté, plus connue sous le nom de statue de la Liberté (Statue of Liberty), est l'un des monuments les plus célèbres des États-Unis. Cette statue monumentale est située à New York, sur l'île Liberty Island, au sud de Manhattan, à l'embouchure de l'Hudson et à proximité d'Ellis Island. Pesant 204 tonnes et mesurant 92,9 mètres, elle fut construite en France et offerte par le peuple français, en signe d'amitié entre les deux nations, pour célébrer le centenaire de la Déclaration d'indépendance américaine."
        ),
        Place(
            longitude: -33.856562,
            latitude: 151.215565,
            title: "Opéra de Sydney",
            image: "Opera-sydney.jpg",
            pays: "Australie",
            site:  "https://www.sydneyoperahouse.com/",
            desc: "L’opéra de Sydney (en anglais : Sydney Opera House), à Sydney (Nouvelle-Galles du Sud, Australie), est l'un des plus célèbres bâtiments du XXe siècle et un haut-lieu de représentation des arts notamment lyriques. Son architecture originale, qui ressemble à un voilier pour les uns, ou à un coquillage pour les autres, a été imaginée par le Danois Jørn Utzon. Situé dans le port de Sydney, à Bennelong Point, il est entouré d'un parc boisé au sud et est voisin du célèbre pont Harbour Bridge d'une seule arche. Le paysage qui en résulte est devenu un symbole de l'Australie et de Sydney particulièrement. L'opéra est aujourd'hui une attraction touristique majeure de la ville bien que la plupart des visiteurs n'aient pas l'occasion d'assister à une représentation."
        ),
        Place(
            longitude: 40.433686,
            latitude: 116.573375,
            title: "Grande muraille de Chine",
            image: "Grande-muraille-de-Chine.jpg",
            pays: "Chine",
            site: "https://www.lamurailledechine.net/",
            desc: "La Grande Muraille aussi appelé « Les Grandes Murailles » est un ensemble de fortifications militaires chinoises construites, détruites et reconstruites en plusieurs fois et à plusieurs endroits entre le IIIe siècle av. J.-C. et le XVIIe siècle pour marquer et défendre la frontière nord de la Chine. C'est la structure architecturale la plus importante jamais construite par l’Homme à la fois en longueur, en surface et en masse. Populairement, on désigne sous le nom de « Grande Muraille » la partie construite durant la dynastie Ming qui part de Shanhaiguan sur le territoire de la ville de Qinhuangdao dans la province du Hebei à l’est pour arriver à Jiayuguan dans la province du Gansu à l’ouest. Selon un rapport de 1990, la longueur totale des murs serait de 6 259,6 km2. En raison de sa longueur, elle est surnommée en chinois « La longue muraille de dix mille li », le li étant une ancienne unité de longueur chinoise et dix mille symbolisant l’infini en chinois."
        ),
        Place(
            longitude: -22.951738,
            latitude: -43.210029,
            title: "Christ rédempteur",
            image: "Christ-redempteur.jpg",
            pays: "Brésil",
            site: "https://www.merveilles-du-monde.com/Christ-redempteur/",
            desc: "Le Christ Rédempteur (en portugais : O Cristo Redentor) est une grande statue du Christ dominant la ville de Rio de Janeiro au Brésil, du haut du mont du Corcovado. Elle est devenue au fil des ans un des emblèmes reconnus internationalement de la ville, au même titre que le Pain de Sucre, la plage de Copacabana ou le carnaval de Rio. Elle fut conçue par l'ingénieur brésilien Heitor da Silva Costa et réalisée par le sculpteur français Paul Landowski et le sculpteur roumain Gheorghe Leonida (pour la tête du Christ)1 et érigée en collaboration avec l'ingénieur français Albert Caquot."
        ),
        Place(
            longitude: 27.175412,
            latitude: 78.042700,
            title: "Taj Mahal",
            image: "Taj-Mahal.jpeg",
            pays: "Inde",
            site: "https://www.tajmahal.gov.in/",
            desc: "Le Taj Mahal qui signifie « le palais de la couronne », est situé à Agra, au bord de la rivière Yamuna, dans l'État de l'Uttar Pradesh, en Inde. C'est un mausolée de marbre blanc construit par l'empereur moghol musulman Shâh Jahân en mémoire de son épouse Arjumand Bânu Begam, aussi connue sous le nom de Mumtaz Mahal, qui signifie en persan « la lumière du palais ». Elle meurt le 17 juin 1631 en donnant naissance à leur quatorzième enfant alors qu'elle accompagnait son mari pendant une campagne militaire. Elle trouve une première sépulture sur place dans le jardin Zainabad à Burhanpur. La construction du mausolée commence en 1631 et est achevée dans sa plus grande partie en 1648. Son époux, mort le 31 janvier 1666, est inhumé auprès d'elle."
        ),
        Place(
            longitude: 48.636430,
            latitude: -1.509438,
            title: "Mont Saint-Michel",
            image: "Mont-Saint-Michel.jpg",
            pays: "France",
            site: "https://www.ot-montsaintmichel.com/index.htm",
            desc: "Le Mont-Saint-Michel est une commune française située dans le département de la Manche en Normandie. Elle tire son nom de l'îlot rocheux consacré à saint Michel où s’élève aujourd’hui l’abbaye du Mont-Saint-Michel. L’architecture du Mont-Saint-Michel et sa baie en font le site touristique le plus fréquenté de Normandie1 et l'un des dix plus fréquentés en France— premier site après ceux d'Île-de-France — avec près de deux millions et demi de visiteurs chaque année. Une statue de saint Michel placée au sommet de l’église abbatiale culmine à 157,10 mètres au-dessus du rivage. Élément majeur, l'abbaye et ses dépendances sont classées au titre des monuments historiques par la liste de 1862."
        ),
        Place(
            longitude: 55.752060,
            latitude: 37.617515,
            title: "Kremlin",
            image: "Kremlin.jpg",
            pays: "Russie",
            site: "https://www.kreml.ru/en-Us/museums-moscow-kremlin/",
            desc: "Le kremlin de Moscou, souvent appelé simplement le Kremlin, est une forteresse située au cœur de Moscou, capitale de la Russie. Après avoir été la résidence officielle des tsars, puis des dirigeants de l'Union soviétique, il devient le centre politique de la fédération de Russie, puisqu'il est aujourd'hui la résidence officielle et le lieu de travail du président de la Fédération. Cet ensemble prestigieux est le plus célèbre kremlin, qui désigne une forteresse urbaine. La forme est à peu près triangulaire. Il rassemble à l’intérieur de son enceinte extérieure, dominant la place Rouge et la Moskova, des palais et des cathédrales dont le Grand Palais du Kremlin."
        ),
        Place(
            longitude: 41.403693,
            latitude: 2.174376,
            title: "Sagrada Familia",
            image: "Sagrada-Familia.jpg",
            pays: "Espagne",
            site: "https://sagradafamilia.org/en/home",
            desc: "La Sagrada Família, Temple Expiatori de la Sagrada Família de son nom complet en catalan, ou Templo Expiatorio de la Sagrada Familia en espagnol est une basilique de Barcelone dont la construction a commencé en 1882. C’est l’un des exemples les plus connus du modernisme catalan et un monument emblématique de la ville. Œuvre inachevée de l'architecte Antoni Gaudi, la Sagrada Família est située dans le quartier du même nom (district de l’Eixample). L’architecte a conçu une minutieuse symbologie qui fait de cet édifice un poème mystique. Il a également fait preuve d'une grande audace de construction formelle, telle que la manière de concevoir la structure d’arc en chaînette ou la combinaison des traitements sculpturaux naturalistes et de l’abstraction des tours."
        ),
        Place(
            longitude: 52.516327,
            latitude: 13.377693,
            title: "Porte de Brandebourg",
            image: "Porte-de-Brandebourg.jpg",
            pays: "Allemagne",
            site: "https://www.berlin.de/fr/monuments/3560266-3104069-porte-de-brandebourg.fr.html",
            desc: "La porte de Brandebourg, qui se situe à l'entrée de l'ancien Berlin, est un symbole de la ville, mais fut pendant presque trois décennies le symbole de la division de la ville : le monument faisait partie intégrante du mur de Berlin. Elle fut érigée par Carl Gotthard Langhans (1732-1808) pour le roi de Prusse Frédéric-Guillaume II (1744-1797). Elle fut construite de 1788 à 1791 dans le style néoclassique, en s'inspirant du Propylée de l'Acropole d'Athènes."
        ),
        Place(
            longitude: 13.751998,
            latitude: 100.493273,
            title: "Temple du Buddha",
            image: "Temple-du-buddha.jpg",
            pays: "Thaïlande",
            site: "https://vivre-en-thailande.com/wat-phra-kaeo-temple-bouddha-demeraude/3561/",
            desc: "Le temple du Bouddha d'émeraude est le principal complexe religieux de Thaïlande. Il est aussi appelé, dans la langue locale, Wat Phra Kaeo. Il s'agit d'un ensemble de plusieurs bâtiments dont le principal, l'Usoboth, est un exemple de beauté. C'est lui qui abrite le très fameux Bouddha d'émeraude, une statue dont la sacralité confère à la divinité. Elle a la particularité d'être l'idole la plus vénérée du pays. Elle concentre à elle seule toute la ferveur du peuple, c'est dire son importance."
        ),
        Place(
            longitude: -27.110854,
            latitude: -109.351277,
            title: "Statue de l'Île de Pâques",
            image: "Statue-ile-de-pâques.jpg",
            pays: "Chili",
            site: "https://www.voyage-au-chili.com/chili_iledepaques.php",
            desc: "Les moaï, ou moai, sont les statues monumentales de l’île de Pâques, datées chronologiquement des XIIIe et XVe siècles. La majorité de ces monolithes sont sculptés dans du tuf issu principalement de la carrière du volcan Rano Raraku. Quelques-uns ont cependant été sculptés dans d’autres roches volcaniques de l’île. Leur taille varie de 2,5 à 9 mètres. Selon Jo Anne Van Tilburg, le nombre de moaï sur l’ensemble de l’île s’élève à 887 avec un poids moyen de 13,78 tonnes, mais les plus grosses atteignent 80 tonnes."
        ),
        Place(
            longitude: 43.093335,
            latitude: -79.073071,
            title: "Chute du Niagara",
            image: "Chute-du-Niagara.jpg",
            pays: "Etats-Unis",
            site: "https://fr.niagarafallstourism.com/",
            desc: "Les chutes du Niagara sont un ensemble de trois chutes d’eau situées sur la rivière Niagara qui relie le lac Érié au lac Ontario, dans l’est de l’Amérique du Nord, à la frontière entre le Canada et les États-Unis. Bien qu’elles ne soient pas particulièrement hautes, les chutes du Niagara sont très larges. Avec un débit de plus de 2 800 m3/s, elles sont les chutes les plus puissantes d’Amérique du Nord et parmi les plus connues à travers le monde. "
        ),
        Place(
            longitude: 41.008625,
            latitude: 28.980152,
            title: "Sainte-Sophie",
            image: "Sainte-Sophie.jpg",
            pays: "Turquie",
            site: "http://www.istanbul-city.fr/guide-istanbul/sainte-sophie-ayasofya/",
            desc: "La basilique Sainte-Sophie est une grande basilique chrétienne de Constantinople construite dans un premier temps au IVe siècle, puis reconstruite bien plus grande au VIe siècle, sous l'empereur byzantin Justinien, où elle acquit sa forme actuelle. Ayant remplacé Saint-Irène comme siège du patriarche de Constantinople, elle devint mosquée au XVe siècle sous Mehmet II. Elle est située sur la péninsule historique d'Istanbul. Depuis 1934, elle n'est plus un lieu de culte mais un musée. Son esplanade est à la mesure de la gloire de Byzance. Souvent surnommée la Grande Église, la basilique est dédiée au Christ, « sagesse de Dieu », selon la tradition théologique chrétienne."
        ),
        Place(
            longitude: 20.684292,
            latitude: -88.567783,
            title: "Chichen Itza",
            image: "Chichen-Itza.jpg",
            pays: "Mexique",
            site: "http://mundomaya.travel/fr/arqueologia/top-10/item/chichen-itza.html",
            desc: "Chichén Itzá est une ancienne ville maya située entre Valladolid et Mérida dans la péninsule du Yucatán, au Mexique. Chichén Itzá fut probablement, au Xe siècle, le principal centre religieux du Yucatán ; il reste aujourd’hui l’un des sites archéologiques les plus importants et les plus visités de la région. Le site a été classé au patrimoine mondial de l'UNESCO en 1988. La présence d'une cité maya à cet endroit est due à la présence d'au moins cinq puits naturels qui constituaient un trésor inestimable dans cette région dépourvue d'eau. Le site doit d'ailleurs son nom à cette source d'eau souterraine : Chi signifie « bouche » et Chén, « puits »."
        ),
        Place(
            longitude: 45.198889,
            latitude: 5.725335,
            title: "Fort de la Bastille",
            image: "Fort-de-la-Bastille.jpg",
            pays: "France",
            site: "https://bastille-grenoble.fr/",
            desc: "La Bastille est un fort militaire surplombant de 264 mètres la ville de Grenoble. Édifié durant la première partie du XIXe siècle et culminant à 476 mètres d'altitude sur les derniers contreforts du massif de la Chartreuse, il a remplacé une première fortification construite à la fin du XVIe siècle. Accessible en téléphérique, à pied ou en voiture, la Bastille, qui donne aussi son nom à la colline, est le premier site touristique de l'agglomération grenobloise avec 600 000 visiteurs par an. C'est la raison qui pousse la métropole de Grenoble disposant de la compétence tourisme, à installer sur le toit de la gare supérieure du téléphérique, une webcam offrant toutes les vingt minutes aux internautes une photographie panoramique de 220° de la ville."
        ),
        Place(
            longitude: 50.894954,
            latitude: 4.341551,
            title: "Atomium",
            image: "Atomium.jpg",
            pays: "Belgique",
            site: "https://atomium.be/home/cover",
            desc: "L’Atomium est un monument de Bruxelles, en Belgique, construit à l'occasion de l'Exposition universelle de 1958 et représentant la maille conventionnelle du cristal de fer (structure cubique centrée) agrandie 165 milliards de fois. Il est situé à Laeken sur le plateau du Heysel où eut lieu cette exposition. Il est devenu, au même titre que le Manneken Pis et la Grand-Place, un symbole de la capitale de la Belgique. Symboliquement, l’Atomium incarne l’audace d’une époque qui a voulu confronter le destin de l’Humanité avec les découvertes scientifiques. "
        ),
        Place(
            longitude: 37.971538,
            latitude: 23.725751,
            title: "Acropole",
            image: "Acropole.jpg",
            pays: "Grèce",
            site: "http://monumentsathenes.com/acropole",
            desc: "L’acropole est un terme peu usité qui désigne initialement une citadelle construite sur la partie la plus élevée et la mieux défendue d'une cité de la Grèce antique, servant de refuge ultime aux populations lors des attaques. Il vient de l’adjectif ákros « élevé » et du pólis « cité », signifiant ainsi « point le plus haut de la ville ». L'acropole contient aussi les temples dédiés aux dieux principaux de la ville. Par extension, ce terme est désormais employé pour désigner la partie haute d'une ville, sans qu'il y ait nécessairement un lien avec des fortifications ou des sanctuaires. "
        ),
    ]
}
