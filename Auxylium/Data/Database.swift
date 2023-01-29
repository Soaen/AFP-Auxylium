//
//  Database.swift
//  Auxylium
//
//  Created by Apprenant 70 on 07/12/2021.
//

import Foundation


// Langues


struct Langue: Identifiable, Hashable {
    let id = UUID()
    let lang: String
    let flag: String
    let ID: Int
}

let languages = [
    Langue(lang: "Français", flag:  "🇫🇷", ID: 0),
    Langue(lang: "English", flag: "🇬🇧", ID: 1),
    Langue(lang: "Español", flag: "🇪🇸", ID: 2),
    Langue(lang: "Italiano", flag: "🇮🇹", ID: 3),
    Langue(lang: "中国人", flag: "🇨🇳", ID: 4)
]

let languages2 = ["🇫🇷 French","🇬🇧 English","🇪🇸 Español", "🇮🇹 Italiano", "🇨🇳 中国人"]


// Calendrier


struct CalendarList: Identifiable {
    let id = UUID()
    let date: String  // Date du RDV
    let type: String  // Type du RDV (ex: Demande de logement, etc)
    let desc: String  // Description du RDV
    let address: String  // Adresse du RDV
}

var Calendars = [
    CalendarList(date: "18 Décembre 2021", type: "Médecin", desc: "Rendez-vous à Lille avec Dr. Depeau", address: "63 Rue de la soie, 59000 Lille"),
    CalendarList(date: "13 Mars 2022", type: "Demande de logement", desc: "Rendez-vous à Lille avec Mr. Clement.", address: "8 rue de la faune perdue, 59000 Lille"),
    CalendarList(date: "27 Novembre 2022", type: "CAF", desc: "Rendez-vous à Lille avec Mme. Dubourg.", address: "264 allée des papillons, 59000 Lille"),
    CalendarList(date: "28 Décembre 2022", type: "Préfecture", desc: "Rendez-vous a la Préfecture de Lille avec Mr. Ferre", address: "18 Avenue de la colombe, 59000 Lille"),
    CalendarList(date: "17 Mars 2023", type: "CPAM", desc: "Rendez-vous à Haubourdin avec Mme. Pasteur", address: "73 rue des coeurs joyeux, 59000 Lille"),
    CalendarList(date: "27 Novembre 2023", type: "CCAS", desc: "Rendez-vous à Loos avec Mme. Moulin", address: "50 Rue de Tête de Cheval, 59120 Loos")
]

// Contacts

struct Contact: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let ville: String
    let age: Int
    let email: String
    let profession: String
}

var contacts = [
    Contact(name: "Anna Torfs", photo: "Anna_Torfs",ville: "Lille", age: 19, email: "anna.torfs@gmail.com", profession: "Étudiante"),
    Contact(name: "Ayoub Paypal", photo: "Ayoub_Paypal", ville: "Lille", age: 33, email: "ayoub@paypal.me", profession: "Humoriste"),
    Contact(name: "Dylan Calvez", photo: "Dylan_Calvez", ville: "Lille", age: 26, email: "d.calvez@gmail.com", profession: "Étudiant"),
    Contact(name: "Jean Vales", photo: "Jean_Vales",ville: "Tourcoing", age: 36, email: "jean.vales@orange.fr", profession: "Référent Logement"),
    Contact(name: "Juan Millo", photo: "Juan_Millo",ville: "Lille", age: 28, email: "millo.juan@hotmail.com", profession: "Professeur de français"),
    Contact(name: "Julio Rycke", photo: "Julio_Rycke",ville: "Tourcoing", age: 45, email: "julio.rck@gmail.com", profession: "Traducteur"),
    Contact(name: "Léa Rey", photo: "Lea_Rey", ville: "Mouvaux", age: 33, email: "learey@gmail.com", profession: "Référente CAF"),
    Contact(name: "Lina Jouan", photo: "Lina_Jouan", ville: "Hazebrouck", age: 21, email: "lina.j@gmail.com", profession: "Étudiante"),
    Contact(name: "Marie Clapaz", photo: "Marie_Clapaz", ville: "Cambrai", age: 26, email: "marie.clp@gmail.com", profession: "Juriste"),
    Contact(name: "Romane Tissot", photo: "Romane_Tossot", ville: "Lille", age: 24, email: "romane.tissot@gmail.com", profession: "Étudiante"),
    Contact(name: "Seng Psycho", photo: "Seng_Psycho", ville: "Lille", age: 32, email: "seng.psychologue@gmail.com", profession: "Psychologue")
]

// Profil

struct Profile: Identifiable {
    let id = UUID()
    let title: String
    let systemImage: String
}

var Profils = [
    Profile(title: "Informations personnelles", systemImage: "person.circle" ),
    Profile(title: "Documents", systemImage: "folder"),
    Profile(title: "Démarches", systemImage: "doc.on.doc"),
    ]

struct User: Identifiable {
    let id = UUID()
    let name: String
    let age: Int
    let statut: String
    let nationalité: String
    let phone: Int
    let email: String
    
}

var users = [
    User(name: "Clara Pichat", age: 22 , statut: "Etudiante", nationalité:"Polonaise", phone: 0626729322, email: "Clara.Pichat@gmail.com")
]

// Settings/Parameter

struct Setting : Identifiable {
    let id = UUID()
    let title: String
    let systemImage: String
}

var settings = [
   Setting(title: "À propos", systemImage: "info.circle" ),
   Setting(title: "Notifications", systemImage: "bell"),
   Setting(title: "Sécurité", systemImage: "checkmark.shield"),
   Setting(title: "Aide", systemImage: "lifepreserver"),
   Setting(title: "Langue", systemImage: "flag")
]

// News

struct Info : Identifiable {
    let id = UUID()
    let title: String
    let systemImage: String
    let detailText: String
    let detailImage: String
    let type: Int
    let url: String
}

var Infos = [
    Info(title: "Actualités", systemImage: "newspaper", detailText: "Lors de son débat avec Jean-Luc Mélenchon sur BFMTV ce 24 septembre, Éric Zemmour a repris son chiffre de «deux millions d'étrangers» accueillis sous le quinquennat Macron. Déjà, le 15 septembre, le chroniqueur, à qui l'on prête depuis plusieurs mois une ambition présidentielle, a assuré au micro de BFMTV et de RMC : «Au bout de cinq ans de mandat d'Emmanuel Macron, on aura deux millions d'étrangers de plus, venus pour la plupart du Maghreb et d'Afrique noire».", detailImage: "DetailNews5", type: 0, url: ""),
    Info(title: "Accès au logement", systemImage: "newspaper", detailText: "Le logement conditionne aujourd’hui, pour de nombreux jeunes, la capacité d’accès à la formation et à l’emploi. Cet état de fait est particulièrement visible sur les populations les plus précaires faisant ainsi de l’accès au logement autonome une réelle problématique de société sur laquelle nous devons collectivement agir. A l’heure des 25% de taux de chômage chez les jeunes et d’un taux d’effort de 47% en moyenne chez les étudiants il est urgent d’apporter des réponses.", detailImage: "DetailNews1", type: 0, url: ""),
    Info(title: "Connaitre ses droits", systemImage: "newspaper", detailText: "Le droit des étrangers inclut également, de façon large, les problématiques liées à l’accès à la nationalité française, au statut personnel ou à l’état civil des étrangers. Le droit des étrangers est également un droit largement jurisprudentiel. Les juridictions, qu’elles soient judiciaires, administratives voire européennes, connaissent en effet de très importants contentieux à travers lesquels elles dégagent de nombreuses règles d’interprétation, justifiant parfois des ajustements de la législation.", detailImage: "DetailNews2", type: 0, url: ""),
    Info(title: "Apprendre le français", systemImage: "newspaper", detailText: "Plus de 100 000 personnes viennent chaque année en France suivre des cours de français. Une partie de ce public est constitué d’étudiants étrangers souhaitant étudier dans un établissement d’enseignement supérieur français. Il importe que l’offre de cours réponde à des critères de qualité. Le label officiel « Qualité français langue étrangère », qui regroupe une centaine de centres de langue, a été créé à cette fin en 2007. Le délégué général à la langue française et aux langues de France en préside le conseil d’orientation.\nL’apprentissage du français constitue une priorité des pouvoirs publics pour les étrangers non ressortissants de l’Union européenne, la loi exigeant un certain niveau de maîtrise du français aux différentes étapes du parcours d’intégration républicaine qui leur est proposé, qu’ils soient primo-arrivants ou qu’ils souhaitent accéder à la nationalité française.", detailImage: "DetailNews4", type: 0, url: ""),
   Info(title: "Aide au logement", systemImage: "newspaper", detailText: "L’aide personnalisée au logement (APL) et l’allocation de logement sociale (ALS) sont des aides financières destinées à réduire le montant du loyer. Elles sont versées par les différentes caisses d’allocations familiales (Caf) au locataire ou au propriétaire, et leur montant varie en fonction de la situation du foyer. Elles s’adressent aux personnes qui ont des ressources en-dessous d’un plafond prédéfini, sans limite d’âge. Les étudiants étrangers sont parfaitement éligibles, la seule condition est qu’ils doivent pouvoir fournir un titre de séjour en cours de validité pour pouvoir espérer en bénéficier. Ce dernier doit être réactualisé auprès de la Caf à chaque renouvellement afin d’éviter de voir ses droits suspendus. Les étudiants internationaux ont accès aux mêmes avantages que les Français, dès lors qu’ils ont leur nom apposé sur le bail d’un logement qui répond aux critères de décence, est conventionné, ou qu’il s’agit d’une sous-location déclarée. 10 décembre 2021 ", detailImage: "DetailNews3", type: 0, url: ""),
   Info(title: "Étudiants étranger", systemImage: "newspaper", detailText: "C'est une page qui se tourne et autant d'inquiétudes qui se dissipent pour les universités et les grandes écoles. En 2020, la pandémie avait entraîné une forte baisse du nombre d'étudiants étrangers . Selon les chiffres du ministère de l'Intérieur, arrêtés fin octobre, la France a octroyé cette année 79.000 visas à des étudiants étrangers, un chiffre en hausse de 3 % par rapport à 2019. Mais la crise sanitaire a modifié le paysage. « Les étudiants ne viennent pas forcément des mêmes zones, car l'Asie est encore largement fermée », indique Béatrice Khaiat, directrice générale de Campus France, dans un entretien aux « Echos ». Selon l'agence de promotion à l'étranger de l'enseignement supérieur, le nombre d'étudiants en provenance de la zone Asie-Pacifique a chuté de 35 % par rapport à 2019. L'Amérique latine et l'Afrique non francophone sont, elles aussi, en baisse. A l'inverse, la France accueille davantage d'étudiants du Maghreb (+16 % par rapport à 2019), d'Afrique francophone (+17 %), du Liban (+50 %), des Etats-Unis (+43 %) ou de Turquie (+30 %).", detailImage: "DetailNews6", type: 0, url: ""),
    Info(title: "Caf", systemImage: "newspaper", detailText: "", detailImage: "", type: 1, url: "https://www.caf.fr/sites/default/files/cnaf/Documents/Dser/PSF/134/RPSF134_1erTr2020_TatianaEremenko.pdf"),
    Info(title: "Service Public", systemImage: "newspaper", detailText: "", detailImage: "", type: 1, url: "https://www.service-public.fr/particuliers/vosdroits/F33314"),
    Info(title: "La Cimade", systemImage: "newspaper", detailText: "", detailImage: "", type: 1, url: "https://www.lacimade.org/regions/nord-picardie/"),
]

// Messages

struct Message: Identifiable, Hashable{
    let id = UUID()
    let systemImage : String
    let name: String
    let photo: String
    var chatPreview : String
}

var messages = [
    Message(systemImage: "person.circle", name: "Marie", photo: "Marie_Clapaz", chatPreview: "Je prend mon agenda..."),
    Message(systemImage: "person.circle", name: "Jean", photo: "Jean_Vales", chatPreview: "Bonjour, avez vous..."),
    Message(systemImage: "person.circle", name: "Juan", photo: "Juan_Millo", chatPreview: "Bonjour, je voudrais avoir..."),
    Message(systemImage: "person.circle", name: "Anna", photo: "Anna_Torfs",chatPreview: "Bonsoir, avez vous été ..."),
    Message(systemImage: "person.circle", name: "Julio", photo: "Julio_Rycke", chatPreview: "Bonjour, est ce bien ...")
]

struct TexteBienvenue {
    let monTitre1: String
    let monTexte1: String
    let monTitre2: String
    let monTexte2: String
    let monTitre3: String
    let monTexte3: String
}

var textesDeBienvenue = [
    TexteBienvenue(
        monTitre1:"Bienvenue",
        monTexte1: "Pour vous faire mieux connaitre d’où vient l’erreur de ceux qui blâment la volupté, et qui louent en quelque sorte la douleur, je vais entrer dans une explication plus étendue, et vous faire voir tout ce qui a été dit là-dessus par l’inventeur de la vérité, et, pour ainsi dire, par l’architecte de la vie heureuse.",
        monTitre2: "Qui sommes nous ?",
        monTexte2: "Personne [dit Épicure] ne craint ni ne fuit la volupté en tant que volupté, mais en tant qu’elle attire de grandes douleurs à ceux qui ne savent pas en faire un usage modéré et raisonnable ; et personne n’aime ni ne recherche la douleur comme douleur, mais parce qu’il arrive quelquefois que, par le travail et par la peine, on parvienne à jouir d’une grande volupté. En effet, pour descendre jusqu’aux petites choses, qui de vous ne fait point quelque exercice pénible pour en retirer quelque sorte d’utilité ? Et qui pourrait justement blâmer, ou celui qui rechercherait une volupté qui ne pourrait être suivie de rien de fâcheux, ou celui qui éviterait une douleur dont il ne pourrait espérer aucun plaisir.",
        monTitre3: "Qu'allons nous faire pour vous ?",
        monTexte3: """
           Au contraire, nous blâmons avec raison et nous croyons dignes de mépris et de haine ceux qui, se laissant corrompre par les attraits d’une volupté présente, ne prévoient pas à combien de maux et de chagrins une passion aveugle les peut exposer.

           J’en dis autant de ceux qui, par mollesse d’esprit, c’est-à-dire par la crainte de la peine et de la douleur, manquent aux devoirs de la vie. Et il est très facile de rendre raison de ce que j’avance. Car, lorsque nous sommes tout à fait libres, et que rien ne nous empêche de faire ce qui peut nous donner le plus de plaisir, nous pouvons nous livrer entièrement à la volupté et chasser toute sorte de douleur ; mais, dans les temps destinés aux devoirs de la société ou à la nécessité des affaires, souvent il faut faire divorce avec la volupté, et ne se point refuser à la peine.

           La règle que suit en cela un homme sage, c’est de renoncer à de légères voluptés pour en avoir de plus grandes, et de savoir supporter des douleurs légères pour en éviter de plus fâcheuses.
           """
        ),
    TexteBienvenue(
        monTitre1:"Welcome",
        monTexte1: "To make you better understand where the error comes from those who blame pleasure, and who in a way praise pain, I am going to go into a more extensive explanation, and show you all that has been said about it. by the inventor of truth, and, so to speak, by the architect of the happy life.",
        monTitre2: "Who are we ?",
        monTexte2: "No one [says Epicurus] fears or shies away from pleasure as pleasure, but as it attracts great pain to those who do not know how to make moderate and reasonable use of it; and no one loves or seeks pain as pain, but because it sometimes happens that, through work and pain, one manages to enjoy great pleasure. Indeed, to get down to the little things, which of you does not do some strenuous exercise to gain some sort of usefulness? And who could blame, or the one who would seek a pleasure that could not be followed by anything untoward, or the one who would avoid a pain from which he could not hope for any pleasure.",
        monTitre3: "What are we going to do for you ?",
        monTexte3: """
             On the contrary, we rightly blame and believe worthy of contempt and hatred those who, allowing themselves to be corrupted by the attractions of a present pleasure, do not foresee to how many evils and sorrows a blind passion can expose them.
             
             I say the same of those who, by slackness of mind, that is, by fear of grief and pain, fail in the duties of life. And it's very easy to see what I'm saying. Because, when we are completely free, and that nothing prevents us from doing what can give us the most pleasure, we can give ourselves entirely to the pleasure and chase all kind of pain; but, in times destined for the duties of society or the necessity of business, it is often necessary to make a divorce with pleasure, and not to refuse the penalty.
             
             The rule that a wise man follows in this is to give up slight pleasures in order to have greater ones, and to know how to endure slight pains in order to avoid more annoying ones.
             """
    ),
    TexteBienvenue(
        monTitre1:"Bienvenido",
        monTexte1: "Para que comprendas mejor de dónde viene el error de los que culpan al placer, y que de alguna manera elogian el dolor, voy a entrar en una explicación más extensa, y mostrarles todo lo dicho al respecto por el inventor de verdad, y, por así decirlo, por el arquitecto de la vida feliz.",
        monTitre2: "¿Quiénes somos?",
        monTexte2: "Nadie [dice Epicuro] teme ni rehuye el placer como placer, sino en la medida en que atrae un gran dolor a quienes no saben hacer un uso moderado y razonable de él; y nadie ama ni busca el dolor como dolor, sino porque a veces sucede que, a través del trabajo y el dolor, se logra gozar de un gran placer. ¿No algún ejercicio doloroso para derivar algún tipo de utilidad de ello? que no podría ser seguido por nada adverso, o el que evitaría un dolor del que no podría esperar ningún placer.",
        monTitre3: "¿Qué vamos a hacer por ti?",
        monTexte3: """
            Por el contrario, con razón culpamos y creemos dignos de desprecio y odio a quienes, dejándose corromper por los atractivos de un placer presente, no prevén cuántos males y dolores puede exponerlos una pasión ciega.

            Digo lo mismo de aquellos que, por descuido, es decir, por miedo a la pena y al dolor, fallan en los deberes de la vida. Y es muy fácil ver lo que estoy diciendo. Porque, cuando somos completamente libres, y nada nos impide hacer lo que nos puede dar más placer, podemos entregarnos por completo al placer y perseguir todo tipo de dolor; pero, en tiempos destinados a los deberes de la sociedad o la necesidad de los negocios, a menudo es necesario divorciarse con placer y no rechazar la pena.

            La regla que sigue un sabio en esto es renunciar a los placeres ligeros para tener placeres mayores, y saber soportar los dolores leves para evitar los más molestos.
            """
    ),
    TexteBienvenue(
        monTitre1:"Benvenuto",
        monTexte1: "Per farti capire meglio da dove viene l'errore di coloro che incolpano il piacere, e che in qualche modo lodano il dolore, mi accingo ad entrare in una spiegazione più ampia e mostrarti tutto ciò che è stato detto in proposito dall'inventore del verità, e, per così dire, dall'architetto della vita felice.",
        monTitre2: "Chi siamo?",
        monTexte2: "Nessuno [dice Epicuro] teme né rifugge il piacere come piacere, ma in quanto attrae grande dolore a coloro che non sanno farne un uso moderato e ragionevole; e nessuno ama né non cerca il dolore come dolore, ma perché a volte capita che, attraverso il lavoro e il dolore, si riesca a godere di un grande piacere. Non qualche esercizio doloroso per trarne una sorta di utilità? E chi potrebbe biasimare, o colui che cercherebbe un piacere che non potrebbe essere seguito da nulla di spiacevole, o colui che eviterà un dolore dal quale non potrebbe sperare in alcun piacere." ,
        monTitre3: "Cosa facciamo per te?",
        monTexte3: """
                   Al contrario, giustamente biasimiamo e riteniamo degni di disprezzo e di odio coloro che, lasciandosi corrompere dalle attrattive di un piacere presente, non prevedono a quanti mali e dolori una cieca passione può esporli.

                   Lo stesso dico di coloro che, per pigrizia d'animo, cioè per paura del dolore e del dolore, vengono meno ai doveri della vita. Ed è molto facile vedere quello che sto dicendo. Perché, quando siamo completamente liberi, e che nulla ci impedisce di fare ciò che può darci più piacere, possiamo dedicarci interamente al piacere e inseguire ogni tipo di dolore; ma, in tempi destinati ai doveri della società o alla necessità degli affari, è spesso necessario divorziare con piacere, e non rifiutare la pena.

                   La regola che segue in questo un uomo saggio è di rinunciare ai piaceri lievi per averne di più grandi e di saper sopportare lievi dolori per evitare quelli più fastidiosi.
             """
    ),
    TexteBienvenue(
        monTitre1: "歡迎",
        monTexte1: "為了讓你更好地理解錯誤來自於那些指責快樂的人，以及在某種程度上讚美痛苦的人，我將進行更廣泛的解釋，並向你展示真理，可以說，是幸福生活的締造者",
        monTitre2: "我們是誰",
        monTexte2: "沒有人[伊壁鳩魯說]害怕或迴避快樂作為快樂，但就它給那些不知道如何適度和合理使用它的人帶來巨大痛苦而言；沒有人喜歡也不不尋求痛苦作為痛苦，但因為有時會發生這樣的事情，通過工作和痛苦，一個人設法享受到極大的快樂。而不是一些痛苦的鍛煉來從中獲得某種效用？誰會責怪，或者會尋求快樂的人不會有任何不愉快的事情發生，或者會避免痛苦的人，他無法希望從中獲得任何樂趣",
        monTitre3: "我們要為你做什麼",
        monTexte3: """
                   相反，我們理所當然地責備並相信值得蔑視和仇恨的人，他們讓自己被眼前的快樂所吸引，卻沒有預見到盲目的激情會暴露多少邪惡和悲傷。

                   我對那些因懶惰，即因害怕悲傷和痛苦而未能履行生活職責的人也是如此。很容易明白我在說什麼。因為，當我們完全自由，沒有什麼可以阻止我們去做最能給我們帶來快樂的事情時，我們可以全身心地投入到快樂中去追逐各種痛苦；但是，在註定要履行社會職責或業務需要的時候，往往需要愉快地離婚，而不是拒絕懲罰。

                   智者所遵循的準則，就是捨棄小樂而得大樂，懂得忍受小苦，才能避免更大的煩惱
                   """
    ),
    TexteBienvenue(
        monTitre1:"Grata",
        monTexte1: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit.",
        monTitre2: "Qui sumus ?",
        monTexte2: "Ut velit mauris, egestas sed, gravida nec, ornare ut, mi. Aenean ut orci vel massa suscipit pulvinar. Nulla sollicitudin. Fusce varius, ligula non tempus aliquam, nunc turpis ullamcorper nibh, in tempus sapien eros vitae ligula. Pellentesque rhoncus nunc et augue. Integer id felis. Curabitur aliquet pellentesque diam. Integer quis metus vitae elit lobortis egestas. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi vel erat non mauris convallis vehicula. Nulla et sapien. Integer tortor tellus, aliquam faucibus, convallis id, congue eu, quam. Mauris ullamcorper felis vitae erat. Proin feugiat, augue non elementum posuere, metus purus iaculis lectus, et tristique ligula justo vitae magna.",
        monTitre3: "Qu'allons nous faire pour vous ?",
        monTexte3: """
           Aliquam convallis sollicitudin purus. Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo. Aliquam euismod libero eu enim. Nulla nec felis sed leo placerat imperdiet. Aenean suscipit nulla in justo. Suspendisse cursus rutrum augue. Nulla tincidunt tincidunt mi. Curabitur iaculis, lorem vel rhoncus faucibus, felis magna fermentum augue, et ultricies lacus lorem varius purus. Curabitur eu amet. »")
           """
    )
]
