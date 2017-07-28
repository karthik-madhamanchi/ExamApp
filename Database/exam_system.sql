-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2017 at 04:34 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `exam_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE IF NOT EXISTS `exam` (
  `question_id` INT NOT NULL AUTO_INCREMENT,
  `stdroll` INT NOT NULL,
  `question` longtext NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  UNIQUE KEY `question_id` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`question_id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
('1', 'From what location are the 1st computer instructions available on boot up?', 'ROM BIOS', 'CPU', 'boot.ini', 'CONFIG.SYS', 'ROM BIOS'),
('2', 'What could cause a fixed disk error', 'No-CD installed', 'bad ram', 'slow processor', 'Incorrect CMOS settings', 'Incorrect CMOS settings'),
('3', 'Missing slot covers on a computer can cause?', 'over heat', 'power surges', 'EMI', 'incomplete path for ESD', 'over heat'),
('4', 'When installing PCI NICS you can check the IRQ availability by looking at', 'dip switches', 'CONFIG.SYS', 'jumper settings', 'motherboard BIOS', 'motherboard BIOS'),
('5', 'With respect to a network interface card, the term 10/100 refers to', 'protocol speed', 'a fiber speed', 'megabits per seconds', 'minimum and maximum server speed', 'megabits per seconds'),
('6', 'Which Motherboard form factor uses one 20 pin connector', 'ATX', 'AT', 'BABY AT', 'All of the above', 'ATX'),
('7', 'A hard disk is divided into tracks which are further subdivided into', 'clusters', 'sectors', 'vectors', 'heads', 'sectors'),
('8', 'A wrist grounding strap contains which of the following', 'Surge protector', 'Capacitor', 'Voltmeter', 'Resistor', 'Resistor'),
('9', 'Which standard govern parallel communications?', 'RS232', 'RS-232a', 'CAT 5', 'IEEE 1284', 'IEEE 1284'),
('10', 'In laser printer technology, what happens during the conditioning stage?', 'The corona wire places a uniform positive charge on the paper', 'A uniform negative charge is placed on the photosensitive drum', 'A uniform negative charge is placed on the toner', 'All of the above', 'A uniform negative charge is placed on the photosensitive drum'),
('11', 'What product is used to clean smudged keys on a keyboard?', 'TMC solvent', 'Silicone spray', 'Denatured alcohol', 'All-purpose cleaner', 'All-purpose cleaner'),
('12', 'ESD would cause the most damage to which component?', 'Power supply', 'Expansion board', 'Monitor', 'Keyboard', 'Expansion board'),
('13', 'To view any currently running Terminate Stay Resident (TSR''s) programs you could type', 'Memory', 'MEM', 'SYS /M', 'Memmaker', 'MEM'),
('14', 'Which type of system board is the MOST likely candidate for processor upgrading if you want maximum performance and future compatibility?', 'ML', 'PCI', 'ISA', 'EISA', 'PCI'),
('15', 'Suppose that you have a the maintenance package identifies several possible field replaceable units (FRUs) that will resolve the problem. What should you do after turning the power off?', 'Replace the indicated parts, one at a time in the recommended sequence, until the problem is resolved; return unused FRUs to stock', 'Replace all of the indicated FRUs at once and return the machine to the customer if the problem is resolved', 'Follow the same procedure as in ays replace the system board first if it is on the list of possible FRUs If multiple FRUs are indicated, then software is the most likely source of the problem', 'None of the above', 'Replace the indicated parts, one at a time in the recommended sequence, until the problem is resolved; return unused FRUs to stock'),
('16', 'Most PCs give a single beep on bootup to indicate they are ok hardware wise. You boot your PC and don''t get a beep. What should you check first?', 'system board', 'RAM', 'microprocessor', 'speaker', 'speaker'),
('17', 'Which peripheral port provides the FASTEST throughput to laser printers?', 'RS-232', 'SCSI', 'Parallel', 'Serial', 'Parallel'),
('18', 'The mouse pointer moves erratically, what is the possible cause? The mouse', 'ball is dirty', 'is not connected', 'driver is not installed properly', 'has an incorrect IRQ setting', 'ball is dirty'),
('19', 'Voltage is measured', 'in parallel', 'in series', 'after breaking the circuit', 'after checking resistance', 'in parallel'),
('20', 'Your customer tells you the print quality of their dot matrix printer is light then dark. Which of the following could cause the problem', 'Paper slippage', 'Improper ribbon advancement', 'Paper thickness', 'Head position', 'Improper ribbon advancement'),
('21', 'The 34-pin connection on an I/O card is for?', 'Floppy drive', 'SCSI drive', 'IDE drive', 'Zip drive', 'Floppy drive'),
('22', 'What beep codes could indicate a system board or power supply failure?', 'steady short beep', 'no beep', 'one long continuous beep tone', 'All of the above', 'All of the above'),
('23', 'After doing a low-level format, what would be the next step in configuring the hard drive in a system?', 'Format DOS partition', 'Install operating system', 'Configure DMA channel and back-up interrupt', 'Partition had disk', 'Format DOS partition'),
('24', 'Resistance is measured in ?', 'Volts', 'Amps', 'Watts', 'Ohms', 'Ohms'),
('25', 'When installing a SCSI CD-ROM drive, you must set the CD-ROM SCSI adapter to', 'B0007', 'An unused SCSI address', 'The same address as the SCSI device before the CD-ROM', 'SCSI ID=1', 'An unused SCSI address'),
('26', 'Pick the correct choice for the 80386SXCPU', '16 bit word size, 16 bit data path', '32 bit word size, 16 bit data path', '8 bit word size, 32 bit data path', '32 bit word size, 8 bit data path', '32 bit word size, 16 bit data path'),
('27', 'In Inkjet technology the droplets of ink are deflected by?', 'multi directional nozzles', 'electronically charged plates', 'high pressure plates', 'electro static absorbtion', 'multi directional nozzles'),
('28', 'What tool is used to test serial and parallel ports?', 'high volt probe', 'cable scanner', 'loop backs (wrap plugs)', 'sniffer', 'loop backs (wrap plugs)'),
('29', 'What voltage does a Pentium system use?', '+12 volts', '+ 5 volts', '+ 8 volts', '+3.3 volts', '+3.3 volts'),
('30', 'A numeric error code check: A 17xx indicates a problem with:', 'CMOS', 'ROM BIOS', 'DMA controller', 'hard drive or controller', 'hard drive or controller'),
('31', 'Which provides the fastest access to large video files?', 'Optical drives', 'IDE hard drives', 'SCSI hard drives', 'EIDE hard drives', 'SCSI hard drives'),
('32', 'A 25-pin female connector on the back of your computer will typically be', 'Serial port 1', 'A parallel port', 'Docking', 'COM2 port', 'A parallel port'),
('33', 'On the PC side, the printer port is a', '25 pin female serial connector', '15 pin female parallel connector', '25 pin male serial connector', '25 pin female parallel connector', '25 pin female parallel connector'),
('34', 'You just installed a new IDE hard drive, but your system BIOS will not recognize the new drive, what should you check first', 'cable sequence', 'jumpers on the hard drive', 'drivers that need to be loaded', 'hard drive manufacturer web site information', 'jumpers on the hard drive'),
('35', 'During boot-up, the memory test', 'Is a superfluous step that should be ignored', 'Checks and verifies that contiguous memory is installed', 'Is an operational error', 'Displays what memory is installed, but nothing else', 'Checks and verifies that contiguous memory is installed'),
('36', 'What is the best ground for a conductive work bench?', 'AC outlet', 'Ground to bend', 'To another device', 'Chassis ground', 'AC outlet'),
('37', 'What is the first thing you could do to check for damage to a printer after receiving it?', 'Run MSD diagnostics', 'Attach it to a PC and print something', 'Check the cables', 'Unbox it and examine it for physical damage', 'Unbox it and examine it for physical damage'),
('38', 'You have a system that periodically locks up. You have ruled out software, and now suspect that it is hardware. What should you do first that could help you narrow it down to the component at fault?', 'rotate the RAM', 'replace the RAM', 'replace the level 2 cache SIMM', 'disable the CPU cache in CMOS', 'disable the CPU cache in CMOS'),
('39', 'What''s the best way to protect your hard drive data?', 'regular backups', 'periodically defrag it', 'run chkdsk at least once a week', 'run scandisk at least once a week', 'regular backups'),
('40', 'Match the device driver HIMEM.SYS to its operation.', 'Supports (ANSI) terminal emulation', 'Manages the use of extended memory', 'Uses expanded memory on a 80386 processor', 'Supports code page switching', 'Manages the use of extended memory'),
('41', 'The digital multimeter is set for DC, Ohm and 20k. You will read _____ while measuring a good 2 amp fuse.', '0.00', '0.02', '0.20', '2.00', '0.00'),
('42', 'An anti static strap uses a small _____ to make sure you do not become the least path of resistance to the ground?', 'capacitor', 'diode', 'transistor', 'resistor', 'resistor'),
('43', 'If the memory slots have 30 pins then the chip is a?', 'DIMM', 'SIMM', 'SDRAM', 'All of the above', 'SIMM'),
('44', 'Which values are held in CMOS for the hard drive', 'size (heads, cylinders, sectors)', 'IRQ', 'Free space', 'Virus alert', 'size (heads, cylinders, sectors)'),
('45', 'What device prevents power interruptions, resulting in corrupted data?', 'Battery back-up unit', 'Surge protector', 'Multiple SIMMs strips', 'Data guard system', 'Battery back-up unit'),
('46', 'In a computer with an eide adapter, where should you connect an ATA CD-ROM drive?', 'on the floppy bus', 'on the primary IDE', 'on the secondary IDE', 'on the SCSI bus', 'on the secondary IDE'),
('47', 'What''s the best way to prevent damaging your PC with static electricity?', 'place your PC on a rubber mat', 'wear leather soled shoes', 'periodically touch a safe ground point on the PC to discharge yourself', 'wear an ESD wrist strap', 'wear an ESD wrist strap'),
('48', 'Which would you do first when troubleshooting a faulty monitor?', 'Check its connections to the computer and power source', 'Use a meter to check the CRT and internal circuitry for continuity', 'Power down the monitor, then turn it on again to see if that corrects the problem', 'Power down the computer, then turn it on again to see if that corrects the problem', 'Check its connections to the computer and power source'),
('49', 'To install a second IDE drive into a computer, you must', 'Set the master-slave jumper to slave on the second drive', 'Use the IDE configuration software to set the new drive as slave', 'Verify that you define the new drive as D: in the CMOS setup', 'Verify that you attach the drive to the connector at the end of the ribbon cable', 'Set the master-slave jumper to slave on the second drive'),
('50', 'Why does a successfully mapped network drive disappear every time you boot the computer?', 'The computer you are connected to has moved', 'You didn''t click reconnect on log on', 'The map statement is not in the autoexec.bat file', 'The last drive was not set correctly', 'The map statement is not in the autoexec.bat file'),
('51', 'Which bus is bidirectional?', 'data bus', 'control bus', 'address bus', 'multiplexed bus', 'data bus'),
('52', 'The software used to drive microprocessor-based systems is called:', 'assembly language programs', 'firmware', 'BASIC interpreter instructions', 'flowchart instructions', 'assembly language programs'),
('53', 'A microprocessor unit, a memory unit, and an input/output unit form a:', 'CPU', 'compiler', 'microcomputer', 'ALU', 'microcomputer'),
('54', 'The technique of assigning a memory address to each I/O device in the SAM system is called:', 'wired I/O', 'I/O mapping', 'dedicated I/O', 'memory-mapped I/O', 'memory-mapped I/O'),
('55', 'Which of the following is not a basic element within the microprocessor?', 'microcontroller', 'arithmetic-logic unit (ALU)', 'temporary register', 'accumulator', 'microcontroller'),
('56', 'The output will be a LOW for any case when one or more inputs are zero in a(n):', 'OR gate', 'NOT gate', 'AND gate', 'NAND gate', 'AND gate'),
('57', 'If a signal passing through a gate is inhibited by sending a low into one of the inputs, and the output is HIGH, the gate is a(n):', 'AND', 'NAND', 'NOR', 'OR', 'NAND'),
('58', 'A single transistor can be used to build which of the following digital logic gates?', 'AND gates', 'OR gates', 'NOT gates', 'NAND gates', 'NOT gates'),
('59', 'Sample-and-hold circuits in ADCs are designed to:', 'sample and hold the output of the binary counter during the conversion process', 'stabilize the ADCs threshold voltage during the conversion process', 'stabilize the input analog signal during the conversion process', 'sample and hold the ADC staircase waveform during the conversion process', 'stabilize the input analog signal during the conversion process'),
('60', 'Convert the decimal number 151.75 to binary.', '10000111.11', '11010011.01', '00111100.00', '10010111.11', '10010111.11'),
('61', 'How many digits of the DNIC (Data Network Identification Code) identify the country?', 'first three', 'first four', 'first five', 'first six', 'first three'),
('62', 'A station in a network forwards incoming packets by placing them on its shortest output queue. What routing algorithm is being used?', 'hot potato routing', 'flooding', 'static routing', 'delta routing', 'hot potato routing'),
('63', 'The probability that a single bit will be in error on a typical public telephone line using 4800 bps modem is 10 to the power -3. If no error detection mechanism is used, the residual error rate for a communication line using 9-bit frames is approximately equal to', '0.003', '0.009', '0.991', '0.999', '0.009'),
('64', 'Frames from one LAN can be transmitted to another LAN via the device', 'Router', 'Bridge', 'Repeater', 'Modem', 'Bridge'),
('65', 'Which of the following condition is used to transmit two packets over a medium at the same time?', 'Contention', 'Collision', 'Synchronous', 'Asynchronous', 'Collision'),
('66', 'You have a class A network address 10.0.0.0 with 40 subnets, but are required to add 60 new subnets very soon. You would like to still allow for the largest possible number of host IDs per subnet. Which subnet mask should you assign?', '255.240.0.0', '255.248.0.0', '255.252.0.0', '255.254.0.0', '255.254.0.0'),
('67', 'What are the most commonly used transmission speeds in BPS used in data communication?', '300', '1200', '2400', '9600', '9600'),
('68', 'What is the default subnet mask for a class C network?', '127.0.0.1', '255.0.0.0', '255.255.0.0', '255.255.255.0', '255.255.255.0'),
('69', 'Your company has a LAN in its downtown office and has now set up a LAN in the manufacturing plant in the suburbs. To enable everyone to share data and resources between the two LANs, what type of device(s) are needed to connect them? Choose the most correct answer', 'Modem', 'Cable', 'Hub', 'Router', 'Router'),
('70', 'The term DUPLEX refers to the ability of the data receiving stations to echo back a confirming message to the sender. In full duplex data transmission, both the sender and the receiver', 'cannot talk at once', 'can receive and send data simultaneously', 'can send or receive data one at a time', 'can do one way data transmission only', 'can receive and send data simultaneously'),
('71', 'The part of machine level instruction, which tells the central processor what has to be done, is', 'Operation code', 'Address', 'Locator', 'Flip-Flop', 'Operation code'),
('72', 'Which of the following refers to the associative memory?', 'the address of the data is generated by the CPU', 'the address of the data is supplied by the users', 'there is no need for an address i.e. the data is used as an address', 'the data are accessed sequentially', 'there is no need for an address i.e. the data is used as an address'),
('73', 'A system program that combines the separately compiled modules of a program into a form suitable for execution', 'assembler', 'linking loader', 'cross compiler', 'load and go', 'linking loader'),
('74', 'The Memory Buffer Register (MBR)', 'is a hardware memory device which denotes the location of the current instruction being executed', 'is a group of electrical circuits (hardware), that performs the intent of instructions fetched from memory', 'contains the address of the memory location that is to be read from or stored into', 'contains a copy of the designated memory location specified by the MAR after a READ or the new contents of the memory prior to a WRITE', 'contains a copy of the designated memory location specified by the MAR after a READ or the new contents of the memory prior to a WRITE'),
('75', 'Which of the following systems software does the job of merging the records from two files into one?', 'Security software', 'Utility program', 'Networking software', 'Documentation system', 'Utility program'),
('76', 'Which of the following instruction steps, would be written within the diamond-shaped box, of a flowchart?', 'S = B - C', 'IS A<10', 'PRINT A', 'DATA X,4Z', 'IS A<10'),
('77', 'Which of the following functions is(are) performed by the loader', 'allocate space in memory for the programs and resolve symbolic references between object decks', 'adjust all address dependent locations, such as address constants, to correspond to the allocated space', 'physically place the machine instructions and data into memory', 'All of the above', 'All of the above'),
('78', 'Which of the following addressing modes, facilitates access to an operand whose location is defined relative to the beginning of the data structure in which it appears?', 'ascending', 'sorting', 'index', 'indirect', 'index'),
('79', 'While running DOS on a PC, which command would be used to duplicate the entire diskette?', 'COPY', 'DISKCOPY', 'CHKDSK', 'TYPE', 'DISKCOPY'),
('80', 'A system program that sets up an executable program in main memory ready for execution is', 'assembler', 'linker', 'loader', 'compiler', 'loader'),
('81', 'Which of the following are loaded into main memory when the computer is booted?', 'internal command instructions', 'external command instructions', 'utility programs', 'None of the above', 'internal command instructions'),
('82', 'Which command of MS-DOS is used to copy only files that have been modified on or after the date you specify?', 'XCOPY/D : date', 'COPY/D : date', 'COPY/M', 'XCOPY/V', 'XCOPY/D : date'),
('83', 'While working with MS-DOS, which command is used to restore files that were backed up using the BACKUP command?', 'COPY', 'DISKCOPY', 'RESTORE', 'STORE', 'RESTORE'),
('84', 'What protocol is used between E-Mail servers?', 'FTP', 'SMTP', 'SNMP', 'POP3', 'SMTP'),
('85', 'If you configure the TCP/IP address and other TCP/IP parameters manually, you can always verify the configuration through which of the following? Select the best answer.', 'Network Properties dialog box', 'Server Services dialog box', 'DHCPINFO command-line utility', 'Advanced Properties tab of TCP/ IP Info', 'Network Properties dialog box'),
('86', 'In a PC to telephone hookup for long distance communication, modem is connected between the telephone line and', 'synchronous port', 'crossover cable', 'asynchronous port', 'None of the above', 'asynchronous port'),
('87', 'Which of the following communications service provides message preparation and transmission facilities?', 'Teletex', 'Teletext', 'x400', 'Fax', 'Teletex'),
('88', 'Four bits are used for packet sequence numbering in a sliding window protocol used in a computer network. What is the maximum window size?', '4', '8', '15', '16', '15'),
('89', 'Linda is in charge of a small network and wants to make it simple but secure. The users want to have full control over their data and still be able to share data with the rest of the office. The networking knowledge of the office staff is basic. Which network(s) would be the best for linda to set up?', 'Peer-to-peer', 'WAN', 'Server-based', 'Share-level', 'WAN'),
('90', 'Error control is needed at the transport layer because of potential errors occurring _____', 'from transmission line noise', 'in routers', 'from out-of-sequence delivery', 'from packet losses', 'in routers'),
('91', 'The transport layer protocol is connectionless', 'NVT', 'FTP', 'TCP', 'UDP', 'UDP'),
('92', 'The fundamental requirements of private-to-public network interconnection methods which need to be provided in gateways is/are', 'universal accessibility for private network Data Terminal Equipment (DTE)', 'adequate cost control mechanisms for administration of the private networks', 'to assign address to private network DTEs', 'a and b both', 'a and b both'),
('93', 'Data link layer retransmits the damaged frames in most networks. If the probability of a frame''s being damaged is p, what is the mean number of transmissions required to send a frame if acknowledgements are never lost', 'P I (K + 1)', 'KIK (1 + F)', '1/ (1 - F)', 'K I (K - P)', '1/ (1 - F)'),
('94', 'You are trying to decide which type of network you will use at your office, and you want the type that will provide communication and avoid collisions on the cable. Which of the following is the best choice?', 'CSMA/CA', 'Token-Ring', 'CSMA/CD', 'Ethernet', 'Token-Ring'),
('95', 'Interconnected networks need communication processors such as switches, routers, hubs, and gateways. Select the best fit for answer:', 'TCP/IP', 'Protocol', 'Open Systems', 'Internetwork processor', 'Internetwork processor'),
('96', 'Which of the following languages is more suited to a structured program?', 'PL/1', 'FORTRAN', 'BASIC', 'PASCAL', 'PASCAL'),
('97', 'The brain of any computer system is', 'ALU', 'Memory', 'CPU', 'Control unit', 'CPU'),
('98', 'The tracks on a disk which can be accessed without repositioning the R/W heads is', 'Surface', 'Cylinder', 'Cluster', 'All of the above', 'Cylinder'),
('99', 'A section of code to which control is transferred when a processor is interrupted is known as', 'M', 'SVC', 'IP', 'MDR', 'M'),
('100', 'Which part interprets program instructions and initiate control operations.', 'Input', 'Storage unit', 'Logic unit', 'Control unit', 'Control unit');

-- --------------------------------------------------------

--
-- Table structure for table `examstate`
--

CREATE TABLE IF NOT EXISTS `examstate` (
  `state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examstate`
--

INSERT INTO `examstate` (`state`) VALUES
('unlocked');

-- --------------------------------------------------------

--
-- Table structure for table `results_info`
--

CREATE TABLE IF NOT EXISTS `results_info` (
  `result_id` varchar(255) NOT NULL,
  `student_no` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `score` varchar(255) NOT NULL DEFAULT '0',
  `date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'FAILED',
  UNIQUE KEY `result_id` (`result_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school_info`
--

CREATE TABLE IF NOT EXISTS `school_info` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` longblob NOT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_info`
--

INSERT INTO `school_info` (`name`, `email`, `address`, `phone`, `slogan`, `logo`) VALUES
('Madanapalle Institute of Technology & Science', 'admin@mits.ac.in', 'Post Box No: 14, Kadiri Road
Angallu (Village), Madanapalle-517325
Chittoor District, Andhra Pradesh, India', '+91-8571-280255;280706', 'Our Slogan', 0xffd8ffe000104a46494600010100000100010000ffdb0084000906071213101512121215161517191d1b1918181721201f1a1e1f27211d231d22211f2028221e20261f1e202231212929372e2e2f1b1f3338332d37282d2e2b010a0a0a0e0d0e1b10101b2f251f25302d2b2d2b2d2d382e2d30372d2f2d2b2d2d2d2d2d2f2d2f2d2d302d2f2d2d2d2d2d2f2d2d2f2d2d2d2d2d2d2d2d2d2d2d2dffc00011080080008003011100021101031101ffc4001b00000203010101000000000000000000000405000306010207ffc4003e10000201020502040305060406030000000102030411000512213141510613226114327123425262a10743728191b1c1d1e1f01533639293f1163453ffc4001a010100020301000000000000000000000000040501020306ffc4003511000103030204050205030501000000000100020304112131410512516113227181a1e1f0143291b1d106c1f1162442526215ffda000c03010002110311003f00fb8608a608a608a1c11055f9a430e9f36454d66cb73c9c0901748e192404b05eca8f1054bc70178d829ba8bb2ea02e40bd8117e7be056d4cc63df670bf6d10e924b04d1acb2f98925d6e542e97e471d08b8fa818d6ebaf2b25638b0588cfa85e2ba956a2afcb727cb8a3d4543117673b5ec7a043fd7022e566390c30f30d49b69b05664c0446a10b1d08fa86a24e952a0dae49d86f8c83aad67bbc31db908449677824aa598a0219d10a065d007a6fc1ded7e7ae31b2e8444d90425b7d89d33f44d5f3358e9d6598daeab7b0e58db6039249e98db40a3885cf94b1995765f5f1ccbae260c2f636e87b11d0fb60082b49227c66cf1945e0b4530453045304530453045c38225f067303ca625954baf22ffdbbdbadb8c6010bb3a9a56b03cb709665d4312d4d446e8199fd7a985f5236c56e7a03716f718c00a44b2bdd131ed360318ea10d98d0548864a454f3108fb294bdb40ecdd4e9dac473ed6df06e059748e68448d9dc6c46a2dafa7aa6f9ab432c462737d561e9e411b8208e08e6f8e2fa989b827b2ac6d5b6178734aaa14481dec1dd9ecd2396bdbee83fe83df18927e47580bf5ec951584d81181f17435451c53995d84805b4b857d9c0e8471c77e98d1950d90388071f2b686bdcd69b0fcaafcd241514cf0c2e23774d2ba85ac0edc7d31d1950c90581b14a4ab884ad7bb3637b2ed0d2cb24825a8454f2f68d15b5007ab936173d06db0fae3b827552a49191b79623aea6d6f6532d950cb53506caba826a3b6d1dee6ffc4c7fa6338bdd6256bb9591ea6d7fd7456d17882195c22961aafa1994857b73a49e700e589292460b9db5edea9be32a32982298229822e1c110b53a6559220fbdacda4fa96fd7d8e30721746733087db1fba4993d1c4f01a496250d010085161dd5d7a8bf7e86f8c0014ca89246c9e3b5c6cefb20ab852185c4924cd2945608a40042b5afa88ddad61bff007c70966110ea5439eb181960db139fbe8bb2cd23020ee6df2a740775617e7b1c4374b23c11bf41f042ab2f91d83f1f0420b38aca684113cf1c649560bc906d63b7be37752e2c4daf91ebba9b0f09a8a96f91b836381a754b878c69a5b7970554da458b226c7d8e3aba363c0bdced7eaadddfd3d20b78af683dcaf751e35a744f2e582a604616d4d1f7c6ce0ce42cb100ac9e00f7b0b237b4fa1ca3e8f30827d4696747620596f66000e2dfe988eea726ee8cdff755155c2aa69b99ce691f7d516b2b44db23053d09eb6fedd49c72123e9ce1a6ca0073a27f9460f7dd79a1ca69ddb58d4501d4b113e856b9f569f73befc5b6c58432b25176ab66710748cf2ebd77b2b3398c4f2a5301e9522490fe100dd403d1891fd01c7539365de07782c329d4e077ea9bfc526bf2f5aebb5f4df7b77b637b851791dcbcd6c2bc60b5530453045554b10a4817201b0ee7b6304a0009ce8b339265f4f2c649bfc40de56dd64576dfa1b81dba580c600563532cb1bbff001b6e11a99688a5f3e495a4655d097b0363b9bdada8e39c8f6c62e5459eb408b9434004dcfd2e86a490b3167616504b49f86dfd36fcb8aaa72f95fafabba76fa2a6a70e99e05eff007f78487fe23555ec62a1fb0a65363391bb7f0e2c9adb8b3303af5f45ec19494bc3581d38e67ea1a341eaaecde928b2d8d48804d33decd26e4db96627eb8b3e1fc3ff0010fb0c01a954fc478e4fcbf9ac3603012f8f35cd2684cc8563896e6e02a8b0e79e98b5962e1d4c791f93d151892ae71cc1717c67590b28a98d5d585c6d6b8ee08db1bb786d2d432f0393f193c2eb481689723a0af844c918427874f4b2b7f2ea31e7ea297c37f2bc657a1a3e2f3345daebb77072128198d565eeb1d77dbd313659c0dd7f8b111cdb61e6e3aff2ace4a4a5e22de68072bc64b763e89f98ca58c6ce43152ac08b35f724f7fa62bdd13a0366dce965e42489f03b9737bff945c9932bc8642d2a6bb6b457b0623604db7bdb6d8e2d9a0dae70ae63aa708c37946373a84bebe9a3d6b15246a264656671fbb1d759e4ea171a793ed8ce35526273b94be63e4234ea7b7f2b54b8d95682bb82cae1382255559839a814f1680c10bb9604d85eca2c08e4dfaf4c62f9b290d8808bc57e97b04255e593c8e8ec22575607cc8cb060b7dd771ea078b13810ba473b23691937d8e8acab9e2918ab1b11b0ebd6db8fae2b279219aec77deca9247c7212d76da2419fa9a8a88f2c8cd9000f52ebc95e8bfcfeb8951c5c80443dd7a6e1b0b68e98d53b2ed1bebd7d96da969963408802aa8b000703126caa9ef73ddcce392b39e36f0d355a2346c03c77b03c3036dafd38c5970eae14ce208b82a0d5d31980b6cb2de2ccbeb9b2af8544524ae9d51b5f52f51c7246db62357362967f163bfbaeb4a1cc6d9fb2f39c513c594d3c73babceac0121afb0045fd85ad7c4ee0a1cc988daca3711b3a307ba1bc2f58f0c0f2efe5a4a97b0bd895617fe575c58f1089b2cc19ff002b2854cf736324e974f3c3be2112014d5522ce666238d945b60761b938815d401a0bd8db0037dd4ea3ad735e3cd9d959902b53543e5aed75b19299c9e07e1fe58f38f8f98166fab4af4fc4a26d6d38ab661da3bd763ee9e65f2e972581007a4d8960589e493efb718854ef2c93cc3031adf3d579581dc8ecfa750a65993d44317951cd12d893a8c4599ae7963ac5dbb9c5b729b2bf96a63964e77b49ed7b01e98384465334ab33c13482460aaeac142dc1b822d73c11fa8c02e73b58e68918db0d3afca7231b28cb84e0895661942bb9955de296c0798877b0e0107623eb8c5b70a44350580308e66f4287caf3097cd9a194a39895183c60fab56ad8aef6234f43d71a97100acd4c6c6c6246022f7c1eddd75a552ea5983680ce494b1d862bda5b24cd04df53a595532d2cad6dfe127fd9a44648a6ad7035d44849f651b01fdf1361cb79baaf4dc6ddc923299ba307cf55b5c7654abcb6304a6ab259956c2952b0a48d706cd1a5eebefe9dedbf7e98b18a17ba32f23dca8323da1fca0fb2c77883389e793e1d4bdaf62a47a98f63d4dba0c5d51d345133c576bd557cf2b9efe4d93fc833ea38a31472452460ecde681b93d4f6be2beaa92a6477e21a41f42a5c13c4d1e1b821bc5f92c744a9514c19497b7cdb28b74ed7e2f8ed4152faa2619722cb4aa89b10123113e369d5a929b3187e685d585cefa4ec54ff003ff1c79dab8dd1121da82bd7701944c5d01fcb20f95a59e919c878952cc035f51b9befb6d61f5c409a99e5e5d181fafdd979c9e9de1c4340c2af3bac70e91f9be4a32925c26a37161a41e179bdce27877556b4ac6b985c5b7236bdbfcaf791494573f0f246eedf3307d4cdf524dce322cb150677005e0d8698c04f0632a328704591b42b2cdf171c86f21d274b94d3616e2e31adedaab3024731a21234ed74c6927a4f22434ba2c07a8456041f7dae0e38d43c089cefd957d70998cbcb7fbe8818ede45459aec637e6e4ec3b9e98afe1e4733b39fbdfa283c24b7c76dcee35fe559e029d172ca72ccaa34f52077ef8b5a76931b401b2bbe306d59213d56922a846dd595be841fed8e85a46a15707042e675e2250482c5885551c9271b4719793d96af7f2a166d4a7ccb464f2348b311d45cdeffa6360e0704e16a5b6cd96473df07b48ef3aca359b92a17ef0f7d57b9fa62da938a88c08dc30a04d425d7783959da4aff317e1aa8dc1da391b7319e9bf254f518b37c2187c787dc7550d8fe6f23d599a67352b4ff033a0f491b9f9b6e0763f5c629e9e032fe2233aecb32cb206784f4f7e11a3c82712823506603b5ed6ff003c79ee332b2491c5ba597a5fe9d639b3c77ea9fc50068e9cbce52d0adc0ed61bdef618f3d55187c82f272803450388c6c75513cd619c7ba68f5b142a885998904ad8162c05ae761ee3fae27c4d0d6b5a0dd4ba780b9be5c81ba16e659e2614cea1496323aa8dac4016beae4e3a0d7452bf244ef3defb0fbb27ab8d9431a287044a2af357131a7862d72050cc59b4aa83700f52771c018c5ee70a4b20698fc479b0d3bdd772fcb9d1e496490349205074ae90a16f603724fcc7738c169b15a4f307b03182c077ba59974969da327d2c086d441627b6d8a4a49392a796f8defafa2a4a591cc9ec0e3b9df64a3c134b1b455196ce0379121b5c6e55b861d8ff009e2ee9257447c87217aee3d032a032a6d878f90b21594f2d15532ab15643b30ea3a1ff004c7b689d1d6420b86bf0bc1b83a092c0adb51f88454b44da7d68a6e3a6b3b5ee7a5b7c79f9a89d00736f83fb2b38ea048426959996905a4007660c180f6dbbf7e9888da7e63e5ca90e9adaa8b9b96525232ca38d440bfb8079c67f0c41b38a78f717017ccfc4115a566b15d44b693c8befdfdff4c7aaa275e300eca9271675ecbec1930d74f0b48a3514526e3adbdf1e466f2c8e0d38babe88733012166bf691379820a153eba8905fd95793fefb1c43972037aaf43c119e197d53b460f929966110d6c47eec2a850376fe87623e9b62b2a9bcd297f4b0b755e46aaee91cfe9b754c2b3290da1a391e2745d2a5771636362a763b818b56b0340e5c595b41208dbc85a08e9f554d166132d48a69551beccbf98971c1b58a9bdae7f363705777c31987c569b66d63fcfd13a18ca88a1c112cafcb1da5596397cb60a51bd1ab529b11d458822ffcce3165de39808cb1e2e3519b592aac69629514554934a4afd904500adf726c3d22dd49c63452a2e47c6496003fec6fed64666b090eacac06e74ad8000db724e2b6ae32c903c11d869ee4af3d50c2d70703e83459ccfb5c52a667029253d15083ef27e207adb1de29bc41cf6d3057a5e1352cac80d2486d7fcbd8fd55de2acb52be9d2ae94862a0f1f787e1fe207fc71e838557085dca7f29dd50f13a07b5c411670d964fc239cad2ce4c8b78db6616dc11c1b1ed8bce214a6a2305872345514b3089d9d16deb73885d902ae9506ec468bfd06fc77c79f6c0f6837767dd59ba46bad60bc479dc7144df65aec0952745c9df6363fae32da67bdc3cdfba19dad070be7d97d2bd5d505fbd2312c40e0724fd063d2ccf6d2c17e8154c6d32c8bec99856c54d01790858d07fe80f7c78a73b5715e9e9e9df2b84718cac878755e5924cd271a750d3021fba9f889f7fa6224920634c87d959716a865253fe1633a65c7a9fa27b96c5adc32b1d20fa830ebdc7d4ef718854ace7707b09ef7fedeabcc400b9e1cd38deea9a045f35e3a8d6b33b1607cc60ae3a68b1b6c2d71ce2d87757f29716074796819c647afaa754797246ecebaaec05c9627617b0dcfbe36511d2b9c034ec8c182d177045e2517045c8bf5182c836cacce4d50b02b45e4486653672aa4993b3973b6e3b9db718d7014fa8619487970e53a76ed644357bb491c73d3aa092fa0eb0e430df75b6db7504e347b049a851e4a48df19734dc8d71855481e0703d4c18d8eab5989e6cbd76c5438c94d2002e41d7b9ec1519e7a778b5cdcfcf64b2a3c39514b21a8cb88b36ef4cc7d24fe53d316b62d171fa2f5d1d7c355188aac67678d7dfaa55575797d6b113eaa3a95d9838b5cfbf46e39d8e2ce8f8ac901e5f82abebbfa71ce6f3c7e61d5bfdc2f54fe0caa03ec6b10af4d2cd6fe80e2d0f16a77e5d1e550bb86cedc5fe17897c09316d53d54607e26249fd48fef8dbff00b5146df233fb2c0e172bce4dfe51b479d50508f2a94354cefb7a372c7dcf007d3147575ee9dde63e802f4745c0246b799fe46eee28983c3b515520a8cc0821774a653e907f31ea710cb5c45dd9eca64b5f152b0c74833bbf73e9d1372acecc856d25bd1d0281dbe97edbe2b8f3cce7023cdb2f2ae2f91c43bf36df7f7753e2e6f3da1804404414babdeefab7056df2a8b1dec6e7b5b16313391a1a365731c1147002fbe6f6b682df7a615799cd24e9f0ed4cc8ec4598fa917bb861c11d3837b63aeabb42d6c47c56bee3a687d085a541b0c654026ebb822c3c9e25ff0088d34c94904ae85590baca91ba36e3e52da94dfbd8e0884f0fcf9ad252c52d4abd4205b4d1b01e7c56bddd0adc4aa763a7e6fa9c116e28eb6396159a260e8eba9594ec460805ca4595d6a00f5352c166f9741e621d1147249e6e39fe58d6fd5584b1b8da28b2dd6fb1ee55ef9cb8647929cac4ec1109377bb704a5b607eb71c9c60dba2e7f84638101d770cf6f629fb6370a1a12bf2b8275b4b1238fccb7fd79c6080755da2a8962376388f4591cc7c1997abdc40ca411bab95b5efbfe98813491c448e5525dfd43571e09bfa80aaa5f09e5fe60069d98b122ed213db73ef8e4d9d85c1bcab9ff00a92adc4006de816ce832c821168a2441f9401fae2d001b2e52d44b29bc8e25157c64ae0124aaad9c54388e34658c2ea5bd9df55ec54f02d622c79ee31a968e6ba971c30f860b8e4efb0b7542e679823aa4b09b542310b191666ef1b2f214f37e06c702bb4313984b1ff94efb0ee1685e65542ee42802ec49d9475b9f6c6cabceabe7be22f17574f4b2cd964456141e999d0b34c780228ed7b7e73db61d7044e93c6f1c71de6a7ad45451aa5929980db6b9b0dafcf6c1115e22f09a4cff00114eff000d5607a6741b9fcae3efa1ec7045e7c37e2a134528aa5104f4dffd8463b2ff00d453d636b120e08b37450d7eb9aa72d411d2b1122c136de7b6fa8a0e6257bdee6f7201b0dee45acf0f5752d6aad6469f68a0a306169223d51bb107a60ba095e18580f94ecbc57d4815b1894148d16e8cdf2b48db5afd081df9d58c6f9522267fb73c9924e46e0052a2a1e72cc9234704609d69cc84736b8f9477ea718c9bacb1ac870e00b8ec76faa3b249e4f8489e761acc619cf038b9c65b7b6571a86b7c6736318bd82169332599d3540cab25cc6c48f505dc1b0dc5c1be39ba3638dc84968c36f9b916bab7369843e588e1f324762117569dc02c4936361b76ed8d7c163740b482958f24b8d80c936ba2682b44f02c8bb6a1c7553c11f5076c76be166588c52161cd8fea91e5d2c894f155a99240c80cd196d57bf2cbeea6fb0e47d318ceaa6cad6195d01b0b1f29d3d8a263ab59eae2969d8ba04659197e4b1b11bf5606fb0ee719d745ccc66281cc9706e08ebdfd931cd6a20a746a994aa855b33db722fb28ea493c0ee71950f98f2f2df0b0f9da55cd2c0733511d035dda38f701b6d0950d7f9473751a6fb1b5b72d56c33ece92911005d72c874410aec646ec3b01d4f0060895d3784dea0f9b99cbe7b1dc40b71047ec17f7878f5376d80c116bb04585fda5647295f8ca54324c88f149101ff3e2716d27b943ea1fcc75c1173c119b544090d16608d1c8cbf60eec18c807eed88d848a3a5f71b8e0e0880f15e6b0535779d49201502cb509fb992ff2a48dc24c45f431f70791822da64d99c35b0974dc5f4bc6c37461ca30e8476c16412d37184654d10689a207482a54587008b6d86cb66becf0e39cdd28972ca89116094c462046b64ba9651c26937b03d7d5c6316529b3c4c719197e6d81fdeeafcfa290085e142c63914955b5ca9ba902fb707f4c61cb4a52c25cd79b5c6bdf65e202f3552c8d0c91a471b052e46ecc47404f0179f7c66d72b2f0c8e1e50f04939b765c1435292482168963760c0b024a93f37a4581b9b1e7a9c2c86585c1a64bdc635d7a26394e5e20856206e14736b7bf1d3191a2e134a657979d4ae57d6c34d1179195235ff600039278007382d0924dcaca64798c3595c4d448a27846a8a90b02611d6471c19483c7dc06dd49c16159fb41f114a913d2d244d2d43464be95d4218cedad875277d2bc9b1ed8220ff65b9617852b6525af12474c1f731c4a2c4ff148db93d957b608be800608bb8229822c278b27f8dac194b0f2a32165791b6670a6e1611f881b5df95db6def8226f992d35151f94b4ea63d246920696efac9dc93b9bee763822cff8729658119f2b45309f57c1caea05c93eb8e55d440363b329076b5b045a4a0f1653b49e4ca4d3cfff00e535949fe137d2e3dd49c113fb608a5b05852d822e60b295e71e21a6a6da5946be91afaa46fa22dd8ff4c1162336cc64cc24686a02d25246c0b0661e7c8cbea005b78cf1b0bb6fb107045a91e1ca396058122f2bca2190a8d1244c7ef06e431ea7aef7c112df0431a6a89f2f96d24c3ed9aa1773286240328fddb8e0026c40dac058116d8608a608a608a60894f88fc3d056441265375374753678dbf1230dd4e08b1b99c5594aca6ad9a68d6ca2ae243ad56e7fe744ac0ed73f68876bb5c58ec443f8583d740ef0451c61198433894971f96e2e0deca0ef6ee0db0445cd9e3956a5aca75a82846a8e44f53a92c3529d3a642b61aaca36607adb0454e5d4af3ca568e79e9103695b3161650352d9cb206df80bd39182271155d45884cda98e924132537ab636ded32dcee3703a8c112acdb3dab584c8b9942e0394bc54960481761a9a57b6917248536b71822be7a12110cb5b5758d22dd15640919dc72d0a0245fd8ed7db0443d055c74e92688a0864945818c0f34392404624b35cdbe6602c47ca7044c66ca5633f11512c74ea88a9ae5b3dd7920b315b83f2dd85edd3045ea98d44ebe5d06a860360f5725cc8f616fb346e761f3b6dbeca7045a5c93268a963d112dae75331376763cb331dd89ee7044c70453045304530453045cb60890669e0ea5998c8aad04a6df6b03796e6c6fb95d9b7ee0e0886f84cd2023ca9e1aa402da6706393ff002202a7fecc1103166f3c726b9b27a856173aa191244b9e48175249e2fa70441cc28c4010c75d147183a5452b0097b5c6d1fab6017aed822e43f0d2a44f22d648e02d99695c0d805e0a5adb5ee4741822be91898a3822ca2a59105d5aa2444bb137258ea67249dcdc1c115bff00c4e79251215a5a4e2fe4a1924b8e0876d2a0ee77d079c113ba2f0a532b0924569e517fb49ceb6dfb5f65fa003044f4608a608a608a608bffd9);

-- --------------------------------------------------------

--
-- Table structure for table `school_mail`
--

CREATE TABLE IF NOT EXISTS `school_mail` (
  `servername` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `port` int(255) NOT NULL,
  UNIQUE KEY `servername` (`servername`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_mail`
--

INSERT INTO `school_mail` (`servername`, `username`, `password`, `port`) VALUES
('mits.ac.in', 'examadmin@mits.ac.in', '123', 587);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE IF NOT EXISTS `tokens` (
  `token_id` int(255) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  UNIQUE KEY `token_id` (`token_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` varchar(255) NOT NULL,
  `user_index` int(255) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'Student',
  `avatar` longblob,
  `password` varchar(255) NOT NULL DEFAULT '123456',
  `regdate` varchar(255) NOT NULL,
  PRIMARY KEY (`user_index`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `user_index`, `full_name`, `gender`, `email`, `address`, `role`, `avatar`, `password`, `regdate`) VALUES
('admin', 19, 'Admin ', 'Male', 'examadmin@mits.ac.in', 'Admin Address', 'Admin', NULL, '123', '6/04/2017');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
