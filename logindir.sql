-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2017 at 01:30 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logindir`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` int(5) NOT NULL,
  `time_d` varchar(10) NOT NULL,
  `time_m` varchar(50) NOT NULL,
  `time_y` varchar(10) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `link` varchar(500) NOT NULL,
  `post_time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `time_d`, `time_m`, `time_y`, `title`, `description`, `link`, `post_time`) VALUES
(7, '12', 'Nov', '2016', 'Prestigious Aditya Birla Scholarship 2016', 'Ms. Tushara L. Balabolu, a BTech 2016 batch student of Computer Science and Engineering of IIT Guwahati, has won the prestigious Aditya Birla Scholarship for the year 2016 in Engineering stream. The scholarship entails each scholar receiving an amount of Rs.65,000/- per annum.', 'http://www.adityabirlascholars.net/index.aspx', '2016-11-10 11:02:55'),
(8, '12', 'Nov', '2016', 'Sahitya Academi Yuva Puraskar 2016', 'Ms. Prarthana Saikia, a PhD student in the department of Humanities and Social Sciences, has been awarded Sahitya Academi Yuva Puraskar for 2016 for her novel Jatadhari. Congratulations to Ms. Prarthana Saikia.', 'http://sahitya-akademi.gov.in/sahitya-akademi/pdf/yuvapuraskar-2016.pdf', '2016-11-11 11:02:55'),
(9, '27', 'Dec', '2016', 'Inter IIT Sports Meet 2016', 'Team IIT Guwahati has performed very encouraging and apparently best sports spirit in the recently concluded Inter IIT Sports Meet 2016 at IIT Kanpur. ', 'https://www.facebook.com/iitgwt/posts/1332050960149083', '2016-12-27 11:02:55');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(5) NOT NULL,
  `time_d` varchar(10) NOT NULL,
  `time_m` varchar(50) NOT NULL,
  `time_y` varchar(10) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `time_d`, `time_m`, `time_y`, `title`, `description`, `link`) VALUES
(6, '21', 'Oct', '2016', 'Notice regarding Application Form for Students Station Leave', 'This is for information of all students that the lnstitute allows trips by students outside the campus only when proper permission have been obtained.', 'http://intranet.iitg.ernet.in/nb/studaff/Notice-regarding-Application-Form-for-Students-Station-Leave.pdf'),
(7, '17', 'Nov', '2016', 'Notice regarding hostel stay during Winter Vacation 2016', 'This is for information of all that students willing to stay in hostel during Winter Vacation are advised to fill the online Vacation stay form between 21-29 Nov, 2016', 'http://intranet.iitg.ernet.in/nb/studaff/Notice-30-2016-regarding-hostel-stay-during-winter-vacation-2016.pdf'),
(8, '25', 'Nov', '2016', 'Notice Regarding Hostel Mess in Winter Vacation', 'This is for information of all that students regarding hostel mess in Winter Vacation', 'http://intranet.iitg.ernet.in/nb/studaff/Notice-Regarding-Hostel-Mess-in-Winter-Vacation.pdf'),
(9, '27', 'Dec', '2016', 'McM Scholarship 2016', 'List of students recommended for McM Scholarship 2016', 'http://intranet.iitg.ernet.in/nb/studaff/List-of-students-recommended-for-McM-Scholarship-2016.pdf'),
(10, '27', 'Dec', '2016', 'SC-ST Scholarship 2016', 'List of students recommended for SC-ST Scholarship 2016', 'http://intranet.iitg.ernet.in/nb/studaff/List-of-students-recommended-for-SC-ST-Scholarship-2016.pdf'),
(11, '27', 'Dec', '2016', 'Special Scholarship 2016', 'List of students recommended for Special Scholarship under Directorâ€™s special consideration 2016 - 17', 'http://intranet.iitg.ernet.in/nb/studaff/List-of-students-recommended-for-Special-Scholarship-2016.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `dir`
--

CREATE TABLE `dir` (
  `id` int(11) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dir`
--

INSERT INTO `dir` (`id`, `content`) VALUES
(1, 'Today, Higher Education Institutes are at cross-roads. Ranking issues are being raised everywhere. As such it has been observed that the ranking conducted by "THE" and "QS" have a serious effect on the perception of the countrymen and Government. In this message we will discuss some issues that need attention of the academic community of Higher Education Institutes (HEI) of the country in general and the community of IIT Guwahati in particular.'),
(2, 'We are required to enhance our facilities. We have to do our best to provide more opportunities to our students. We must create more innovative courses in our Institutes. Several departments have already joined the open educational resources movement and have participated in the national initiative for online courses on NPTEL and similar platforms. We must improve our infrastructure, laboratories and computational facilities. Today our infrastructure, laboratories and computational facilities are not comparable with the bests in the world.'),
(3, 'We have to initiate more discussions between the academia and the industry. We need to show people the kind of impact that these Institutes can effect on improvements in the living conditions; like cleaning up the ambience, improving urban-traffic system etc. We have to keep bringing together leading academic people from all over the globe. Increasingly, professors from other countries are showing interest in working here as are young students from different universities/ institutes in the region. It is very important to uphold this open and inviting role in the national context. It makes the institution of IIT more relevant. We need to create awareness among our faculty members about the importance of our research especially to bring our country at the hub of excellent industrial connections.'),
(4, 'Universities/ Institutes must merge teaching and research into one body. An active researcher always modulates his teaching from the experience earned through research. Each one of us has to strive continuously to become an effective teacher. We have to be innovative and analytical even if the class strength is large. There is some research that indicates small classes are more effective than larger ones. However, these difficulties can be used to our advantage through flipped-class rooms.'),
(5, 'Recent experiments in the Design Department of IIT Guwahati (VIGNETTE-2015) have shown that students utilize such opportunities to great innovation and success, to conduct their own knowledge-creation projects, which necessitate creativity, innovative thinking and originality. Every Department requires to practice this (the amount of time and resources allocated to such a component would be decided by the Department concerned). By learning about how to conduct research, undergraduates move beyond text-book learning. The scenario greatly enhances the overall undergraduate learning experience.'),
(6, 'In order to be recognized as a fully functioning academic, we have to devote time to both teaching and research equitably since the students benefit enormously from both. Our Dean and Associate Dean R&D have a big challenge at hand to set up a Research Park. This will trigger a unique system similar to the “Industry on Campus” scheme, which will enable companies to have research laboratories and centers within the IIT. These outlets will be operated by the companies in cooperation with the faculty members, utilizing a variety of human resources and the innate potential of a large number of students. I believe that there are many special challenges for IITs. The Hon’ble Prime Minister wants us to contribute meaningfully in nation-building, in product development and in making newer policies. It is difficult to solve some problems with conventional ways of thinking and methods. A typical example is our sanitation and drainage system. In such a situation, universities/ institutes might find themselves able to turn the tide. The stream of innovation runs parallel to another major line of technological progress, our growing knowledge of the psychological processes underlying learning. Educational systems must have an understanding of how the brain and the cognitive system work. Our existing knowledge of learning comes from two schools of thought, behavioral science and quantitative science. Unless we develop a proper ecosystem, drawing from both, the innovative ideas will not germinate.'),
(7, 'Often there are issues related to performance of the students. In order to analyze that we require to understand the students. The students today, in general, strive for material well-being. They do feel against corruption. They are perturbed by the inequality of the society, some of them feel acutely the ills of the society. Even then, some students have short attention span. Some follow poor daily routine, even though they have good learning ambition to begin with. The academic community has to accommodate and understand such variations and use the diversity to create a useful and humanitarian society where everyone finds themselves able to contribute and be useful. More we gain and grow as a society more we utilize our human resources.\r\n'),
(8, 'Technology-enhanced forms of education are likely to be subject to higher levels of experiment and testing than traditional approaches. MOOCs (Massive Open Online Courses) generate vast volumes of data that provide insight into the ways in which students learn. This data comes from a sample of millions and is expected to be a “game changer”. At least some of our faculty members have to start thinking more seriously about MOOCs. The Head of Centre for Educational Technology has a very big responsibility towards MOOCs. Also some faculty members have to analyze how things like Google Glass, an online internet tutor, can work in conjunction with a paper textbook can actually convey systematic and meaningful learning to groups of students. GIAN is yet another initiative which needs to be steered by the Centre for Educational Technology. Well known experts in the fields will create courseware associating faculty members of our Institute. All IITs, some NITs and some selected Centrally Funded Universities have all agreed to enthusiastic participation in this novel endeavor of Government of India.\r\n'),
(9, 'Nanotechnology is reported to have been used for the first time by Iranian Scientists to produce an anti-cancer drug. With already demonstrated abilities, this is yet another step in their growing contribution to the production of advanced drugs. Taiwan has effectively taken leaps in this area, Taipei Medical University (TMU) and National Taiwan University (NTU) research teams report an anti-cancer therapy drug that is approved for trials by the USFDA (US Food and Drug Administration). The drug is set to inhibit histone deacetylase activity, effectively killing cancer cells, and causing fewer side effects.'),
(10, 'Treatment of diabetes includes injections of insulin on a daily basis. A step towards changing this uncomfortable process has been taken at the University of KwaZulu Natal in South Africa. They have developed a dermal patch capable of sustained, controlled insulin release into the bloodstream.'),
(11, 'An electro-mechanical device with an altogether different application is SHE, a device embedded with sensors and an electric shock circuit board. It has been invented by SRM University to help protect women against sexual assault. In response to an undesirable pinch, a 3,800 kV electric shock is delivered that can cause severe burns to the offender. Through an embedded GPRS system, SHE, can also deliver an instant alert message to the police and other emergency contacts.'),
(12, 'National Taiwan University (NTU) is holding a significantly high position in the global arena of academic excellence. National Tsing Hua University has recently come up with a great visibility. One thousand times faster than 4G is the exciting claim that National Taipei University of Technology (Taipei Tech) engineers are making about the capability of their ultra-high-speed visible light wireless network (li-fi). With a 10 Gbps transmission rate and transmission distance up to 17.5 meters, downloading a full-length film is expected to take less than a second.'),
(13, 'Professor Erdal Arikan of Bilkent University of Turkey received the Institute of Electrical and Electronic Engineers (IEEE) Baker Award for his seminal contribution to information theory. His award winning paper “Channel Polarization: A Method for Constructing Capacity-Achieving Codes for Symmetric Binary-Input Memory less Channels” has applications in the areas ranging from wireless communications to biology and physics.'),
(14, 'India’s largest private higher education institution, Amity University, has overwhelmed all the country’s public universities in filing 140 patents. The patents cover many crucial areas including nanotechnology, forensic science and microbiology. Departing from traditional methods, a synergistic herbal composition for lowering blood glucose and cholesterol level infuse holds much promise for future collaboration between biotechnology and the ancient Indian Knowledge of Ayurveda. Hindustan University students have won the Most Innovative Aerial Robotics Design Award. The competition brought together thirty teams from across the globe. The task was to present autonomous flying robots attempting to perform missions that required autonomous robotic features.'),
(15, 'The development of higher education has given rise to a distinct trend of internationalization along with the globalization of the world. Top-class universities generally deem the degree of internationalization as the embodiment of their academic strengths and learning levels, and consider the international influence as a significant criterion to measure success. Rather than joining the race and getting involved in the competition, top-tier universities are pioneering the adaptation of international higher education and scientific research, and demonstrating their powerful influence on the global stage. Furthermore, the high level internationalization of a top-tier university is reflected in their spirit of exploration, philosophy of global vision, goals, ties at a global level and trans-disciplinary thoughts. In such institutes academic thoughts generate widespread cognizance about concerns around the world, and original research opens new horizons for development and welfare around the globe.'),
(16, 'High internationalization brings an institute to the center of global academic sharing and cultural exchange; accordingly, majority of first-class universities are committed to boosting the education of overseas-students, thereby enhancing the international exchange ability of students. For instance, among graduate students in the United States more than forty percent are overseas students. International students in Harvard University come from over 100 countries; and those in Princeton University from more than 50 countries.'),
(17, 'The universities that rise rapidly in the short term are placing themselves in the global competition system, regulating and planning themselves in accordance with the standards of world-class universities, as well as developing and expanding themselves through the all-round cooperation with world-class universities. The Indian Institutes of Technology, ever since their establishment, have been aiming to be international high-level institutes of science and technology. To this end, they have been constructing an MIT model, inviting outstanding teachers around the world to their campuses. Some Institutes (such as IIT Kanpur) started with all-round collaborations with top universities of science and technology in the United States (such as MIT, Caltech etc.) and some (such as IIT Madras) started with a hand-holding relationship with the top universities in Germany (Such as Karlsruhe University, Technical University Aachen etc.) for the training of graduate students and implementing scientific research projects. Some of them (IIT Kharagpur, IIT Bombay and IIT Delhi) got the opportunity to build laboratories jointly with Intel, Motorola, IBM, UNESCO and ONR. South-east Asian countries are extremely successful in their outcome based initiatives. Recently Hong Kong University of Science and Technology has been ranked among the world’s top 50 universities thus taking an almost miraculous leap in development. In a short span of two decades since its foundation in 1991, they have scaled such a great height through their policies of introducing world-class academic talents, learning from the management system in world-class universities, and emulating the academic models of the best universities in the world.'),
(18, 'International exchange is key. Top-tier universities are active and well known for their extensive cooperation and exchanges with the other universities of higher learning, scientific research laboratories and innovative enterprises in the region, and for utilizing international opportunities (such as sending faculty members overseas on Humboldt, JSPS or Fulbright fellowships). Backed by such advantages, the university effectively absorbs and localizes worldwide high-quality education resources, improves the quality of talent training, all the while enhancing the quality of regional development, promoting the industrialization of emerging strategies and boosting the process of internationalization. These culminate in the development of the regional economy, adequate improvement of quality of life and creating an image, as to how the entire region is viewed by the world.'),
(19, 'To adapt themselves to the development strategies of the country and satisfy the talent requirements for the construction of an economic, technological and cultural power, universities in China have accelerated the internationalization of higher education, invited world-class faculty, attracted world-class teachers and enhanced collaboration within their own universities and institutes, thereby continuously improving the volume and level of scientific research and quality of education.\r\n'),
(20, 'In the globalization of higher education, it is extremely important for universities to evaluate and assess their assessment criteria, curriculum and teaching quality with internationally accepted systems and standards. India has recently established a National Ranking Framework (internal performance appraisal) to do a qualitative evaluation of every university/ institute in the country. Within this universities and institutes will carry out an appraisal on the teaching quality, discipline construction and other learning indicators based on the implementation of international certification standards. For IIT Guwahati, the guidelines of the Accreditation Board of Engineering and Technology (ABET) would be very appropriate, and might even produce miracles in next five years.'),
(21, 'NTU Singapore is the fastest-rising among the world’s top 50 universities, first among the world’s young elite universities, as well as the one of the top Asian universities in normalized citation impact. Professor Bertil Andersson, who has a longstanding association with the Nobel Foundation, has been the key driver of Singapore’s new medical school jointly established by the NTU and Imperial College London. His own research on artificial photo-synthesis drew the respectful attention of his peers. By fostering dialogue among the stake holders, he brought about excellent inter-disciplinary ambience in the campus. The university landscape and infra-structure were designed to promote greater interaction between faculty and students of different disciplines to come together and create a new knowledge base.\r\n'),
(22, 'Increasing student engagement is not a small task. It takes deep passion, commitment and compassion to motivate each unique student. There are ways to initiate and immerse students more actively into the teaching-learning experience that require their thoughtfulness and participation. By becoming active learners, one can hope that students will demonstrate a level of engagement that wasn’t present before. We have to come up with ideas to keep students motivated and engaged. Eventually the ambience will progress towards a dynamic academia, which can effectively resist any “negativism”.'),
(23, 'As academicians, we have to be careful and responsible builders of humanity and society as a whole. A graduate must have understanding and requisite skills in her/ his discipline of choice. Besides this main attribute, there are a few issues of “man-making”. A graduate must know about the society in which she/ he lives. The students should be encouraged to spend time with the downtrodden; they should be allowed to understand the plight of the service personnel who do not get adequate money to cover 100 percent of their food expenses. All graduates must acquire the ability to express themselves using both the spoken and the written word. They should be able to relate themselves to the art and culture of the land. Getting involved in “Performing Arts” is an important component of completeness of life.'),
(24, 'Finally we would like to address some issues specific to some recent problems pertaining to governance of the students: Each individual has his or her own story about what is important and why. A compassionate and open-minded look into these different stories can make a great difference on how we handle conflict. We have to learn to ask questions that can help us resolve the problem and understand the background of the conflict better, therefore prevent future incidents. What is important in specific situations is the improvement of the ambience. Punishment is not more important than restoring peace, growing awareness and motivating individuals for self-rectification.'),
(25, 'We must remain open to learning new things about how other people perceive us. We may be part of the problem more than we are willing to admit, or indeed are even aware. We need to re-cast complex issues as shared problems that can be solved cooperatively. Let us abstain from blaming and voicing negative opinions about others. Let us state clearly what we feel and want and let us invite our colleagues and the students to help each other in finding solutions. Opinions and emotive expressions should be narrated through means that facilitate a lasting and satisfying outcome. Let us keep in mind that “negativism” can only destroy society. We should learn to admire people who are positive and optimistic in their outlook, even if their philosophy seems inadequate in addressing issues in-hand. In the long run, we all have a lot to learn from them too.'),
(26, 'The New Year will be unfolding, like a blossom with beautiful petals concealing the treasures pertaining the source of beauty within. We pray to Almighty, let the year be filled with the events that are really good for the holistic development of the Institute. Let all the students perform well. Let all the faculty members, officers and staff members grow on their career path. I wish each one of IIT Guwahati and her/ his family peace, happiness and good health in the New Year. Let us gain sufficient strength to help those who need our help and the let us have the humility and openness to accept help from others.');

-- --------------------------------------------------------

--
-- Table structure for table `dirimg`
--

CREATE TABLE `dirimg` (
  `id` int(11) NOT NULL,
  `img` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dirimg`
--

INSERT INTO `dirimg` (`id`, `img`) VALUES
(13, 0x696d616765732f61646d696e2d69636f6e2e706e67),
(14, 0x696d616765732f5341422e706e67),
(15, 0x696d616765732f7854674b7a7a4d6e632e706e67);

-- --------------------------------------------------------

--
-- Table structure for table `loginsession`
--

CREATE TABLE `loginsession` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginsession`
--

INSERT INTO `loginsession` (`username`, `password`) VALUES
('admin', 'swcadmin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dir`
--
ALTER TABLE `dir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dirimg`
--
ALTER TABLE `dirimg`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `dirimg`
--
ALTER TABLE `dirimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
