-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 21, 2018 at 12:59 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogpost`
--

CREATE TABLE `blogpost` (
  `blogPostID` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `summary` varchar(500) DEFAULT NULL,
  `mainContent` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `author` int(11) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `noOfViews` int(11) DEFAULT NULL,
  `blogUser_blogUserID` int(11) NOT NULL,
  `category_categoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogpost`
--

INSERT INTO `blogpost` (`blogPostID`, `title`, `summary`, `mainContent`, `image`, `author`, `dateCreated`, `category`, `noOfViews`, `blogUser_blogUserID`, `category_categoryID`) VALUES
(13, 'WE LEARNED HOW TO BE A TEAM', 'An amazing way to develop softwares and soft skills', 'When people think of software development, they understandably think of a lone wolf programmer shut off from the world, solving complex problems.&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; What if I told you this was hardly ever how software development truly works in the real worldâ€¦and that pair programming could be your answer to learning to code faster, preparing yourself for the real world of software development, and maybe having more fun in the process?&#13;&#10; Sounds good. So how do software developers really work?&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; We are a team of 4: J3C Team and we chose to do pair programming and to discuss all the problems as a team. What may be more accurate is a team of software developers, shutting themselves off from the world sometimes, connecting themselves to the world at other times, and still solving complex problems (but together).&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; The lone-wolf scenario may be true in certain situations, such as completing a side project or freelance work. More often than not, however, software development for products of any meaningful scale is done by a fully-fledged software team, likely with a mix of different development strengths. This software team will be plugged into a broader business and commercial team&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; What does this mean for us software developers that are learning? It means that while learning to code often starts as a lone wolf game, we want it to (as soon as possible) grow into the team sport of software development that is prevalent in most organizations.&#13;&#10; &#13;&#10; Beyond the coding content itself, it is essential to building the collaboration and team-working skills that will help you thrive in a software development team. Having external support from others to stretch you is also a fantastic (maybe the best) way to learn, even if the natural temptation is to battle through tricky coding problems alone.&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; For the uninitiated: what is pair programming?&#13;&#10; Thankfully, Wikipedia can help us here:&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; â€œPair programming is an agile software development technique in which two programmers work together at one workstation. One, the driver, writes code while the other, the observer or navigator, reviews each line of code as it is typed in. The two programmers switch roles frequently.â€&#13;&#10; How does this change the mindsets of the two people approaching the code?&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; â€œWhile reviewing, the observer also considers the â€œstrategicâ€ direction of the work, coming up with ideas for improvements and likely future problems to address. This frees the driver to focus all of their attention on the â€œtacticalâ€ aspects of completing the current task, using the observer as a safety net and guide.â€&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; Ok cool. But isnâ€™t this pair programming thing going to be highly uncomfortable?&#13;&#10; You may be skeptical of pair programmingâ€Šâ€”â€ŠI certainly was skeptical myself. Your first thoughts may be that the idea sounds like an uncomfortable one.&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; Three core advantages of pair programming, tailored to someone who is learning to code:&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; (1) Pair programming is a fantastic way to learn from another coder.&#13;&#10; In no other environment will you be on the same exact point of a coding challenge, struggling through the exact same problem, and trying to solve it together. You will laugh, you will cry, and you will ultimately learn.&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; Importantly, you will have accrued different knowledge bases as you have learned to code, and youâ€™ll be able to pick up new content from your pair. More importantly, good programming is ultimately about applying your best problem-solving process, not just having lots of content knowledge. Pair programming will enable you to learn from another developerâ€™s process, as well as give you an opportunity to receive feedback on your own coding process (more on feedback below).&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; Bonus benefit of having this perspective on your coding process and having to explain it to your pair: Rubber-ducking is a fantastic way to debug code. In a nutshell, it involves explaining what you are trying to solve to a â€˜rubber duckâ€™ or another inanimate object so that you get perspective on the issue. Why not explain to a real-life coder that you can bounce ideas off instead?&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; (2) Pairing is a great environment to practice the team skills that are central to good software development.&#13;&#10; We established earlier that software is a team sport. By taking your coding practice outside of your own head by pairing, you will naturally be building the soft team skills that are so vital to working in a larger software development team.&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; (3) The benefits of pair programming are even greater for (relatively) new software developers.&#13;&#10; As supported by the research compiled by Laurie Williams, pair coding works best when (i) the pair work on complex tasks and (ii) individuals are at similar levels of programming knowledge (see pair-programming research compiled by Laurie Williams).&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; As a newly-minted coder stretching your way to greatness, a lot of the tasks you undertake will be naturally complex, because you donâ€™t yet have that base of experience and knowledge that can make specific coding tasks easy. Your pair that is also learning to code is more likely to be at a similar level to you in a variety of coding knowledge areas, even if one of you is stronger in a specific area.&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; If you are still skeptical, I challenge you to try pair coding. I could go on listing its benefits, but this will pale in comparison to trying it out, seeing its powers in practice, and ultimately deciding if it is a great a way to learn for you.&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; (1) Pomodoro pairing. A timer is set for 25 minutes, where one person is the driver and the other the navigator. Every 25 minutes, you have a short break and switch roles.&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; (2) Ping-pong pairing. The driver writes a failing test, then passes the driver role (and the keyboard) to the other person. The new driver writes the code to make that test pass, refactors the code, and writes a failing test for the other person to drive through. &#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; To end: balancing the view on pair programming&#13;&#10; Hopefully, you now feel inspired to add pair programming as a powerful tool to your learning toolbox. It really is very useful, and I hope you now have enough info to get started.&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; To balance the above: pair programming is, of course, not always easy. Learning to explain and externalize your coding process can be tough. Working with others can be difficult in general, and certain scenarios can reduce the value pair programming provides (for example if the skills or goals of the pair are mismatched).&#13;&#10; &#60;?php &#34;&#38;#13;&#38;#10;&#34; ?&#62;&#13;&#10; Fundamentally though, if youâ€™re learning to code and learning to work in a software development team, I havenâ€™t found anything more helpful than hours upon hours of pair programming with a wide range of people with different backgrounds and talents.', 'PAIRPROGRAMMING.jpg', 26, '2018-04-20 23:56:00', 4, NULL, 0, 0),
(14, 'WE LEARNED IN AN AGILE WAY', 'The easiest way to work', 'The various agile Scrum methodologies share much of the same philosophy, as well as many of the same characteristics and practices. But from an implementation standpoint, each has its own recipe of practices, terminology, and tactics. &#13;&#10;&#60;br /&#62;&#13;&#10;Agile Scrum Methodology&#13;&#10;&#60;br /&#62;&#13;&#10;Scrum is a lightweight agile project management framework with broad applicability for managing and controlling iterative and incremental projects of all types. Ken Schwaber, Mike Beedle, Jeff Sutherland and others have contributed significantly to the evolution of Scrum over the last decade. Scrum has garnered increasing popularity in the agile software development community due to its simplicity, proven productivity, and ability to act as a wrapper for various engineering practices promoted by other agile methodologies.&#13;&#10;&#60;br /&#62;&#13;&#10;With Scrum methodology, the â€œProduct Ownerâ€ works closely with the team to identify and prioritize system functionality in form of a â€œProduct Backlogâ€. The Product Backlog consists of features, bug fixes, non-functional requirements, etc. â€“ whatever needs to be done in order to successfully deliver a working software system. With priorities driven by the Product Owner, cross-functional teams estimate and sign-up to deliver â€œpotentially shippable incrementsâ€ of software during successive Sprints, typically lasting 30 days. Once a Sprintâ€™s Product Backlog is committed, no additional functionality can be added to the Sprint except by the team. Once a Sprint has been delivered, the Product Backlog is analyzed and reprioritized, if necessary, and the next set of functionality is selected for the next Sprint.&#13;&#10;&#60;br /&#62;&#13;&#10;Scrum methodology has been proven to scale to multiple teams across very large organizations with 800+ people. See how VersionOne supports Scrum Sprint Planning by making it easier to manage your Product Backlog.&#13;&#10;&#60;br /&#62;&#13;&#10;Lean and Kanban Software Development&#13;&#10;&#60;br /&#62;&#13;&#10;Lean Software Development is an iterative agile methodology originally developed by Mary and Tom Poppendieck. Lean Software Development owes much of its principles and practices to the Lean Enterprise movement, and the practices of companies like Toyota. Lean Software Development focuses the team on delivering Value to the customer, and on the efficiency of the â€œValue Stream,â€ the mechanisms that deliver that Value. The main principles of Lean methodology include:&#13;&#10;&#60;br /&#62;&#13;&#10;Eliminating Waste/&#13;&#10;Amplifying Learning/&#13;&#10;Deciding as Late as Possible/&#13;&#10;Delivering as Fast as Possible/&#13;&#10;Empowering the Team/&#13;&#10;Building Integrity In/&#13;&#10;Seeing the Whole/&#13;&#10;Lean methodology eliminates waste through such practices as selecting only the truly valuable features for a system, prioritizing those selected, and delivering them in small batches. It emphasizes the speed and efficiency of development workflow and relies on rapid and reliable feedback between programmers and customers. Lean uses the idea of work product being â€œpulledâ€ via customer request. It focuses decision-making authority and ability on individuals and small teams, since research shows this to be faster and more efficient than hierarchical flow of control. Lean also concentrates on the efficiency of the use of team resources, trying to ensure that everyone is productive as much of the time as possible. It concentrates on concurrent work and the fewest possible intra-team workflow dependencies. Lean also strongly recommends that automated unit tests be written at the same time the code is written.&#13;&#10;&#60;br /&#62;&#13;&#10;The Kanban Method is used by organizations to manage the creation of products with an emphasis on continual delivery while not overburdening the development team. Like Scrum, Kanban is a process designed to help teams work together more effectively.&#13;&#10;&#60;br /&#62;&#13;&#10;Kanban is based on 3 basic principles:&#13;&#10;&#60;br /&#62;&#13;&#10;Visualize what you do today (workflow): seeing all the items in context of each other can be very informative&#13;&#10;Limit the amount of work in progress (WIP): this helps balance the flow-based approach so teams don â€˜t start and commit to too much work at once.&#13;&#10;&#60;br /&#62;&#13;&#10;Enhance flow: when something is finished, the next highest thing from the backlog is pulled into play&#13;&#10;Kanban promotes continuous collaboration and encourages active, ongoing learning and improving by defining the best possible team workflow. See how VersionOne supports Kanban software development.&#13;&#10;&#60;br /&#62;&#13;&#10;Extreme Programming (XP)&#13;&#10;XP, originally described by Kent Beck, has emerged as one of the most popular and controversial agile methodologies. XP is a disciplined approach to delivering high-quality software quickly and continuously. It promotes high customer involvement, rapid feedback loops, continuous testing, continuous planning, and close teamwork to deliver working software at very frequent intervals, typically every 1-3 weeks.&#13;&#10;The original XP recipe is based on four simple values Â€Â“ simplicity, communication, feedback, and courage Â€Â“ and twelve supporting practices:&#13;&#10;&#60;br /&#62;&#13;&#10;Planning Game&#13;&#10;Small Releases&#13;&#10;Customer Acceptance Tests&#13;&#10;Simple Design&#13;&#10;Pair Programming&#13;&#10;Test-Driven Development&#13;&#10;Refactoring&#13;&#10;Continuous Integration&#13;&#10;Collective Code Ownership&#13;&#10;Coding Standards&#13;&#10;Metaphor&#13;&#10;Sustainable Pace&#13;&#10;Don Wells has depicted the XP process in a popular diagram.&#13;&#10;&#60;br /&#62;&#13;&#10;In XP, the â€œCustomerâ€ works very closely with the development team to define and prioritize granular units of functionality referred to as â€œUser Storiesâ€. The development team estimates, plans, and delivers the highest priority user stories in the form of working, tested software on an iteration-by-iteration basis. In order to maximize productivity, the practices provide a supportive, lightweight framework to guide a team and ensure high-quality software.&#13;&#10;&#60;br /&#62;&#13;&#10;Crystal&#13;&#10;&#60;br /&#62;&#13;&#10;The Crystal methodology is one of the most lightweight, adaptable approaches to software development. Crystal is actually comprised of a family of agile methodologies such as Crystal Clear, Crystal Yellow, Crystal Orange and others, whose unique characteristics are driven by several factors such as team size, system criticality, and project priorities. This Crystal family addresses the realization that each project may require a slightly tailored set of policies, practices, and processes in order to meet the project â€˜s unique characteristics.&#13;&#10;Several of the key tenets of Crystal include teamwork, communication, and simplicity, as well as reflection to frequently adjust and improve the process. Like other agile process methodologies, Crystal promotes early, frequent delivery of working software, high user involvement, adaptability, and the removal of bureaucracy or distractions. Alistair Cockburn, the originator of Crystal, has released a book, Crystal Clear: A Human-Powered Methodology for Small Teams.&#13;&#10;&#60;br /&#62;&#13;&#10;Dynamic Systems Development Method (DSDM)&#13;&#10;DSDM, dating back to 1994, grew out of the need to provide an industry standard project delivery framework for what was referred to as Rapid Application Development (RAD) at the time. While RAD was extremely popular in the early 1990 â€˜s, the RAD approach to software delivery evolved in a fairly unstructured manner. As a result, the DSDM Consortium was created and convened in 1994 with the goal of devising and promoting a common industry framework for rapid software delivery. Since 1994, the DSDM methodology has evolved and matured to provide a comprehensive foundation for planning, managing, executing, and scaling agile process and iterative software development projects.&#13;&#10;&#60;br /&#62;&#13;&#10;DSDM is based on nine key principles that primarily revolve around business needs/value, active user involvement, empowered teams, frequent delivery, integrated testing, and stakeholder collaboration. DSDM specifically calls out â€œfitness for business purposeâ€ as the primary criteria for delivery and acceptance of a system, focusing on the useful 80% of the system that can be deployed in 20% of the time.&#13;&#10;&#60;br /&#62;&#13;&#10;Requirements are baselined at a high level early in the project. Rework is built into the process, and all development changes must be reversible. Requirements are planned and delivered in short, fixed-length time-boxes, also referred to as iterations, and requirements for DSDM projects are prioritized using MoSCoW Rules:&#13;&#10;&#60;br /&#62;&#13;&#10;M â€“ Must have requirements&#13;&#10;S â€“ Should have if at all possible&#13;&#10;C â€“ Could have but not critical&#13;&#10;W â€“ Won â€˜t have this time, but potentially later&#13;&#10;&#13;&#10;All critical work must be completed in a DSDM project. It is also important that not every requirement in a project or time-box is considered critical. Within each time-box, less critical items are included so that if necessary, they can be removed to keep from impacting higher priority requirements on the schedule.&#13;&#10;The DSDM project framework is independent of, and can be implemented in conjunction with, other iterative methodologies such as Extreme Programming and the Rational Unified Process.&#13;&#10;&#60;br /&#62;&#13;&#10;Feature-Driven Development (FDD)&#13;&#10;The FDD variant of agile methodology was originally developed and articulated by Jeff De Luca, with contributions by M.A. Rajashima, Lim Bak Wee, Paul Szego, Jon Kern and Stephen Palmer. The first incarnations of FDD occurred as a result of collaboration between De Luca and OOD thought leader Peter Coad. FDD is a model-driven, short-iteration process. It begins with establishing an overall model shape. Then it continues with a series of two-week â€œdesign by feature, build by featureâ€ iterations. The features are small, â€œuseful in the eyes of the clientâ€ results. FDD designs the rest of the development process around feature delivery using the following eight practices:&#13;&#10;&#60;br /&#62;&#13;&#10;Domain Object Modeling&#13;&#10;Developing by Feature&#13;&#10;Component/Class Ownership&#13;&#10;Feature Teams&#13;&#10;Inspections&#13;&#10;Configuration Management&#13;&#10;Regular Builds&#13;&#10;Visibility of progress and results&#13;&#10;FDD recommends specific programmer practices such as â€œRegular Buildsâ€ and â€œComponent/Class Ownershipâ€. FDDâ€™s proponents claim that it scales more straightforwardly than other approaches, and is better suited to larger teams. Unlike other agile methods, FDD describes specific, very short phases of work, which are to be accomplished separately per feature. These include Domain Walkthrough, Design, Design Inspection, Code, Code Inspection, and Promote to Build.&#13;&#10;&#60;br /&#62;&#13;&#10;The notion of â€œDomain Object Modelingâ€ is increasingly interesting outside the FDD community, following the success of Eric Evansâ€™ book Domain-Driven Design.', '2.jpg', 26, '2018-04-21 00:16:00', 4, NULL, 0, 0),
(17, 'WE STARTED FROM  SCRATCH', 'Hello Wold!', 'It was 15 January, we&#39;ve had a great teacher, a great company behind us, and our first line of code &#60;?= Hello World! ?&#62;. And today, we are proud to say that we&#39;ve just created our first MVC project. &#13;&#10;It was hard at first! Tears, smiles, hard work, and now we are here, nearly at the end of our journey. We worked as a team of 4 for our last project, and together we developed our first MVC product.&#13;&#10;Before starting the program, I wasnâ€™t really sure what to expect from it; I knew that the team would consist of myself, and 15 other women for 15 weeks, beginning with 15 January.&#13;&#10;Looking back at the past few months and everything that we accomplished, it feels like it went on for much longer than it did; we covered so much ground during those 15 weeks that covering the whole experience in one blog post would have been next to impossible.&#13;&#10;&#13;&#10;IMPORTANT POINT READ IT: keep in mind that the first 2 months will feel like you are climbing an insurmountable mountain. Every course, tutorial,  or lesson you do will make you feel like you are the only person in the world that doesnâ€™t know this stuff. Stay strong. You will get there and you will have more and more â€˜AHA!â€™ moments as time progresses. We call this the Impostorâ€™s Syndrome: where you feel like you are the only one who doesnâ€™t know this information and you are surrounded by self-doubt. Rest assured we all feel this way when we learn something new.&#13;&#10;&#13;&#10;What you will learn is that being a good developer isnâ€™t necessarily memorizing a whole bunch of documentation. Itâ€™s about learning how to solve problems using all of the tools that are available to you. Itâ€™s about being a problem solver and getting from a state of not knowing to knowing.&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;&#13;&#10;', 'hello.gif', 26, '2018-04-21 00:55:00', 4, NULL, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogpost`
--
ALTER TABLE `blogpost`
  ADD PRIMARY KEY (`blogPostID`),
  ADD UNIQUE KEY `blogPostID_UNIQUE` (`blogPostID`),
  ADD KEY `fk_blogPost_blogUser_idx` (`blogUser_blogUserID`),
  ADD KEY `fk_blogPost_category1_idx` (`category_categoryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogpost`
--
ALTER TABLE `blogpost`
  MODIFY `blogPostID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
