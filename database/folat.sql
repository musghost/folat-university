-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2015 at 06:42 AM
-- Server version: 5.6.11-log
-- PHP Version: 5.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `folat`
--
CREATE DATABASE IF NOT EXISTS `folat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `folat`;

-- --------------------------------------------------------

--
-- Table structure for table `folat_categories`
--

DROP TABLE IF EXISTS `folat_categories`;
CREATE TABLE IF NOT EXISTS `folat_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(128) NOT NULL,
  `cat_description` text NOT NULL,
  `cat_slug` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `folat_categories`
--

INSERT INTO `folat_categories` (`id`, `cat_name`, `cat_description`, `cat_slug`) VALUES
(1, 'Technology', 'Courses related to science and technology', 'technology'),
(2, 'Languages', 'Courses related to languages', 'languages'),
(4, 'Arts', 'courses related to the arts', 'arts'),
(5, 'Health And Fitness', 'Courses related to Health', 'health-and-fitness');

-- --------------------------------------------------------

--
-- Table structure for table `folat_content_text_slides`
--

DROP TABLE IF EXISTS `folat_content_text_slides`;
CREATE TABLE IF NOT EXISTS `folat_content_text_slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `order_num` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `refs` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `folat_content_text_slides`
--

INSERT INTO `folat_content_text_slides` (`id`, `module_id`, `order_num`, `length`, `title`, `body`, `refs`) VALUES
(1, 1, 1, 5, 'A little bit of History', 'PHP development began in 1994 when Rasmus Lerdorf wrote a series of Common Gateway Interface (CGI) binaries in C, which he used to maintain his personal homepage. He extended them to add the ability to work with web forms and to communicate with databases, and called this implementation "Personal Home Page/Forms Interpreter" or PHP/FI.', 'Wikipedia. 2014. PHP [Online]. Available at: http://en.wikipedia.org/wiki/PHP#History [Accessed: 22 Jan 2015].'),
(2, 1, 2, 5, 'A little bit more History', 'PHP/FI could be used to build simple, dynamic web applications. Lerdorf initially announced the release of PHP/FI as "Personal Home Page Tools (PHP Tools) version 1.0" publicly to accelerate bug location and improve the code, on the Usenet discussion group comp.infosystems.www.authoring.cgi on June 8, 1995.<br/>This release already had the basic functionality that PHP has as of 2013. This included Perl-like variables, form handling, and the ability to embed HTML. The syntax resembled that of Perl but was simpler, more limited and less consistent.', 'Wikipedia. 2014. PHP [Online]. Available at: http://en.wikipedia.org/wiki/PHP#History [Accessed: 22 Jan 2015].'),
(3, 1, 3, 5, 'How PHP Works', 'PHP is a Server Side Scripting language. This means that everything it does happens before the web-page is sent to the user''s browser. It''s like a middle man between the database and the web-server. <br/><br/>The database (MySQL) stores all of your websites data and PHP retrieves that data to build HTML pages.<br/><br/>So when the user visits a URL, they are sending a request to the server. All PHP does is builds an HTML response for that request. The web server then passes the rendered HTML page (the response) to the users browser and Voila!', ''),
(4, 2, 1, 3, 'Installing and configuring PHP', 'If you already have your development set up you can skip this module. <br/>There are many ways to install PHP and get it running on your development computer.However, we will focus on the easiest way to install PHP and get it working with a local web server (Apache) and a local database server (MySql). This is known as a LAMP stack; which stands for Linux, Apache, MySql, PHP. You might also see LAMPP stack where the second P can stand for Pearl or Python but we won''t need to worry about those Languages for this course. If you are running on a Windows or a Mac machine you will need to install the WAMP versions for Windows and MAMP versions for Mac.', ''),
(5, 2, 3, 3, 'Installing and configuring PHP Part 3', 'If you''ve downloaded and installed your XAMP stack (the X can be L,W, or M depending on your Operating System), than you should be able to access your localhost and view pages programed in PHP. If you don''t have a test page it''s very easy to create one. In your localhost''s public directory (this could be httpdocs/ or localweb/) add a file called test.php and add the following code to it. <br/><br/><pre class="linenums">&lt;?php<br/>phpinfo();<br/>?&gt;<br/></pre><br/>Now save the page and go to your localhost''s URL. This might be something like http://localhost/test.php<br/><br/>You should see a generated PHP info page with all of the information related to your server''s PHP installation. If you don''t see anything than there might be a problem with your XAMP stack installation. Refer to the documentation for your particular provider for help with troubleshooting any problems.', 'http://www.easyphp.org/ http://www.mamp.info/'),
(15, 4, 1, 5, 'The coolest thing I''ve ever done.', 'The coolest thing I''ve ever done is jump off a burning truck onto a helicopter while texting my mom about dinner.', 'Watch my movies dammit!'),
(16, 4, 2, 5, 'Hottest Chicks I''ve ever dated', 'One of the hottest chicks I''ve ever dated was Cameron Díaz.', 'Vanilla Sky'),
(17, 1, 5, 5, 'What Makes PHP So Great?', 'PHP became popular for web programming because of it''s small learning curve and ease of use. Unlike other programming languages that have to be compiled, PHP can just run directly on the server; just FTP the file to the server and view the results. <br/><br/>Additionally, other languages may need special OBDC drivers to be installed to work with popular database engines like MySQL. PHP works right out of the box with these types of databases and you can even use tools like PHPMyAdmin to easily edit and manage your databases. <br/><br/>PHP has been around since 1995 and has grown an extensive user base, great documentation, examples, tutorials, and a novice-friendly community that is always willing to help. Many popular CMS''s and Frameworks like Wordpress, Drupal, Joomla, Symfony, CodeIgniter, and Prestashop all run on PHP.<br/><br/>Since PHP is stable on both Linux and Windows, many web servers have support for it and there is no problem to find hosting with Apache, MySQL, and PHP pre-installed.', ''),
(18, 2, 2, 5, 'Installing and configuring PHP Part 2', 'There are a variety of providers that let you download a free installer program that requires very little configuration (if any). Two of the most popular ones are http://www.easyphp.org/ for windows users and http://www.mamp.info/ for mac users. Be sure to download the correct version for your processor (x86 or 64bit).  MAMP offers a free and Pro version but the free version should be enough if you are just learning. Go ahead and download the installer for your OS and run it to install your Apache web-server with PHP and MySQL. (* If you are running Mac OS X Yosemite you should be able to use the included Apache / PHP /MySQL configuration.)', 'http://www.easyphp.org/<br/>http://www.mamp.info/'),
(19, 2, 4, 5, 'Installing and configuring PHP Part 4', 'If you created the test.php file in the 3rd step you should be able to see all of your PHP installation variables. The one we are concerned with now is called the <strong>Loaded Configuration File</strong> and will tell you the location of your php.ini file. The php.ini is a configuration file that lets you change how PHP will run on your server. Since this is a local server for development purposes, we will activate the <strong>error_reporting</strong> setting by setting it to <strong>E_ALL</strong>. Make sure there is not a <strong>;</strong> before the error_reporting variable or it will be ignored. <br/>Also make sure the display_errors is set to on.<br/>The setting in php.ini should look like this<br/><br/><pre>error_reporting = E_ALL</pre><br/>...<br/><pre>display_errors = On</pre><br/><br/>These errors will help greatly when troubleshooting your code as it will provide some clues as to where and when the errors occurred.', ''),
(20, 3, 1, 5, 'Hello World', 'Let''s start with the simplest thing: A "Hello World" application. <br/><br/>We are going to create a simple php script which prints out some text. <br/>Start by creating a file in your localhost directory called hello_world.php.<br/><br/>In it, we are going to start with the open and close tags for php <br/><pre>&lt;?php <br/><br/>?&gt;<br/></pre><br/>Everything inside the open and close tags will be treated as PHP. This is called Parsing PHP which simply means that the Web Server will read this information before the rest of the text on your page such as HTML, Javascript, or regular text. It will not be displayed to the user in the resulting web page or in the source code. You can test this by saving the file as it is now and going to http://localhost/hello_world.php  (or wherever you saved the document) and you should get a nice blank page. If you inspect the source code by right clicking anywhere on the page and selecting "view page source" you will see that no PHP code is visible. Now let''s add some text.', ''),
(21, 3, 2, 5, 'Hello World - displaying the text', 'In order to write text to our document we will use the <strong>echo</strong> command to output our text string to the page. Update your hello_world.php file like so:<br/><pre>&lt;?php <br/>    echo ''Hello World'';<br/>?&gt;<br/></pre><br/>Now save the file and visit the url for the file again: http://localhost/hello_world.php and you should see the text displayed. Great! now let''s look at the syntax. when you echo a string (a line of text) to the page it should always be in single or double quotes. If you don''t wrap your text string with quotes or double quotes, PHP will give you a syntax error. Also, you should always end the command with a ; (semicolon). Since our script only has one line of code, we could get away with leaving out the semicolon at the end, however it is always a good practice to end your commands with semicolons, in case you add more lines of code later.', ''),
(22, 3, 3, 5, 'Hello World - creating a variable', 'Now let''s try something else. Let''s define a string variable to hold some data and then use it in our echo command. create a new variable called $name like so:<br/><pre>&lt;?php<br/>   $name = ''Joe'';<br/>   echo ''Hello World'';<br/>?&gt;<br/></pre><br/>In PHP, variables are just containers for things such as text (strings), numbers (integers, floats, etc.), and other types of data. Variable names always start with a $ (dollar sign) as this identifies them as data containers and not functions. We will get to functions later.<br/><br/>The $name variable has been created but doesn''t actually do anything yet. Let''s add it to our echo statement so that it get''s displayed: <br/><pre>&lt;?php<br/>   $name = ''Joe'';<br/>   echo ''Hello World and ''.$name;<br/>?&gt;<br/></pre><br/>We have used a . (period), to add the contents of our variable "Joe" to the end of the string. If you save the file and refresh your browser you should now see "Hello World and Joe". Great! You''ve used your first variable to store and present data to the screen.', ''),
(33, 3, 4, 5, 'Hello World - using a request variable', 'Now let''s use a request passed through the URL to assign a value to our $name variable. The type of request we will be using is called GET and PHP reads the value using the built in $_GET array. We will cover arrays later but for now just know that it is a special type of variable that can store more than one value. <br/><br/>For example, if our URL is http://localhost/hello_world.php?name=bob<br/>PHP will be able to access the value of name (bob) by reading the contents of $_GET[''name'']. <br/><br/>So let''s update our code to use this method. <br/><pre>&lt;?php<br/>    $name = $_GET[''name''];<br/>    echo ''Hello ''.$name;<br/>?&gt;<br/></pre><br/><br/>Now when you go to http://localhost/hello_world.php?name=Bob<br/>you should see "Hello Bob" output to the screen. Try changing the name to something else to see the GET variable in action.', 'http://www.w3schools.com/tags/ref_httpmethods.asp'),
(34, 16, 1, 2, 'What is a Subject Pronoun?', '<p>A subject pronoun is a personal pronoun that is used as the subject of a verb. These are the subject pronouns we will use in this course:</p>\r\n<table width="332">\r\n<tbody>\r\n<tr>\r\n<td>1rst Person (sing.):</td>\r\n<td><em>I</em></td>\r\n<td><strong>Je</strong></td>\r\n</tr>\r\n<tr>\r\n<td>2nd Person (sing.):</td>\r\n<td><em>You</em></td>\r\n<td><strong>Vous</strong></td>\r\n</tr>\r\n<tr>\r\n<td>3rd Person (masc.):</td>\r\n<td><em>He</em></td>\r\n<td><strong>Il</strong></td>\r\n</tr>\r\n<tr>\r\n<td>3rd Person (fem.):</td>\r\n<td><em>She</em></td>\r\n<td><strong>Elle</strong></td>\r\n</tr>\r\n<tr>\r\n<td>3rd Person (thing):</td>\r\n<td><em>It</em></td>\r\n<td><strong>Il</strong></td>\r\n</tr>\r\n<tr>\r\n<td>1rst Person (plural):&nbsp;</td>\r\n<td><em>We</em></td>\r\n<td><strong>Nous</strong></td>\r\n</tr>\r\n<tr>\r\n<td>2nd Person (plural):</td>\r\n<td><em>You</em></td>\r\n<td><strong>Vous</strong></td>\r\n</tr>\r\n<tr>\r\n<td>3rd Person (plural):</td>\r\n<td><em>They</em></td>\r\n<td><strong>Ils</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'http://en.wikipedia.org/wiki/Subject_pronoun'),
(35, 16, 2, 1, 'Examples - Je', '<table>\r\n<tbody>\r\n<tr>\r\n<td><em>I am a man</em></td>\r\n<td>&nbsp;<strong>Je suis un homme.</strong></td>\r\n</tr>\r\n<tr>\r\n<td><em>I like walking </em></td>\r\n<td><strong>J''aime marcher.</strong></td>\r\n</tr>\r\n<tr>\r\n<td><em>I have money</em></td>\r\n<td>&nbsp;<strong>J''ai de l''argent.</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>* Notice that <strong>Je</strong> is contracted when the next word starts with a vowel. The e is dropped and an apostrophe '' joins the two words. <br /><em>I like</em> &nbsp; &nbsp; <strong>Je + aime = j''aime </strong><br /><em>I have</em> &nbsp; &nbsp; <strong>Je + ai = j''ai </strong></p>', ''),
(36, 16, 3, 1, 'Examples - vous', '<table>\r\n<tbody>\r\n<tr>\r\n<td><em>You are a woman.</em></td>\r\n<td><strong>Vous &ecirc;tes une femme.</strong></td>\r\n</tr>\r\n<tr>\r\n<td><em>You have food </em></td>\r\n<td><strong>Vous avez de la nourriture.</strong></td>\r\n</tr>\r\n<tr>\r\n<td><em>You are a child.</em></td>\r\n<td><strong>Tu es un enfant.</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>* The informal version of <strong>vous</strong> is <strong>tu</strong> and should only be used when talking to children or people you are close to.</p>', ''),
(37, 16, 4, 1, 'Examples - il', '<table>\r\n<tbody>\r\n<tr>\r\n<td><em>He is tall. </em></td>\r\n<td><strong>Il est grand.</strong></td>\r\n</tr>\r\n<tr>\r\n<td><em>He has blue eyes.</em></td>\r\n<td><strong>Il a les yeux bleus</strong></td>\r\n</tr>\r\n<tr>\r\n<td><em>He drinks coffee.</em></td>\r\n<td><strong>Il boit du caf&eacute;.</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><em><br /><br /></em>&nbsp;&nbsp;<br />&nbsp; &nbsp; &nbsp;<br />&nbsp; &nbsp; &nbsp;</p>', ''),
(38, 16, 5, 1, 'Examples - elle', '<table>\r\n<tbody>\r\n<tr>\r\n<td><em>She is pretty.</em></td>\r\n<td><strong>Elle est jolie.</strong></td>\r\n</tr>\r\n<tr>\r\n<td><em>She takes pictures.</em></td>\r\n<td><strong>Elle prend des photos.</strong></td>\r\n</tr>\r\n<tr>\r\n<td><em>She eats bread.</em></td>\r\n<td><strong>Elle mange du pain. &nbsp; &nbsp;</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp; &nbsp;</p>', ''),
(39, 16, 6, 1, 'Examples - il (it)', '<table>\r\n<tbody>\r\n<tr>\r\n<td><em>It is raining.</em></td>\r\n<td><strong><em>Il pleut.</em></strong></td>\r\n</tr>\r\n<tr>\r\n<td><em>It has blue wheels.</em></td>\r\n<td><strong><em>Il a des roues bleu.</em></strong></td>\r\n</tr>\r\n<tr>\r\n<td><em>It is red.</em></td>\r\n<td><strong><em>Il est rouge.</em></strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp; &nbsp; &nbsp;</p>', ''),
(40, 16, 7, 1, 'Examples - nous', '<table>\r\n<tbody>\r\n<tr>\r\n<td>We are a family.</td>\r\n<td><strong>Nous sommes une famille.</strong></td>\r\n</tr>\r\n<tr>\r\n<td>We have a car.</td>\r\n<td><strong>Nous avons une voiture.</strong></td>\r\n</tr>\r\n<tr>\r\n<td><em>We eat dinner.</em></td>\r\n<td><strong>Nous mangeons le d&icirc;ner.</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>', ''),
(41, 16, 8, 1, 'Examples - vous (plural)', '<table width="534">\n<tbody>\n<tr>\n<td>(plural, males or mixed)</td>\n<td><em>You [all] are big.</em></td>\n<td><strong>Vous &ecirc;tes grands</strong></td>\n</tr>\n<tr>\n<td>(plural, only females)</td>\n<td><em>You [all] are big.</em></td>\n<td><strong>Vous &ecirc;tes grandes</strong></td>\n</tr>\n</tbody>\n</table>\n<p>* "When referring to more than one person in the 2nd person, <strong>vous</strong> must be used. When referring to a single person, <strong>vous</strong> or <strong>tu</strong> may be used depending on the situation. Tu is informal and used only with well-known acquaintances. In case of unknown persons you have to use the polite form <strong>vous</strong>."<br /><br />*<strong>Vous</strong>&nbsp;(<em>you)</em> behaves similar in the plural as it does in the singular, however the verb endings will change depending on who you''re talking to/about.</p>', 'http://en.wikibooks.org/wiki/French/Grammar/Pronouns'),
(42, 16, 9, 1, 'Examples - ils', '<table>\r\n<tbody>\r\n<tr>\r\n<td><em>They are students.</em></td>\r\n<td><strong>Ce sont des &eacute;tudiants.</strong></td>\r\n</tr>\r\n<tr>\r\n<td><em>They have books.</em></td>\r\n<td><strong>Ils ont des livres.</strong></td>\r\n</tr>\r\n<tr>\r\n<td><em>They read them.</em></td>\r\n<td><strong>Ils les lisent.</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>', ''),
(43, 17, 1, 5, 'What is a pronoun?', 'Pronouns can be defined as "...words found in many languages that are used as replacements or substitutes for nouns and noun phrases, and that have very general reference, as I, you, he, this, who, what."<br/><br/>Usually, the noun (person, place, or thing) that the pronoun is referring to is understood or has already been mentioned in the same sentence or a previous sentence.<br/><br/>Now that you understand what a pronoun is, we can learn some of these words in french and how to use these important words to build sentences.', 'http://dictionary.reference.com/browse/pronoun'),
(44, 18, 1, 3, 'What is an object pronoun?', '<p>An object pronoun can be defined as "a personal pronoun&nbsp;that is used as&nbsp;the direct or indirect object of a verb, or the object of a preposition."</p>\r\n<p>For example:(me)</p>\r\n<ul>\r\n<li>Direct object - "They see <strong>me</strong>"</li>\r\n<li>Indirect object - "He''s giving <strong>me</strong> my book"</li>\r\n<li>Object of a preposition - "Sit with <strong>me</strong>"</li>\r\n</ul>\r\n<table width="429">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Direct</td>\r\n<td>Indirect</td>\r\n</tr>\r\n<tr>\r\n<td>1rst Person (sing.):</td>\r\n<td><em>me</em></td>\r\n<td><strong>me</strong></td>\r\n<td><strong>me</strong></td>\r\n</tr>\r\n<tr>\r\n<td>2nd Person (sing.):</td>\r\n<td><em>you</em></td>\r\n<td><strong>te</strong></td>\r\n<td><strong>te</strong></td>\r\n</tr>\r\n<tr>\r\n<td>3rd Person (masc.):</td>\r\n<td>him</td>\r\n<td><strong>le</strong></td>\r\n<td><strong>lui</strong></td>\r\n</tr>\r\n<tr>\r\n<td>3rd Person (fem.):</td>\r\n<td><em>her</em></td>\r\n<td><strong>la</strong></td>\r\n<td><strong>lui</strong></td>\r\n</tr>\r\n<tr>\r\n<td>3rd Person (thing):</td>\r\n<td><em>it</em></td>\r\n<td><strong>le, la</strong></td>\r\n<td><strong>le, la</strong></td>\r\n</tr>\r\n<tr>\r\n<td>1rst Person (plural):&nbsp;</td>\r\n<td><em>us</em></td>\r\n<td><strong>nous</strong></td>\r\n<td><strong>nous</strong></td>\r\n</tr>\r\n<tr>\r\n<td>2nd Person (plural):</td>\r\n<td><em>you</em></td>\r\n<td><strong>vous</strong></td>\r\n<td><strong>vous</strong></td>\r\n</tr>\r\n<tr>\r\n<td>3rd Person (plural):</td>\r\n<td><em>them</em></td>\r\n<td><strong>les</strong></td>\r\n<td><strong>leur</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'http://en.wikipedia.org/wiki/Object_pronoun'),
(45, 18, 2, 1, 'Examples - Direct Object Pronouns', '*The direct pronoun indicates <u>who or what</u> is receiving the action of the verb.<br />\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td><em>He&nbsp;hit <u>him</u>.</em></td>\r\n<td><strong>Il a frapp&eacute; <u>lui.</u></strong></td>\r\n</tr>\r\n<tr>\r\n<td><em>She reads<u> it</u> &nbsp;</em></td>\r\n<td><strong>Elle <u>le</u> lut.</strong></td>\r\n</tr>\r\n<tr>\r\n<td><em>We studied <u>them</u>.&nbsp;</em></td>\r\n<td><strong>Nous <u>les</u> avons &eacute;tudi&eacute;s.</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br /><strong><br /></strong>', ''),
(46, 18, 3, 2, 'Examples - Indirect Object Pronouns', '<br />The indirect object answers the question "To who?" or "For who?" the verb is performed. It tells us where the direct object is going.\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Direct Obj.</td>\r\n<td>Indirect Obj.</td>\r\n</tr>\r\n<tr>\r\n<td>He gives <u>me</u> the book.</td>\r\n<td><strong>Il <u>me</u> donne le livre.</strong></td>\r\n<td>book</td>\r\n<td>me</td>\r\n</tr>\r\n<tr>\r\n<td>He buys <u>her</u> flowers.</td>\r\n<td><strong>Il <u>lui</u> ach&egrave;te des fleurs.</strong></td>\r\n<td>flowers</td>\r\n<td>her</td>\r\n</tr>\r\n<tr>\r\n<td>We told <u>them</u> the story.</td>\r\n<td><strong>Nous <u>leur</u> avons dit l''histoire.</strong></td>\r\n<td>story</td>\r\n<td>them</td>\r\n</tr>\r\n</tbody>\r\n</table>', ''),
(47, 18, 4, 5, 'Examples - Object of a Preposition', 'When a pronoun is used as the object of a preposition (in, on, above, at, to, by, etc.) the pronoun usually comes after the preposition.&nbsp;<br /><br />\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Preposition</td>\r\n<td>Pronoun</td>\r\n</tr>\r\n<tr>\r\n<td><em>The mouse ran&nbsp;under <u>us</u>.</em></td>\r\n<td><strong>La souris a couru en dessous de <u>nous</u>.</strong></td>\r\n<td>\r\n<p>under</p>\r\n</td>\r\n<td>us</td>\r\n</tr>\r\n<tr>\r\n<td><em>Can you give this to <u>him</u>?</em></td>\r\n<td><strong>Pouvez-vous donner cela &agrave; <u>lui</u>?</strong></td>\r\n<td>\r\n<p>to</p>\r\n</td>\r\n<td>him</td>\r\n</tr>\r\n<tr>\r\n<td><em>We went with <u>her</u>.</em></td>\r\n<td><strong>Nous sommes all&eacute;s avec <u>elle</u>.</strong></td>\r\n<td>with</td>\r\n<td>her</td>\r\n</tr>\r\n</tbody>\r\n</table>', ''),
(48, 19, 1, 5, 'What is a Possesive Pronoun?', 'We use possessive pronouns to signify ownership of something&nbsp;by someone.<br />\r\n<table width="429">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Masc.</td>\r\n<td>Fem.</td>\r\n</tr>\r\n<tr>\r\n<td>1rst Person (sing.):</td>\r\n<td><em>mine</em></td>\r\n<td><strong>le&nbsp;mien</strong></td>\r\n<td><strong>la&nbsp;mienne</strong></td>\r\n</tr>\r\n<tr>\r\n<td>2nd Person (sing.):</td>\r\n<td><em>yours</em></td>\r\n<td><strong>le&nbsp;tien</strong></td>\r\n<td><strong>la&nbsp;tienne</strong></td>\r\n</tr>\r\n<tr>\r\n<td>3rd Person (masc.):</td>\r\n<td>his</td>\r\n<td><strong>le sien</strong></td>\r\n<td><strong>la&nbsp;sienne</strong></td>\r\n</tr>\r\n<tr>\r\n<td>3rd Person (fem.):</td>\r\n<td><em>hers</em></td>\r\n<td><strong>le sien</strong></td>\r\n<td><strong>la&nbsp;sienne</strong></td>\r\n</tr>\r\n<tr>\r\n<td>1rst Person (plural):&nbsp;</td>\r\n<td><em>ours</em></td>\r\n<td><strong>le&nbsp;notre</strong></td>\r\n<td><strong>la notre</strong></td>\r\n</tr>\r\n<tr>\r\n<td>2nd Person (plural):</td>\r\n<td><em>yours</em></td>\r\n<td><strong>le&nbsp;votre</strong></td>\r\n<td><strong>la votre</strong></td>\r\n</tr>\r\n<tr>\r\n<td>3rd Person (plural):</td>\r\n<td><em>theirs</em></td>\r\n<td><strong>le&nbsp;leur</strong></td>\r\n<td><strong>la&nbsp;leur</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>', ''),
(49, 22, 1, 5, 'Different kinds of tortillas', 'There are many different species of tortillas. Some are made of flower, some are made of corn, blue corn, or even bread. The more popular ones are obviously the first two.&nbsp;', 'The taco bible');

-- --------------------------------------------------------

--
-- Table structure for table `folat_courses`
--

DROP TABLE IF EXISTS `folat_courses`;
CREATE TABLE IF NOT EXISTS `folat_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_category_id` int(11) NOT NULL,
  `course_subcat_id` int(11) NOT NULL,
  `course_lang` varchar(45) NOT NULL,
  `course_teacher_id` int(11) NOT NULL,
  `course_title` varchar(128) NOT NULL,
  `course_slug` varchar(145) NOT NULL,
  `course_description` text NOT NULL,
  `enrollment_status` int(3) NOT NULL DEFAULT '0',
  `course_featured` tinyint(1) NOT NULL DEFAULT '0',
  `course_length` int(11) NOT NULL DEFAULT '0',
  `course_image` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_category_id` (`course_category_id`),
  KEY `course_subcat_id` (`course_subcat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `folat_courses`
--

INSERT INTO `folat_courses` (`id`, `course_category_id`, `course_subcat_id`, `course_lang`, `course_teacher_id`, `course_title`, `course_slug`, `course_description`, `enrollment_status`, `course_featured`, `course_length`, `course_image`) VALUES
(1, 1, 1, 'english', 1, 'Introduction to PHP programming', 'introduction-to-php-programming', 'Short course to help new programmers get started in PHP programming. We will only cover the essentials in this course so if you are an intermediate or advanced programmer, than this is probably not for you. \r\n\r\nIf you are a beginner in programming or just want to get started in PHP than you are in the right place! I will go step-by-step through the creation of simple web scripts that will help you grasp the basics quickly. ', 1, 1, 0, 'folat_course_1.png'),
(2, 2, 2, 'english', 1, 'French 101', 'french-101', 'If you would like to start learning French, this course will get you off to a great start! Learn the basics of grammar, vocabulary, and how to carry on a conversation in French. This is not like most other courses that just teach you a few common phrases and make you memorize a bunch of vocabulary that you will never be able to use. We will start with the most important words for understanding basic sentences and then move on to creating your own phrases that communicate what you are thinking or respond to a question. This way you will learn the language from bottom to top, with a strong foundation on which to build and learn more complex French later on. Let''s get started, Bonne Chance!', 1, 1, 0, 'folat_course_2.png'),
(3, 1, 1, 'english', 1, 'Javascript 101', 'javascript-101', 'Short introduction to programming in Javascript.', 0, 1, 0, ''),
(4, 2, 3, 'english', 1, 'English Grammar', 'english-grammar', 'Introduction to the English Language.', 2, 0, 0, ''),
(6, 1, 4, 'english', 1, 'Web Design Fundamentals', 'web-design-fundamentals', 'The basics of Web Design', 0, 0, 0, ''),
(7, 1, 1, 'english', 1, 'MySQL Databases', 'mysql-databases', 'How to use MySQL as a database engine for your apps and websites.', 0, 0, 0, ''),
(27, 4, 5, 'english', 3, 'Scientology 101', 'Scientology-101', 'Sooo Coool!!!', 0, 0, 0, ''),
(28, 1, 4, 'english', 1, 'SASS for CSS', 'sass-for-css', 'A short course on sass', 0, 0, 0, ''),
(30, 4, 5, 'english', 8, 'How to make a taco', 'how-to-make-a-taco', 'How to make a delicious taco!', 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `folat_enrollment`
--

DROP TABLE IF EXISTS `folat_enrollment`;
CREATE TABLE IF NOT EXISTS `folat_enrollment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `enrollment_date` datetime NOT NULL,
  `status` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `folat_enrollment`
--

INSERT INTO `folat_enrollment` (`id`, `user_id`, `course_id`, `enrollment_date`, `status`) VALUES
(10, 1, 2, '2015-02-12 23:40:29', 'Active'),
(11, 4, 28, '2015-02-14 21:46:09', 'Active'),
(12, 4, 1, '2015-02-16 23:36:21', 'Active'),
(13, 4, 2, '2015-02-18 01:41:21', 'Active'),
(14, 1, 1, '2015-02-27 11:29:42', 'Active'),
(15, 8, 1, '2015-03-18 22:29:35', 'Active'),
(16, 8, 2, '2015-03-18 22:32:04', 'Active'),
(17, 8, 30, '2015-03-18 23:53:26', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `folat_instruct`
--

DROP TABLE IF EXISTS `folat_instruct`;
CREATE TABLE IF NOT EXISTS `folat_instruct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `folat_instruct`
--

INSERT INTO `folat_instruct` (`id`, `user_id`, `course_id`, `date`, `status`) VALUES
(1, 1, 1, '2014-10-01 00:00:00', 'Active'),
(2, 1, 2, '2014-10-02 00:00:00', 'Active'),
(3, 1, 3, '2014-11-27 01:19:54', 'Active'),
(4, 1, 4, '2014-11-27 01:25:48', 'Active'),
(6, 1, 6, '2015-01-16 18:51:48', 'Active'),
(7, 1, 7, '2015-01-19 10:51:23', 'Active'),
(27, 3, 27, '2015-01-28 00:53:52', 'Active'),
(28, 1, 28, '2015-03-18 10:00:49', 'Active'),
(30, 8, 30, '2015-03-18 23:41:41', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `folat_modules`
--

DROP TABLE IF EXISTS `folat_modules`;
CREATE TABLE IF NOT EXISTS `folat_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `chapter` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `summary` text NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `folat_modules`
--

INSERT INTO `folat_modules` (`id`, `course_id`, `type_id`, `title`, `chapter`, `section`, `summary`, `slug`) VALUES
(1, 1, 1, 'So What is PHP?', 1, 1, 'In this section, we will cover a short history of php and what has made it one of the most popular programming languages on the web.', 'so-what-is-php%3F'),
(2, 1, 1, 'Getting Started With PHP', 1, 2, 'In this section we will get our development environment set up to work with Apache,MySQL, and PHP', 'getting-started-with-php'),
(3, 1, 1, 'Let''s Start Programming!', 2, 1, 'In this module, we will start writing our first PHP script and cover some of the basic syntax that you will use regularly when programming in PHP.', 'lets-start-programming%21'),
(4, 27, 1, 'Why Scientology?', 1, 1, 'Because its awesome!!', 'why-scientology%3F'),
(16, 2, 1, 'Subject Pronouns', 1, 2, 'A look at Subject Pronouns.\nI, you, he, she, it, we, you, they', 'subject-pronouns'),
(17, 2, 1, 'Pronouns', 1, 1, 'This chapter covers the most common pronouns used in the french language. We will cover the four main types of pronouns (Subject, Object, Possessive, and Reflexive). Don''t worry if you don''t know what these are yet. It''s all explained in the lesson.', 'pronouns'),
(18, 2, 1, 'Object Pronouns', 1, 3, 'A look at Object Pronouns.\r\nme, you, him, her, it, us, you, them', 'object-pronouns'),
(19, 2, 1, 'Possessive Pronouns', 1, 4, 'A look at Possessive Pronouns.\r\nmine, yours, his, hers, its, ours, theirs', 'possessive-pronouns'),
(20, 2, 1, 'Reflexive Pronouns', 1, 5, 'A look at Reflexive Pronouns.', 'reflexive-pronouns'),
(21, 28, 1, 'Installando SASS', 1, 1, 'Como instalar SASS', 'installando-sass'),
(22, 30, 1, 'Step1 - The Tortilla', 1, 1, 'Selecting the right tortilla for your taco.', 'step1---the-tortilla');

-- --------------------------------------------------------

--
-- Table structure for table `folat_module_types`
--

DROP TABLE IF EXISTS `folat_module_types`;
CREATE TABLE IF NOT EXISTS `folat_module_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(145) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `folat_module_types`
--

INSERT INTO `folat_module_types` (`id`, `name`, `description`) VALUES
(1, 'Text Slides', 'Text slides consist of small slides of text, 2-3 paragraphs, paired with review questions. The review questions are presented at the end of the module. ');

-- --------------------------------------------------------

--
-- Table structure for table `folat_review_questions`
--

DROP TABLE IF EXISTS `folat_review_questions`;
CREATE TABLE IF NOT EXISTS `folat_review_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL,
  `question` varchar(145) NOT NULL,
  `answer` varchar(145) NOT NULL,
  `wrong_1` varchar(145) NOT NULL,
  `wrong_2` varchar(145) NOT NULL,
  `wrong_3` varchar(145) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `folat_review_questions`
--

INSERT INTO `folat_review_questions` (`id`, `slide_id`, `question`, `answer`, `wrong_1`, `wrong_2`, `wrong_3`) VALUES
(1, 1, 'Who was the original developer of PHP?', 'Rasmus Lerdorf', 'Professor Dumbledorf', 'Lee Raznof', 'George Washington'),
(2, 1, 'What does PHP stand for?', 'Personal Home Page', 'People Have Problems', 'Program Hex Paradigm', 'Pre Historic Phantoms'),
(4, 3, 'At what point does PHP run on the server?', 'Before the web page is sent to the user''s browser', 'After the web page is sent to the user''s browser', 'After the HTML has been created', 'None of these answers is correct'),
(5, 4, 'What does LAMP Stand for?', 'Linux, Apache, MySql, PHP', 'Log, Analyzing, Master, Person', 'Local, Apache, MySql, PHP', 'A thing that you plug into the wall'),
(6, 2, 'In what year was PHP Tools Version 1.0 Released to the public?', '1995', '1965', '1820', '2013'),
(7, 5, 'What does the phpinfo(); function do?', 'Generate a page with your server''s PHP configuration information.', 'Install PHP on your computer', 'Debug your PHP installation', ''),
(8, 15, 'What was I texting my mom about?', 'Dinner', 'Breakfast', '', ''),
(10, 16, 'What was one of the hottest girl''s I''ve dated?', 'Cameron Di­az', 'Pamela Anderson', 'Opra', 'Woopie Golberg'),
(14, 3, 'Which workflow is in the correct order?', 'User Request -> PHP Retrieves Data-> PHP Builds HTML Page -> Web Server Sends Response', 'User Request -> PHP Builds HTML Page -> PHP Retrieves Data -> Web Server Sends Response', 'Web Server Sends Response -> PHP Builds HTML Page -> PHP Retrieves Data -> User Request', 'User Request -> PHP Retrieves Data-> PHP Takes Coffee Break -> Web Server Sends Response'),
(15, 17, 'What is one of the reasons PHP has become so popular?', 'It natively supports OBDC type databases like MySQL', 'It requires drivers, lots of configuration, and compilers to work on the server.', 'It was the only thing available for web-programming at the time.', 'Poor documentation and an anti-noob community.'),
(22, 20, 'What does Parsing PHP mean?', 'The Web Server will read and  process the PHP code before the rest of the text in your file such as HTML, Javascript, or regular text.', 'The Web Server will read and  process the HTML, Javascript, or regular text before PHP.', '', ''),
(23, 21, 'When you use the echo command to print text to the page you should always wrap the text in _______?', 'single or double quotes', '&lt; and &gt; tags', '{ } Curly Braces', '( ) Parenthesis'),
(24, 21, 'In PHP, You should always end your lines of code with a _____ ?', '; Semicolon', '. Period', '! Exclamation Mark', '? Question Mark'),
(25, 22, 'Why should variable names always start with a $ (dollar sign)?', 'To tell PHP that it is a data container and not a function', 'To give it value', 'To signify importance', ''),
(26, 33, 'What is the correct code to assign the value of a variable using a GET request?', '<pre>$my_variable = $_GET[''my_variable''];</pre>', '<pre>$my_variable = $_GET(''my_variable'');</pre>', '<pre>$my_variable = $GET[''my_variable''];</pre>', '<pre>$my_variable = _GET[''my_variable''];</pre>'),
(27, 35, 'Translate: <strong>I</strong>', 'je', 'vous', 'il', 'elle'),
(28, 36, 'Translate: <strong>you</strong> (singular)', 'vous', 'il', 'elle', 'nous'),
(29, 37, 'Translate: <strong>He</strong>', 'il', 'elle', 'ils', 'vous'),
(30, 38, 'Translate: <strong>She</strong>', 'elle', 'il', 'nous', 'vous'),
(31, 39, 'Translate: <strong>it</strong>', 'il', 'elle', 'nous', 'vous'),
(32, 40, 'Translate: <strong>We</strong>', 'nous', 'vous', 'ils', 'elles'),
(33, 41, 'Translate: <strong>You</strong> (plural)', 'vous', 'ya''ll', 'vus', 'ils'),
(34, 42, 'Translate: <strong>they</strong>', 'ils', 'elles', 'nous', 'vous'),
(35, 43, 'A pronoun can be defined as _______?', 'Words that are used as replacements or substitutes for nouns and noun phrases.', 'Words that are used as replacements or substitutes for verbs and adjectives.', 'Words that are replacements of substitutes', ''),
(36, 34, 'A subject pronoun is ____?', 'a personal pronoun that is used as the subject of a verb.', 'a pronoun that is used as the action of the subject.', 'an adverb that has no subject', ''),
(37, 44, 'An object pronoun is _____?', 'a personal pronoun that is used as the direct or indirect object of a verb, or the object of a preposition.', 'personal pronoun that is used as the direct verb of a noun.', '', ''),
(38, 45, 'The direct pronoun indicates _____?', 'who or what is receiving the action of the verb.', 'the action of the verb', 'the personal pronoun doing the action.', ''),
(39, 46, 'The indirect object answers what questions?', '&quot;To who?&quot; or For &quot;who?&quot; the verb is performed. It tells us where the direct object is going.', '&quot;By who?&quot; the verb is performed. It tells us where the direct object comes from.', '', ''),
(40, 47, 'When a pronoun is used as the object of a preposition (in, on, above, at, to, by, etc.) the pronoun usually comes _____ the preposition.', 'after', 'before', '', ''),
(42, 49, 'What are the two most popular types of torillas made of?', 'Flower and Corn', 'Bread and Water', 'Fire and Ice', 'Concrete and Steel');

-- --------------------------------------------------------

--
-- Table structure for table `folat_review_results`
--

DROP TABLE IF EXISTS `folat_review_results`;
CREATE TABLE IF NOT EXISTS `folat_review_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `slide_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `question` text NOT NULL,
  `selected_answer` varchar(250) NOT NULL,
  `correct_answer` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=786 ;

--
-- Dumping data for table `folat_review_results`
--

INSERT INTO `folat_review_results` (`id`, `datetime`, `student_id`, `course_id`, `module_id`, `slide_id`, `question_id`, `is_correct`, `question`, `selected_answer`, `correct_answer`) VALUES
(644, '2015-03-15 09:03:49', 1, 2, 16, 34, 36, 1, 'A subject pronoun is ____?', 'a personal pronoun that is used as the subject of a verb.', 'a personal pronoun that is used as the subject of a verb.'),
(645, '2015-03-15 09:15:03', 1, 2, 17, 43, 35, 1, 'A pronoun can be defined as _______?', 'Words that are used as replacements or substitutes for nouns and noun phrases.', 'Words that are used as replacements or substitutes for nouns and noun phrases.'),
(646, '2015-03-15 09:22:14', 1, 2, 16, 34, 36, 1, 'A subject pronoun is ____?', 'a personal pronoun that is used as the subject of a verb.', 'a personal pronoun that is used as the subject of a verb.'),
(647, '2015-03-15 09:43:28', 1, 2, 16, 34, 36, 1, 'A subject pronoun is ____?', 'a personal pronoun that is used as the subject of a verb.', 'a personal pronoun that is used as the subject of a verb.'),
(648, '2015-03-15 09:43:33', 1, 2, 16, 35, 27, 1, 'Translate: <strong>I</strong>', 'je', 'je'),
(649, '2015-03-15 09:43:39', 1, 2, 16, 36, 28, 1, 'Translate: <strong>you</strong> (singular)', 'vous', 'vous'),
(650, '2015-03-15 09:43:47', 1, 2, 16, 37, 29, 1, 'Translate: <strong>He</strong>', 'il', 'il'),
(651, '2015-03-15 09:43:52', 1, 2, 16, 38, 30, 1, 'Translate: <strong>She</strong>', 'elle', 'elle'),
(652, '2015-03-15 09:43:58', 1, 2, 16, 39, 31, 1, 'Translate: <strong>it</strong>', 'il', 'il'),
(653, '2015-03-15 09:44:08', 1, 2, 16, 40, 32, 1, 'Translate: <strong>We</strong>', 'nous', 'nous'),
(654, '2015-03-15 09:44:12', 1, 2, 16, 41, 33, 1, 'Translate: <strong>You</strong> (plural)', 'vous', 'vous'),
(655, '2015-03-15 09:44:17', 1, 2, 16, 42, 34, 0, 'Translate: <strong>they</strong>', 'elles', 'ils'),
(694, '2015-03-16 07:00:25', 1, 2, 18, 44, 37, 1, 'An object pronoun is _____?', 'a personal pronoun that is used as the direct or indirect object of a verb, or the object of a preposition.', 'a personal pronoun that is used as the direct or indirect object of a verb, or the object of a preposition.'),
(695, '2015-03-16 07:00:34', 1, 2, 18, 45, 38, 1, 'The direct pronoun indicates _____?', 'who or what is receiving the action of the verb.', 'who or what is receiving the action of the verb.'),
(696, '2015-03-16 07:00:39', 1, 2, 18, 46, 39, 1, 'The indirect object answers what questions?', '"To who?" or For "who?" the verb is performed. It tells us where the direct object is going.', '"To who?" or For "who?" the verb is performed. It tells us where the direct object is going.'),
(697, '2015-03-16 07:00:43', 1, 2, 18, 47, 40, 1, 'When a pronoun is used as the object of a preposition (in, on, above, at, to, by, etc.) the pronoun usually comes _____ the preposition.', 'after', 'after'),
(765, '2015-03-18 10:11:22', 1, 1, 2, 4, 5, 0, 'What does LAMP Stand for?', 'Local, Apache, MySql, PHP', 'Linux, Apache, MySql, PHP'),
(766, '2015-03-18 10:11:26', 1, 1, 2, 5, 7, 1, 'What does the phpinfo(); function do?', 'Generate a page with your server''s PHP configuration information.', 'Generate a page with your server''s PHP configuration information.'),
(767, '2015-03-18 10:47:34', 8, 1, 1, 1, 1, 1, 'Who was the original developer of PHP?', 'Rasmus Lerdorf', 'Rasmus Lerdorf'),
(768, '2015-03-18 10:47:39', 8, 1, 1, 1, 2, 1, 'What does PHP stand for?', 'Personal Home Page', 'Personal Home Page'),
(769, '2015-03-18 10:47:44', 8, 1, 1, 2, 6, 1, 'In what year was PHP Tools Version 1.0 Released to the public?', '1995', '1995'),
(770, '2015-03-18 10:47:53', 8, 1, 1, 3, 4, 1, 'At what point does PHP run on the server?', 'Before the web page is sent to the user''s browser', 'Before the web page is sent to the user''s browser'),
(771, '2015-03-18 10:48:07', 8, 1, 1, 3, 14, 1, 'Which workflow is in the correct order?', 'User Request -> PHP Retrieves Data-> PHP Builds HTML Page -> Web Server Sends Response', 'User Request -> PHP Retrieves Data-> PHP Builds HTML Page -> Web Server Sends Response'),
(772, '2015-03-18 10:48:13', 8, 1, 1, 17, 15, 1, 'What is one of the reasons PHP has become so popular?', 'It natively supports OBDC type databases like MySQL', 'It natively supports OBDC type databases like MySQL'),
(777, '2015-03-18 10:54:26', 8, 1, 2, 4, 5, 1, 'What does LAMP Stand for?', 'Linux, Apache, MySql, PHP', 'Linux, Apache, MySql, PHP'),
(778, '2015-03-18 10:54:29', 8, 1, 2, 5, 7, 1, 'What does the phpinfo(); function do?', 'Generate a page with your server''s PHP configuration information.', 'Generate a page with your server''s PHP configuration information.'),
(779, '2015-03-18 10:58:28', 8, 1, 3, 20, 22, 1, 'What does Parsing PHP mean?', 'The Web Server will read and  process the PHP code before the rest of the text in your file such as HTML, Javascript, or regular text.', 'The Web Server will read and  process the PHP code before the rest of the text in your file such as HTML, Javascript, or regular text.'),
(780, '2015-03-18 10:58:39', 8, 1, 3, 21, 23, 1, 'When you use the echo command to print text to the page you should always wrap the text in _______?', 'single or double quotes', 'single or double quotes'),
(781, '2015-03-18 10:58:47', 8, 1, 3, 21, 24, 1, 'In PHP, You should always end your lines of code with a _____ ?', '; Semicolon', '; Semicolon'),
(782, '2015-03-18 10:58:56', 8, 1, 3, 22, 25, 1, 'Why should variable names always start with a $ (dollar sign)?', 'To tell PHP that it is a data container and not a function', 'To tell PHP that it is a data container and not a function'),
(783, '2015-03-18 10:59:13', 8, 1, 3, 33, 26, 1, 'What is the correct code to assign the value of a variable using a GET request?', '<pre>$my_variable = $_GET[''my_variable''];</pre>', '<pre>$my_variable = $_GET[''my_variable''];</pre>'),
(784, '2015-03-18 11:53:54', 8, 30, 22, 49, 42, 1, 'What are the two most popular types of torillas made of?', 'Flower and Corn', 'Flower and Corn'),
(785, '2015-03-21 05:47:31', 1, 1, 1, 1, 1, 1, 'Who was the original developer of PHP?', 'Rasmus Lerdorf', 'Rasmus Lerdorf');

-- --------------------------------------------------------

--
-- Table structure for table `folat_review_scores`
--

DROP TABLE IF EXISTS `folat_review_scores`;
CREATE TABLE IF NOT EXISTS `folat_review_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `total_questions` int(11) NOT NULL,
  `correct_answers` int(11) NOT NULL,
  `incorrect_answers` int(11) NOT NULL,
  `final_score` int(11) NOT NULL,
  `res_rev_ids` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `folat_review_scores`
--

INSERT INTO `folat_review_scores` (`id`, `datetime`, `student_id`, `course_id`, `module_id`, `total_questions`, `correct_answers`, `incorrect_answers`, `final_score`, `res_rev_ids`) VALUES
(73, '2015-03-15 09:15:04', 1, 2, 17, 1, 1, 0, 100, '["645"]'),
(74, '2015-03-15 09:44:19', 1, 2, 16, 11, 10, 1, 91, '["644","646","647","648","649","650","651","652","653","654","655"]'),
(81, '2015-03-16 07:00:45', 1, 2, 18, 4, 4, 0, 100, '["694","695","696","697"]'),
(85, '2015-03-16 07:15:05', 1, 2, 18, 4, 4, 0, 100, '["694","695","696","697"]'),
(86, '2015-03-16 07:16:39', 1, 2, 18, 4, 4, 0, 100, '["694","695","696","697"]'),
(98, '2015-03-18 10:11:27', 1, 1, 2, 2, 1, 1, 50, '["765","766"]'),
(99, '2015-03-18 10:48:14', 8, 1, 1, 6, 6, 0, 100, '["767","768","769","770","771","772"]'),
(104, '2015-03-18 10:54:30', 8, 1, 2, 2, 2, 0, 100, '["777","778"]'),
(105, '2015-03-18 10:59:15', 8, 1, 3, 5, 5, 0, 100, '["779","780","781","782","783"]'),
(106, '2015-03-18 11:53:56', 8, 30, 22, 1, 1, 0, 100, '["784"]');

-- --------------------------------------------------------

--
-- Table structure for table `folat_subcategories`
--

DROP TABLE IF EXISTS `folat_subcategories`;
CREATE TABLE IF NOT EXISTS `folat_subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subcat_parent_id` int(11) NOT NULL,
  `subcat_name` varchar(145) NOT NULL,
  `subcat_description` text NOT NULL,
  `subcat_slug` varchar(155) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `folat_subcategories`
--

INSERT INTO `folat_subcategories` (`id`, `subcat_parent_id`, `subcat_name`, `subcat_description`, `subcat_slug`) VALUES
(1, 1, 'Computer Programming', 'Courses related to programming languages, APIs, libraries, and frameworks. ', 'computer-programming'),
(2, 2, 'French', 'Courses covering all levels of the French language. ', 'french'),
(3, 2, 'English', 'Courses covering all levels of the English language. ', 'english'),
(4, 1, 'Web Design', 'Subcategory for courses in Technology specific to Design. ', 'web-design'),
(5, 4, 'Food', 'Courses related to food', 'food'),
(6, 5, 'Psycology', 'Courses related to psycology', 'psycology'),
(7, 3, 'Economics', 'Courses related to Economics', 'economics');

-- --------------------------------------------------------

--
-- Table structure for table `folat_users`
--

DROP TABLE IF EXISTS `folat_users`;
CREATE TABLE IF NOT EXISTS `folat_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(128) NOT NULL,
  `user_lastname` varchar(128) NOT NULL,
  `user_email` varchar(145) NOT NULL,
  `user_username` varchar(45) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_about` text,
  `user_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `folat_users`
--

INSERT INTO `folat_users` (`user_id`, `user_name`, `user_lastname`, `user_email`, `user_username`, `user_password`, `user_about`, `user_image`) VALUES
(1, 'Miguel A.', 'Bonachea', 'desarrollowebuno@gmail.com', 'mikesoto', 'd06b06be888f601407e8703f6c4e0abd', 'I am a LAMP, CodeIgniter and WordPress Programmer with more than 7 Years of Experience in the field of design, interactive media, application development, and server administration.', 'folat_profile_1.png'),
(2, 'Roger', 'Smith', 'rogsmith@test.com', 'rogsmith', '0cb255fa9ab7dc5bd9d7a1d5c6b72082', 'I''m Roger', ''),
(3, 'Tom', 'Cruise', 'tom@cruise.net', 'tomcruise', 'cb1d4fe7870b37759aad7c575ed173d3', 'I am the best Human Being EVER!!!', 'folat_profile_3.jpg'),
(4, 'Jennifer', 'Lopez', 'jlo@toocool4u.com', 'jlopez', 'd315b6f172de8ecb14466c8595783172', '', ''),
(5, 'test', 'tesst', 'test@test.com', 'tester', 'c06db68e819be6ec3d26c6038d8e8d1f', NULL, NULL),
(6, 'fdsa', 'fdsa', 'fdsa@fdsa.com', 'fdsafdsa', '6b9260b1e02041a665d4e4a5117cfe16', NULL, NULL),
(7, 'aaaa', 'aaaa', 'aaa@aaa.com', 'aaaaaaaa', '3dbe00a167653a1aaee01d93e77e730e', NULL, NULL),
(8, 'John', 'Doe', 'johndoe@gmail.com', 'johndoe', 'd763ec748433fb79a04f82bd46133d55', 'I am a person. "Hello World"', 'folat_profile_8.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
