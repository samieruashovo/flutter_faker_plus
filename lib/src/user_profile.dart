import 'utils/random_utils.dart';

class UserProfile {
  final String name;
  final String email;
  final String phoneNumber;
  final String address;
  final String dateOfBirth;
  final String gender;
  final String profilePictureUrl;
  final String bio;

  UserProfile({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.address,
    required this.dateOfBirth,
    required this.gender,
    required this.profilePictureUrl,
    required this.bio,
  });

  static final List<String> _firstNames = [
    'Aaron',
    'Abigail',
    'Adam',
    'Adrian',
    'Aiden',
    'Alan',
    'Alexa',
    'Alice',
    'Allison',
    'Alyssa',
    'Amelia',
    'Amy',
    'Andrea',
    'Andrew',
    'Angela',
    'Anna',
    'Anthony',
    'April',
    'Arthur',
    'Ashley',
    'Aubrey',
    'Austin',
    'Autumn',
    'Ava',
    'Bailey',
    'Barbara',
    'Beatrice',
    'Benjamin',
    'Bethany',
    'Bianca',
    'Blake',
    'Bradley',
    'Brandon',
    'Brayden',
    'Brenda',
    'Brian',
    'Brianna',
    'Brittany',
    'Brody',
    'Brooklyn',
    'Bryan',
    'Caleb',
    'Cameron',
    'Carl',
    'Carla',
    'Carlos',
    'Caroline',
    'Carter',
    'Cassandra',
    'Catherine',
    'Cecilia',
    'Charles',
    'Charlotte',
    'Chase',
    'Chelsea',
    'Cheryl',
    'Chloe',
    'Christian',
    'Christine',
    'Christopher',
    'Claire',
    'Clara',
    'Clarence',
    'Claudia',
    'Clayton',
    'Clifford',
    'Cody',
    'Colton',
    'Connor',
    'Cooper',
    'Courtney',
    'Crystal',
    'Curtis',
    'Cynthia',
    'Daisy',
    'Dakota',
    'Damian',
    'Daniel',
    'Danielle',
    'Daphne',
    'Darlene',
    'David',
    'Dean',
    'Deborah',
    'Delilah',
    'Dennis',
    'Derek',
    'Desmond',
    'Destiny',
    'Diana',
    'Dominic',
    'Donald',
    'Donna',
    'Doris',
    'Douglas',
    'Drew',
    'Duncan',
    'Dustin',
    'Dylan',
    'Earl',
    'Edgar',
    'Edith',
    'Edward',
    'Elaine',
    'Eleanor',
    'Elena',
    'Eli',
    'Elijah',
    'Elizabeth',
    'Ella',
    'Ellen',
    'Emily',
    'Emma',
    'Eric',
    'Erica',
    'Erik',
    'Erin',
    'Esther',
    'Ethan',
    'Eugene',
    'Eva',
    'Evan',
    'Evelyn',
    'Everett',
    'Faith',
    'Felix',
    'Fernando',
    'Fiona',
    'Francis',
    'Frank',
    'Frederick',
    'Gabriel',
    'Gabriella',
    'Gage',
    'Garrett',
    'Gavin',
    'Genevieve',
    'George',
    'Georgia',
    'Gerald',
    'Gianna',
    'Gilbert',
    'Giselle',
    'Gloria',
    'Gordon',
    'Grace',
    'Grant',
    'Gregory',
    'Gretchen',
    'Griffin',
    'Hailey',
    'Hannah',
    'Harold',
    'Harmony',
    'Harper',
    'Harrison',
    'Hayden',
    'Heather',
    'Heidi',
    'Helen',
    'Henry',
    'Herbert',
    'Holly',
    'Hope',
    'Howard',
    'Hudson',
    'Hugh',
    'Hunter',
    'Ian',
    'Irene',
    'Isaac',
    'Isabel',
    'Isabella',
    'Isabelle',
    'Isaiah',
    'Ivan',
    'Ivy',
    'Jack',
    'Jackson',
    'Jacob',
    'Jacqueline',
    'Jade',
    'Jake',
    'James',
    'Jamie',
    'Janet',
    'Jared',
    'Jasmine',
    'Jason',
    'Jasper',
    'Jayden',
    'Jean',
    'Jeffrey',
    'Jenna',
    'Jennifer',
    'Jeremy',
    'Jerome',
    'Jerry',
    'Jesse',
    'Jessica',
    'Jillian',
    'Joan',
    'Joanna',
    'Jocelyn',
    'Joel',
    'John',
    'Johnny',
    'Jonathan',
    'Jordan',
    'Joseph',
    'Joshua',
    'Joy',
    'Judith',
    'Judy',
    'Julia',
    'Julian',
    'Juliana',
    'Julie',
    'Justin',
    'Kaitlyn',
    'Karen',
    'Katherine',
    'Kathleen',
    'Kathy',
    'Katie',
    'Kayla',
    'Keith',
    'Kelly',
    'Kelsey',
    'Kenneth',
    'Kevin',
    'Kimberly',
    'Kirk',
    'Kristen',
    'Kristin',
    'Kristina',
    'Kyle',
    'Kylie',
    'Landon',
    'Laura',
    'Lauren',
    'Lawrence',
    'Leah',
    'Leonard',
    'Leslie',
    'Levi',
    'Liam',
    'Lillian',
    'Linda',
    'Lindsay',
    'Lisa',
    'Logan',
    'Lori',
    'Louis',
    'Lucas',
    'Lucy',
    'Luis',
    'Luke',
    'Lydia',
    'Madeline',
    'Madison',
    'Makayla',
    'Mallory',
    'Marcus',
    'Margaret',
    'Maria',
    'Mariah',
    'Marie',
    'Marilyn',
    'Mark',
    'Marvin',
    'Mason',
    'Matthew',
    'Max',
    'Megan',
    'Melanie',
    'Melissa',
    'Michael',
    'Michelle',
    'Mikayla',
    'Miles',
    'Molly',
    'Monica',
    'Morgan',
    'Nancy',
    'Naomi',
    'Natalie',
    'Nathan',
    'Nathaniel',
    'Neil',
    'Nicholas',
    'Nicole',
    'Noah',
    'Noelle',
    'Nolan',
    'Nora',
    'Norman',
    'Olivia',
    'Omar',
    'Oscar',
    'Owen',
    'Paige',
    'Pamela',
    'Patricia',
    'Patrick',
    'Paul',
    'Paula',
    'Penelope',
    'Penny',
    'Peter',
    'Philip',
    'Phoebe',
    'Preston',
    'Rachel',
    'Ralph',
    'Randall',
    'Raymond',
    'Rebecca',
    'Reese',
    'Regina',
    'Richard',
    'Riley',
    'Robert',
    'Robin',
    'Roger',
    'Ronald',
    'Rose',
    'Ross',
    'Rowan',
    'Russell',
    'Ryan',
    'Sabrina',
    'Samantha',
    'Samuel',
    'Sandra',
    'Sara',
    'Sarah',
    'Savannah',
    'Scott',
    'Sean',
    'Sebastian',
    'Selena',
    'Serena',
    'Seth',
    'Shane',
    'Shannon',
    'Shawn',
    'Sheila',
    'Shelby',
    'Sherri',
    'Shirley',
    'Sierra',
    'Sofia',
    'Sophia',
    'Spencer',
    'Stacey',
    'Stacy',
    'Stanley',
    'Stephanie',
    'Stephen',
    'Steve',
    'Steven',
    'Summer',
    'Susan',
    'Sydney',
    'Sylvia',
    'Tabitha',
    'Tamara',
    'Tammy',
    'Tara',
    'Taylor',
    'Teresa',
    'Terry',
    'Theodore',
    'Thomas',
    'Tiffany',
    'Timothy',
    'Todd',
    'Tracy',
    'Travis',
    'Trent',
    'Trevor',
    'Tristan',
    'Troy',
    'Tyler',
    'Valerie',
    'Vanessa',
    'Veronica',
    'Victor',
    'Vincent',
    'Violet',
    'Virginia',
    'Wade',
    'Walter',
    'Warren',
    'Wayne',
    'Wendy',
    'Wesley',
    'Whitney',
    'William',
    'Willow',
    'Wyatt',
    'Xavier',
    'Yvonne',
    'Zachary',
    'Zoe',
    'Zoey'
  ];

  static final List<String> _lastNames = [
    'Adams',
    'Alexander',
    'Allen',
    'Anderson',
    'Armstrong',
    'Arnold',
    'Atkinson',
    'Austin',
    'Bailey',
    'Baker',
    'Ball',
    'Banks',
    'Barnes',
    'Barrett',
    'Baxter',
    'Beck',
    'Bell',
    'Bennett',
    'Benson',
    'Berry',
    'Black',
    'Blair',
    'Boone',
    'Bowen',
    'Boyd',
    'Bradley',
    'Brady',
    'Bridges',
    'Briggs',
    'Brooks',
    'Brown',
    'Bryant',
    'Buchanan',
    'Burke',
    'Burns',
    'Burton',
    'Bush',
    'Butler',
    'Caldwell',
    'Campbell',
    'Carlson',
    'Carpenter',
    'Carr',
    'Carroll',
    'Carter',
    'Casey',
    'Chambers',
    'Chandler',
    'Chapman',
    'Chavez',
    'Clark',
    'Clayton',
    'Cobb',
    'Cole',
    'Coleman',
    'Collier',
    'Collins',
    'Conner',
    'Cook',
    'Cooper',
    'Copeland',
    'Cortez',
    'Cox',
    'Craig',
    'Crawford',
    'Cross',
    'Cruz',
    'Cunningham',
    'Curtis',
    'Dalton',
    'Daniel',
    'Davidson',
    'Dawson',
    'Day',
    'Dean',
    'Delgado',
    'Dennis',
    'Diaz',
    'Dixon',
    'Douglas',
    'Drake',
    'Dudley',
    'Duncan',
    'Dunn',
    'Duran',
    'Edwards',
    'Elliott',
    'Ellis',
    'Emerson',
    'Evans',
    'Everett',
    'Farmer',
    'Ferguson',
    'Fernandez',
    'Fields',
    'Figueroa',
    'Fisher',
    'Fitzgerald',
    'Fleming',
    'Fletcher',
    'Flores',
    'Ford',
    'Foster',
    'Fowler',
    'Fox',
    'Francis',
    'Franklin',
    'Freeman',
    'French',
    'Frost',
    'Fuller',
    'Gardner',
    'Garner',
    'Garrett',
    'Garza',
    'Gibbs',
    'Gibson',
    'Gilbert',
    'Gillespie',
    'Gilliam',
    'Glover',
    'Gomez',
    'Gonzales',
    'Gonzalez',
    'Goodman',
    'Gordon',
    'Graham',
    'Grant',
    'Graves',
    'Gray',
    'Green',
    'Greene',
    'Griffin',
    'Gross',
    'Guerrero',
    'Guthrie',
    'Gutierrez',
    'Hale',
    'Hall',
    'Hamilton',
    'Hammond',
    'Hampton',
    'Hancock',
    'Hansen',
    'Hanson',
    'Hardy',
    'Harmon',
    'Harper',
    'Harrington',
    'Harris',
    'Harrison',
    'Hart',
    'Harvey',
    'Hawkins',
    'Hayes',
    'Haynes',
    'Henderson',
    'Hendricks',
    'Henry',
    'Hernandez',
    'Herrera',
    'Hickman',
    'Higgins',
    'Hill',
    'Hines',
    'Hodges',
    'Hoffman',
    'Hogan',
    'Holland',
    'Holloway',
    'Holmes',
    'Holt',
    'Hopkins',
    'Horton',
    'House',
    'Houston',
    'Howard',
    'Howell',
    'Hubbard',
    'Hudson',
    'Hughes',
    'Hunt',
    'Hunter',
    'Hutchinson',
    'Ingram',
    'Jackson',
    'Jacobs',
    'James',
    'Jefferson',
    'Jenkins',
    'Jennings',
    'Jensen',
    'Jimenez',
    'Johns',
    'Johnson',
    'Johnston',
    'Jones',
    'Jordan',
    'Joseph',
    'Kane',
    'Keller',
    'Kelly',
    'Kennedy',
    'Kim',
    'King',
    'Kirk',
    'Klein',
    'Knight',
    'Knox',
    'Lamb',
    'Lambert',
    'Lane',
    'Lang',
    'Lara',
    'Lawrence',
    'Lawson',
    'Le',
    'Lee',
    'Leonard',
    'Lewis',
    'Lindsay',
    'Little',
    'Lloyd',
    'Logan',
    'Long',
    'Lopez',
    'Love',
    'Lowe',
    'Lucas',
    'Luna',
    'Lynch',
    'Lyons',
    'Macias',
    'Mack',
    'Madden',
    'Malone',
    'Mann',
    'Manning',
    'Marquez',
    'Marshall',
    'Martin',
    'Martinez',
    'Mason',
    'Matthews',
    'Maxwell',
    'May',
    'Mayer',
    'Maynard',
    'McBride',
    'McCarthy',
    'McClain',
    'McConnell',
    'McCormick',
    'McCoy',
    'McDaniel',
    'McDonald',
    'McGee',
    'McGuire',
    'McKenzie',
    'McKinney',
    'McLaughlin',
    'Medina',
    'Melton',
    'Mendez',
    'Mendoza',
    'Mercado',
    'Merrill',
    'Meyer',
    'Miles',
    'Miller',
    'Mills',
    'Mitchell',
    'Monroe',
    'Montgomery',
    'Moody',
    'Moore',
    'Morales',
    'Moran',
    'Morgan',
    'Morris',
    'Morrison',
    'Moss',
    'Mullen',
    'Munoz',
    'Murphy',
    'Murray',
    'Myers',
    'Nash',
    'Navarro',
    'Neal',
    'Nelson',
    'Newman',
    'Newton',
    'Nichols',
    'Nicholson',
    'Nielsen',
    'Noble',
    'Nolan',
    'Norman',
    'Norris',
    'Norton',
    'Nunez',
    'Ochoa',
    'Odom',
    'Oliver',
    'Olsen',
    'Olson',
    'Orr',
    'Ortega',
    'Osborne',
    'Owen',
    'Owens',
    'Pace',
    'Padilla',
    'Page',
    'Palmer',
    'Parker',
    'Parrish',
    'Parsons',
    'Patterson',
    'Patton',
    'Paul',
    'Payne',
    'Pearson',
    'Pennington',
    'Perez',
    'Perkins',
    'Perry',
    'Peters',
    'Peterson',
    'Phelps',
    'Phillips',
    'Pierce',
    'Pittman',
    'Pollard',
    'Poole',
    'Pope',
    'Porter',
    'Potter',
    'Powell',
    'Powers',
    'Preston',
    'Price',
    'Prince',
    'Pruitt',
    'Pugh',
    'Quinn',
    'Ramirez',
    'Ramos',
    'Ramsey',
    'Randall',
    'Rasmussen',
    'Ray',
    'Raymond',
    'Reed',
    'Reese',
    'Reeves',
    'Reid',
    'Reyes',
    'Reynolds',
    'Rhodes',
    'Rice',
    'Richards',
    'Richardson',
    'Riley',
    'Rios',
    'Robbins',
    'Roberts',
    'Robertson',
    'Robinson',
    'Rodgers',
    'Rodriguez',
    'Rogers',
    'Romero',
    'Rose',
    'Ross',
    'Rowe',
    'Roy',
    'Ruiz',
    'Russell',
    'Ryan',
    'Sampson',
    'Sanchez',
    'Sanders',
    'Saunders',
    'Schmidt',
    'Schneider',
    'Schroeder',
    'Schultz',
    'Schwartz'
  ];

  static final List<String> _domains = [
    'example.com',
    'mail.com',
    'test.org',
    'gmail.com',
    'yahoo.com',
    'outlook.com',
    'hotmail.com',
    'icloud.com',
    'aol.com',
    'protonmail.com',
    'zoho.com',
    'mail.ru',
    'yandex.com',
    'gmx.com',
    'tutanota.com',
    'inbox.com',
    'fastmail.com',
    'lycos.com',
    'hushmail.com',
    'runbox.com',
    'mailinator.com',
    'usa.com',
    'rocketmail.com',
    'excite.com',
    'rediffmail.com',
    'bing.com',
    'comcast.net',
    'verizon.net',
    'att.net',
    'charter.net',
    'shaw.ca',
    'telus.net',
    'rogers.com',
    'bell.ca',
    'optus.com.au',
    'bigpond.com',
    'sbcglobal.net',
    'bellsouth.net',
    'earthlink.net',
    'comcast.net',
    'cox.net',
    'blueyonder.co.uk',
    'o2.co.uk',
    'virginmedia.com',
    'talktalk.net',
    'btinternet.com',
    'yahoo.co.uk',
    'sky.com',
    'mail.com.au',
    'netscape.net',
    'tiscali.co.uk',
    'talktalk.co.uk',
    'wanadoo.fr',
    'laposte.net',
    'orange.fr',
    'free.fr',
    'sfr.fr',
    'numericable.fr',
    'neuf.fr',
    'mailbox.org',
    'cloudmailin.net',
    'mailfence.com',
    'mail.com.hk',
    'seznam.cz',
    'centrum.cz',
    'volny.cz',
    'atlas.cz',
    'post.cz',
    'email.cz',
    'seznam.sk',
    'centrum.sk',
    'atlas.sk',
    'inbox.sk',
    'westnet.com.au',
    'superonline.com',
    'hotmail.co.uk',
    'ymail.com',
    'btopenworld.com',
    'infoseek.com',
    'geocities.com',
    'walla.co.il',
    'sina.com',
    'sohu.com',
    'qq.com',
    '163.com',
    '126.com',
    'yeah.net',
    '21cn.com',
    'tianya.cn',
    'youdao.com',
    'dingtalk.com',
    'jingdong.com',
    'alibaba.com',
    'taobao.com',
    '58.com',
    'wechat.com',
    'weibo.com',
    'qqmail.com',
    'me.com',
    'doubango.org',
    'seznam.pl',
    'orange.pl',
    'wp.pl',
    'interia.pl',
    'onet.pl',
    'go2mail.com',
    'mail2web.com',
    'sendmail.com',
    'cogeco.ca',
    'chatrwireless.com',
    'o2.de',
    'web.de',
    'gmx.de',
    't-online.de',
    'freemail.de',
    'freenet.de',
    'ewe.net',
    'aol.de',
    'arcor.de',
    'posteo.de',
    'gmial.com',
    'cnet.com',
    'howstuffworks.com',
    'mit.edu',
    'harvard.edu',
    'berkeley.edu',
    'stanford.edu',
    'princeton.edu',
    'yale.edu',
    'columbia.edu',
    'caltech.edu',
    'ucla.edu',
    'universityofcalifornia.edu',
    'universityofmichigan.edu',
    'bu.edu',
    'cornell.edu',
    'nyu.edu',
    'wisc.edu',
    'umn.edu',
    'utexas.edu',
    'tamu.edu',
    'unc.edu',
    'vanderbilt.edu',
    'duke.edu',
    'boston.edu',
    'emory.edu',
    'purdue.edu',
    'auburn.edu',
    'georgia.edu',
    'uga.edu',
    'dartmouth.edu',
    'brown.edu',
    'northwestern.edu',
    'dartmouth.edu',
    'michigan.edu',
    'florida.edu',
    'georgetown.edu',
    'miami.edu',
    'tulane.edu',
    'wisconsin.edu',
    'gateway.com',
    'shopify.com',
    'wordpress.com',
    'wix.com',
    'mailchimp.com',
    'zendesk.com',
    'zoom.us',
    'salesforce.com',
    'atlassian.com',
    'slack.com',
    'trello.com',
    'googlemail.com',
    'gmx.net',
    'live.com',
    'outlook.co.uk',
    'mail.com.au',
    'tutanota.de',
    'mailinator.org',
    'incognito.com',
    'hoopla.com',
    'zapmail.com',
    'elitetasks.com',
    'darkmail.com',
    'myspace.com',
    'hi5.com',
    'classmates.com',
    'facebook.com',
    'twitter.com',
    'linkedin.com',
    'tumblr.com',
    'pinterest.com',
    'instagram.com',
    'flickr.com',
    'snapchat.com',
    'vimeo.com',
    'tiktok.com',
    'youtube.com',
    'reddit.com',
    'blogger.com',
    'quora.com',
    'mix.com',
    'diigo.com',
    'stumbleupon.com',
    'delicious.com',
    'slashdot.org',
    'digg.com',
    'bookmark.com',
    'disqus.com',
    'yelp.com',
    'ycombinator.com',
    'mailercloud.com',
    'substack.com',
    'contently.com',
    'medium.com',
    'blogspot.com',
    'typepad.com',
    'weebly.com',
    'squarespace.com',
    'strikingly.com',
    'blog.com',
    'themail.com',
    'bestmail.com',
    'easyemail.com',
    'myinbox.com',
    'supermail.com',
    'vipmail.com',
    'freemail.com',
    'flexmail.com',
    'topmail.com',
    'mymail.com',
    'foxmail.com',
    'rocketmail.co.uk',
    'kwikmail.com',
    'quickmail.com',
    'germemail.com',
    'peachmail.com',
    'platinummail.com',
    'shmail.com',
    'startmail.com',
    'happyemail.com'
  ];

  static final List<String> _genders = ['Male', 'Female', 'Non-binary'];
  static final List<String> _menWoman = ['women', 'men'];
  static final List<String> _bioTemplates = [
    'Love to travel and explore new places.',
    'Tech enthusiast and aspiring developer.',
    'Music lover, always looking for new tunes.',
    'Fitness junkie, always hitting the gym.',
    'Passionate about photography and design.',
    'Adventure seeker with a love for nature.',
    'Bookworm, always with my nose in a novel.',
    'Dog lover and proud pet parent.',
    'Entrepreneurial spirit with big dreams.',
    'Gaming is my escape from reality.',
    'A foodie who loves to try new recipes.',
    'Art lover, always visiting galleries and museums.',
    'Movie buff, always watching something new.',
    'Social butterfly who loves meeting new people.',
    'Eco-conscious, striving to live sustainably.',
    'Family-oriented, always making memories.',
    'Motivated to build a successful career.',
    'Fashion enthusiast with a unique sense of style.',
    'Baking is my therapy and my passion.',
    'Spiritual thinker, always in search of peace.',
    'World traveler with a passion for cultures.',
    'Nature lover, always hiking and exploring.',
    'Caffeine addict and morning person.',
    'Craftsman at heart, always DIY-ing something.',
    'Digital nomad, working from anywhere.',
    'Learning new languages and exploring the world.',
    'Science geek with a love for experimentation.',
    'Volunteer at heart, always helping others.',
    'Fitness coach, helping people reach their potential.',
    'Aspiring artist, always sketching new ideas.',
    'Book lover, constantly adding to my bookshelf.',
    'Tech-savvy and always ahead of trends.',
    'Meditation enthusiast, focusing on mindfulness.',
    'Travel blogger, sharing my adventures with the world.',
    'Yoga practitioner, finding balance in life.',
    'Guitar player with a passion for music.',
    'Night owl, always staying up late to work.',
    'Minimalist, focusing on living simply.',
    'Creative thinker, always solving problems in new ways.',
    'Pet parent to two adorable cats.',
    'Big fan of 90s retro culture.',
    'Lover of all things vintage.',
    'Social media enthusiast, always connected.',
    'Outdoorsman, always camping and hiking.',
    'Learning photography, capturing memories one shot at a time.',
    'Aspiring chef, cooking up new meals every week.',
    'I believe in kindness and spreading good vibes.',
    'Movie director in the making, always brainstorming new ideas.',
    'Comic book collector, always hunting for rare issues.',
    'Improv actor, embracing creativity on stage.',
    'Aspiring writer, always jotting down new ideas.',
    'Artist with a passion for abstract art.',
    'Birdwatcher, always exploring the wild.',
    'Sustainability advocate, reducing my carbon footprint.',
    'Just trying to live my best life.',
    'Coffee connoisseur, always on the hunt for the perfect brew.',
    'Love hiking and capturing nature’s beauty.',
    'Spending my days learning and growing.',
    'Innovator, always seeking new solutions.',
    'Proud cat dad, always spoiling my feline friend.',
    'Collector of all things vintage.',
    'Passionate about making the world a better place.',
    'I love learning about different cultures and traditions.',
    'Aspiring world traveler with a bucket list.',
    'Design geek, always trying to create something new.',
    'Movie night enthusiast, always down for a good flick.',
    'Health-conscious with a passion for clean eating.',
    'Living life with a positive attitude and a smile.',
    'Always working on improving myself.',
    'Geeky, nerdy, and loving it.',
    'Running enthusiast, always out for a jog.',
    'Wine lover, exploring different varieties.',
    'Self-care advocate, always making time for me.',
    'Gardener at heart, always growing something new.',
    'Aspiring photographer, always capturing the perfect shot.',
    'Writer and storyteller, turning thoughts into words.',
    'Dancer at heart, always on my feet.',
    'Gamer, always in search of the next big title.',
    'Eco-warrior, reducing waste wherever I can.',
    'Proud dog parent to an energetic pup.',
    'Outdoor adventure seeker, always exploring new places.',
    'Gardener and lover of all things green.',
    'Yoga lover, balancing mind, body, and spirit.',
    'Lover of arts and crafts, always creating something new.',
    'Biker, exploring the world one ride at a time.',
    'Video game streamer, sharing my adventures with others.',
    'Designer, always creating something unique.',
    'Homebody, loving cozy nights in.',
    'Board game enthusiast, always ready for a challenge.',
    'Always chasing my dreams and never looking back.',
    'Innovative thinker, finding new ways to approach problems.',
    'Music is my life; I can’t go a day without it.',
    'Dreamer, always striving to make my dreams come true.',
    'Lover of all things creative and artistic.',
    'Superhero fan, always ready for a comic book marathon.',
    'Aspiring singer, always singing in the shower.',
    'Open-minded and always ready to learn something new.',
    'Dreaming big, working hard, and never giving up.',
    'Full-time adventurer, part-time wanderer.',
    'Food enthusiast, always trying new recipes and restaurants.',
    'Professional procrastinator, but I always get it done.',
    'Proud owner of a growing book collection.',
    'Lover of history, always learning from the past.',
    'Aspiring influencer, sharing my passions with the world.',
    'Trying to make a difference, one step at a time.',
    'Into fitness, but mostly for the post-workout snacks.',
    'Skeptic at heart, but always open to new ideas.',
    'Piano player, creating music with every key.',
    'Deep thinker, always questioning the world around me.',
    'Beer enthusiast, trying out new brews from around the world.',
    'Passionate about technology and its impact on the world.',
    'Hiker, always finding new trails to explore.',
    'Planner by nature, always ready for the next adventure.',
    'A lover of simplicity, embracing the little things in life.',
    'Adventure junkie, always looking for the next thrill.',
    'Proud of my roots and culture.',
    'Tech geek and always one step ahead in gadgets.',
    'Always down for a good road trip.',
    'I believe in kindness, empathy, and spreading positivity.',
    'Aspiring entrepreneur, creating my own path.',
    'Cyclist, always riding through the city streets.',
    'Lover of fashion, always keeping up with trends.',
    'Coffee shop regular and proud of it.',
    'Outdoor enthusiast, always with a backpack and a map.',
    'Football fan, always watching the big game.',
    'Living life with a sense of humor and a light heart.',
    'Passionate about sustainability and the environment.',
    'Big on making memories with friends and family.',
    'Always in search of inspiration and new ideas.',
    'Avid reader, always learning something new.',
    'Explorer at heart, never afraid to step out of my comfort zone.',
    'Life is about enjoying the journey, not just the destination.',
    'Proud to be a mentor and guide for others.',
    'Lover of good books, good food, and good company.',
    'Wildly creative, always dreaming up new things.',
    'Yoga and meditation keep me centered.',
    'Always trying to find the silver lining in every situation.',
    'The more I learn, the more I realize I don’t know.',
    'Life’s too short to not follow your passion.',
    'A world of possibilities awaits, and I’m ready for them all.',
    'Trying to make the most of every moment.',
    'Believer in the power of positivity and mindfulness.',
    'Always eager to meet new people and hear their stories.',
    'I enjoy the quiet moments and the sound of nature.',
    'Life is an adventure, and I’m living it to the fullest.',
    'The future is bright, and I’m working towards it every day.',
    'Focused on creating a life full of happiness and purpose.',
    'Work hard, play hard, repeat.',
    'Chasing goals and working towards my dreams.',
    'Creating memories, one day at a time.',
    'Living a life that I’m proud of.',
    'Exploring new horizons, one step at a time.',
    'There’s always something new to learn, and I’m here for it.',
    'Happiness is found in the little things.',
    'Exploring the world and finding beauty in the everyday.',
    'Taking risks and stepping outside my comfort zone.',
    'Surround yourself with people who inspire you.',
    'Life is a journey; enjoy the ride.',
    'Dream big, work hard, and make it happen.',
    'Taking each day one step at a time.',
    'Living my life the way I want to, no regrets.',
    'Turning dreams into reality, one step at a time.',
    'Life is what you make of it, so make it amazing.'
  ];

  static UserProfile generate() {
    final firstName =
        _firstNames[RandomUtils.randomInt(0, _firstNames.length - 1)];
    final lastName =
        _lastNames[RandomUtils.randomInt(0, _lastNames.length - 1)];
    final email =
        '${firstName.toLowerCase()}${lastName.toLowerCase()}@${_domains[RandomUtils.randomInt(0, _domains.length - 1)]}';
    final phoneNumber =
        '+1-${RandomUtils.randomNumeric(3)}-${RandomUtils.randomNumeric(3)}-${RandomUtils.randomNumeric(4)}';
    final address =
        '${RandomUtils.randomInt(100, 999)} ${_lastNames[RandomUtils.randomInt(0, _lastNames.length - 1)]} St.';
    final dateOfBirth =
        '${RandomUtils.randomInt(1, 31)}/${RandomUtils.randomInt(1, 12)}/${RandomUtils.randomInt(1980, 2005)}';
    final gender = _genders[RandomUtils.randomInt(0, _genders.length - 1)];
    final menWomen = _menWoman[RandomUtils.randomInt(0, _menWoman.length - 1)];

    final profilePictureUrl =
        'https://randomuser.me/api/portraits/med/${menWomen.toLowerCase()}/${RandomUtils.randomInt(1, 99)}.jpg';
    final bio =
        _bioTemplates[RandomUtils.randomInt(0, _bioTemplates.length - 1)];

    return UserProfile(
      name: '$firstName $lastName',
      email: email,
      phoneNumber: phoneNumber,
      address: address,
      dateOfBirth: dateOfBirth,
      gender: gender,
      profilePictureUrl: profilePictureUrl,
      bio: bio,
    );
  }
}
