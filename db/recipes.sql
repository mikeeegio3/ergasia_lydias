-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2024 at 07:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lmaorofl`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `recipe_id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `category` enum('Αλμυρό','Γλυκό') NOT NULL,
  `difficulty` enum('Εύκολη','Μεσαία','Δύσκολη') NOT NULL,
  `description` text NOT NULL,
  `description_tiny` varchar(100) NOT NULL,
  `rating` int(11) NOT NULL,
  `liked` tinyint(1) NOT NULL,
  `thumbnail` varchar(50) NOT NULL,
  `full_res` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`recipe_id`, `title`, `category`, `difficulty`, `description`, `description_tiny`, `rating`, `liked`, `thumbnail`, `full_res`, `author`) VALUES
(1, 'παστίτσιο', 'Αλμυρό', 'Μεσαία', 'Ψιλοκόβουμε τα κρεμμύδια, το σκόρδο και το θυμάρι.\r\nΤοποθετούμε μια κατσαρόλα σε δυνατή φωτιά, ρίχνουμε 2 κ.σ. ελαιόλαδο, τα κρεμμύδια, το σκόρδο, το θυμάρι και τη ζάχαρη, και σοτάρουμε για 3-4 λεπτά, μέχρι να καραμελώσουν.\r\nΠροσθέτουμε τον πελτέ ντομάτας και σοτάρουμε για ακόμα 2 λεπτά.\r\nΠροσθέτουμε τον κιμά και τον σπάμε με μια κουτάλα.\r\nΣοτάρουμε για 4-5 λεπτά μέχρι να πάρει χρώμα. Αν χρειαστεί, προσθέτουμε ακόμα 2 κ.σ. ελαιόλαδο.\r\nΣβήνουμε με το κρασί και αφήνουμε να εξατμιστεί τελείως το αλκοόλ του.\r\nΠροσθέτουμε την ντομάτα κονκασέ, την κανέλα, τους κύβους και τα φύλλα δάφνης. \r\nΜαγειρεύουμε σε χαμηλή φωτιά για 10-20 λεπτά μέχρι να πιει όλα τα υγρά του το φαγητό.\r\nΑποσύρουμε την κατσαρόλα από τη φωτιά και αφαιρούμε τα φύλλα δάφνης. \r\nΠροσθέτουμε τον μαϊντανό, ανακατεύουμε, και αφήνουμε στην άκρη.Τοποθετούμε μια κατσαρόλα σε μέτρια φωτιά, ρίχνουμε το βούτυρο και αφήνουμε να λιώσει.\r\nΠροσθέτουμε 100 γρ. αλεύρι και ανακατεύουμε καλά με ένα σύρμα χειρός για μερικά λεπτά μέχρι να καβουρδιστεί. Προσέχουμε να παίρνουμε και από τα πλάγια της κατσαρόλας το αλεύρι για να μην καεί.\r\nΠροσθέτουμε σε αρκετές δόσεις το γάλα, ανακατεύοντας συνεχώς με το σύρμα χειρός.\r\nΜόλις βγάλει τις πρώτες φουσκάλες, αποσύρουμε την κατσαρόλα από τη φωτιά.\r\nΠροσθέτουμε το αλάτι, το πιπέρι, το μοσχοκάρυδο και την τριμμένη γραβιέρα, και ανακατεύουμε με το σύρμα χειρός για να πέσει η θερμοκρασία. \r\nΠροσθέτουμε τους κρόκους και ανακατεύουμε ξανά μέχρι να ομογενοποιηθούν τα υλικά.Τοποθετούμε μια κατσαρόλα σε δυνατή φωτιά, ρίχνουμε νερό και αλάτι και αφήνουμε να πάρει βράση.\r\nΡίχνουμε τα ζυμαρικά και βράζουμε 2 λεπτά λιγότερο από τις οδηγίες της συσκευασίας.\r\nΑποσύρουμε την κατσαρόλα από τη φωτιά, σουρώνουμε τα ζυμαρικά και τα μεταφέρουμε ξανά στην κατσαρόλα.\r\nΡίχνουμε το ελαιόλαδο, ανακατεύουμε και μεταφέρουμε τα ζυμαρικά σε ένα ορθογώνιο ταψί διαστάσεων 25x35 εκ.\r\nΨιλοκόβουμε το θυμάρι και τον μαϊντανό και τα ρίχνουμε στο ταψί.\r\nΠροσθέτουμε τα αυγά και τη φέτα και ανακατεύουμε καλά με τα χέρια μας.Προθερμαίνουμε τον φούρνο στους 180°C στον αέρα.\r\nΡίχνουμε στον κιμά 1 μεγάλη κουταλιά μπεσαμέλ με την κουτάλα της σούπας και ανακατεύουμε καλά για να δέσει. \r\nΡίχνουμε τον κιμά πάνω από τα μακαρόνια και τον απλώνουμε καλά με ένα κουτάλι. \r\nΡίχνουμε από πάνω την μπεσαμέλ, την απλώνουμε καλά και πασπαλίζουμε με την τριμμένη γραβιέρα.\r\nΜεταφέρουμε το ταψί στον φούρνο και ψήνουμε για 40 λεπτά ή μέχρι να πάρει χρυσαφένιο χρώμα η μπεσαμέλ.\r\nΑφαιρούμε το ταψί από τον φούρνο και αφήνουμε στην άκρη να κρυώσει και να σταθεροποιηθεί για 30 λεπτά.\r\nΚόβουμε σε κομμάτια και σερβίρουμε.', 'Ψιλοκόβουμε τα κρεμμύδια, το σκόρδο και το θυμάρι...', 5, 0, 'pastitsio-mikro', 'pastitsio', 'mikes'),
(2, 'καρμπονάρα', 'Αλμυρό', 'Εύκολη', 'Σε μία κατσαρόλα με νερό που βράζει προσθέτουμε αλάτι, τα σπαγγέτι και βράζουμε 2 λεπτά λιγότερο από τις οδηγίες της συσκευασίας.\r\nΤοποθετούμε ένα τηγάνι στη φωτιά να κάψει.\r\nΚόβουμε το guanciale σε μικρά κομμάτια και τα βάζουμε στο καυτό τηγάνι.\r\nΠροσθέτουμε το βούτυρο και σοτάρουμε μέχρι να πάρει χρώμα.\r\nΣε ένα μπολ βάζουμε το αυγό, τους κρόκους, πιπέρι, λίγο αλάτι και χτυπάμε καλά με ένα σύρμα χειρός.\r\nΜε μία κουτάλα της σούπας παίρνουμε περίπου 150 γρ. από το νερό που βράζουν τα μακαρόνια και τα ρίχνουμε σιγά σιγά στο μπολ με τα αυγά ανακατεύοντας συνεχώς.\r\nΣουρώνουμε τα ζυμαρικά, τα βάζουμε στο τηγάνι με το guanciale, μία κουτάλα της σούπας από το νερό που βράσαμε τα μακαρόνια και ανακατεύουμε.\r\nΑφαιρούμε από τη φωτιά και μεταφέρουμε σε ένα μπολ. Προσθέτουμε μέσα το μείγμα με τα αυγά και ανακατεύουμε για 1-2 λεπτά για να ψηθούν τα αυγά από τα καυτά μακαρόνια.\r\nΒάζουμε την παρμεζάνα και ανακατεύουμε.\r\nΣερβίρουμε αμέσως με πιπέρι και πεκορίνο τριμμένο.', 'Σε μία κατσαρόλα με νερό που βράζει προσθέτουμε αλάτι, τα σπαγγέτι και βράζουμε 2 λεπτά λιγότερο από', 5, 0, 'karmponara-mikro', 'karmponara', 'eva'),
(3, 'μουσακάς', 'Αλμυρό', 'Μεσαία', 'Βάζουμε ένα τηγάνι σε δυνατή φωτιά.\r\nΚόβουμε τις πατάτες σε ροδέλες πάχους 1 εκ. και τις ψήνουμε στο τηγάνι μαζί με 2-3 κ.σ. ελαιόλαδο μέχρι να πάρουν καλό χρώμα και από τις δύο πλευρές.\r\nΣε ένα ταψί 25x30 εκ. με ελάχιστο ελαιόλαδο στρώνουμε τις πατάτες, ρίχνουμε θυμάρι και αλατοπιπερώνουμε.\r\nΚόβουμε το κρεμμύδι σε λεπτές φέτες και το ρίχνουμε στο ίδιο τηγάνι μαζί με λίγο ελαιόλαδο.\r\nΣοτάρουμε το κρεμμύδι μέχρι να καραμελώσει και το βάζουμε στο ταψί πάνω από τις πατάτες.\r\nΚόβουμε τα κολοκύθακια σε ροδέλες και τα ρίχνουμε στο ίδιο τηγάνι μαζί με λίγο ελαιόλαδο.\r\nΠεριμένουμε μέχρι να πάρουν λίγο χρώμα και τα στρώνουμε πάνω στις πατάτες, ρίχνουμε θυμάρι και αλατοπιπερώνουμε.\r\nΚόβουμε τις μελιτζάνες σε ροδέλες και τις ρίχνουμε στο ίδιο τηγάνι μαζί με λίγο ελαιόλαδο.\r\nΠεριμένουμε μέχρι να πάρουν λίγο χρώμα και τις στρώνουμε πάνω από τα κολοκύθια, ρίχνουμε θυμάρι και αλατοπιπερώνουμε. Χοντροκόβουμε το κρεμμύδι και το ρίχνουμε στο ίδιο τηγάνι που χρησιμοποιήσαμε για τα λαχανικά μαζί με λίγο ελαιόλαδο σε δυνατή φωτιά.\r\nΨιλοκόβουμε το σκόρδο και το ρίχνουμε μέσα στο τηγάνι.\r\nΠροσθέτουμε τη ζάχαρη, το μοσχοκάρυδο, την κανέλα και τον πελτέ, και ανακατεύουμε με μία ξύλινη κουτάλα.\r\nΣε αυτό το σημείο ξύνουμε με την κουτάλα τον πάτο του τηγανιού για να ανακατευτεί καλά ο πελτές, να πάρει χρώμα και να φύγει η πικρή του γεύση.\r\nΠροσθέτουμε τον κιμά στο τηγάνι και ανακατεύουμε πολύ καλά μέχρι να καραμελώσει και να πάρει ωραίο χρώμα.\r\nΣβήνουμε με την τομάτα κονκασέ, ανακατεύουμε καλά και αφήνουμε να δέσει σε χαμηλή φωτιά για 10-15 λεπτά.\r\nΑνακατεύουμε ανά τακτά χρονικά διαστήματα.\r\nΛίγο πριν αφαιρέσουμε από τη φωτιά, αλατοπιπερώνουμε.Βάζουμε ένα κατσαρολάκι σε χαμηλή φωτιά.\r\nΠροσθέτουμε το βούτυρο. Μόλις λιώσει ρίχνουμε το αλεύρι και ανακατεύουμε με το σύρμα.\r\nΠροσθέτουμε το γάλα, σταδιακά σε δόσεις. (Είναι πολύ σημαντικό να ρίχνουμε το γάλα σε μικρές δόσεις. Μόλις απορροφηθεί η πρώτη (να μην έχει γρομπαλάκια), τότε ρίχνουμε την επόμενη δόση.\r\nΑνακατεύουμε συνεχώς έτσι ώστε να μη σβολιάσει το μείγμα. (Κάνουμε αυτή τη διαδικασία μέχρι να απορροφηθεί τελείως το γάλα.)\r\nΜόλις η μπεσαμέλ αρχίσει να βγάζει φουσκάλες, είναι έτοιμη. Θα πρέπει να είναι κρεμώδης και λεία.\r\nΑφαιρούμε από τη φωτιά και προσθέτουμε μέσα τριμμένο πιπέρι, τριμμένο μοσχοκάρυδο, λίγη παρμεζάνα, τους κρόκους από τα αυγά και ανακατεύουμε καλά.Προθερμαίνουμε τον φούρνο στους 200°C στον αέρα.\r\nΡίχνουμε 200 γρ. από τη μπεσαμέλ μέσα στον κιμά. Με αυτόν τον τρόπο θα κρατηθούν όλα τα υλικά του μουσακά μας ενωμένα.\r\nΠροσθέτουμε αν χρειάζεται αλάτι και πιπέρι.\r\nΣτρώνουμε τον κιμά στο ταψί με τα λαχανικά.\r\nΤέλος, προσθέτουμε την μπεσαμέλ (προσέχουμε να τη στρώσουμε καλά σε όλο το ταψί) και πασπαλίζουμε με τριμμένη παρμεζάνα.\r\nΨήνουμε στον φούρνο 35-40 λεπτά μέχρι να πάρει χρυσαφί χρώμα.\r\nΑφαιρούμε από τον φούρνο και αφήνουμε να κρυώσει καλά για 1 ώρα.\r\nΚόβουμε σε κομμάτια και σερβίρουμε.', 'Βάζουμε ένα τηγάνι σε δυνατή φωτιά.\r\nΚόβουμε τις πατάτες σε ροδέλες πάχους 1 εκ. και τις ψήνουμε στο', 4, 0, 'mousakas-mikro', 'mousakas', 'eva'),
(4, 'σοκολατόπιτα', 'Γλυκό', 'Εύκολη', 'Βάζουμε σε μια κατσαρόλα τη ζάχαρη, το νερό και μεταφέρουμε σε δυνατή φωτιά. Αφήνουμε μέχρι να πάρει μια βράση και λιώσει η ζάχαρη.\r\nΑφαιρούμε από τη φωτιά, βάζουμε το ρούμι και αφήνουμε στην άκρη να κρυώσει.Σε ένα μπολ βάζουμε το αλεύρι, το κακάο, τη ζάχαρη, το μπέικιν πάουντερ, αλάτι και ανακατεύουμε.\r\nΣε άλλο μπολ βάζουμε το βούτυρο, το γάλα, τη βανίλια, τα αβγά και ανακατεύουμε καλά με ένα σύρμα χειρός.\r\nΒάζουμε τα υγρά υλικά στο μπολ με τα στερεά και ανακατεύουμε καλά μέχρι να έχουμε ένα σφιχτό μείγμα.\r\nΒουτυρώνουμε και πασπαλίζουμε με κακάο ένα πυρίμαχο σκεύος 25 εκ. και μεταφέρουμε όλο το μείγμα. Βρέχουμε τα χέρια μας και απλώνουμε καλά σε όλη την επιφάνεια του σκεύους.\r\nΜεταφέρουμε στον φούρνο μικροκυμάτων στα 800 Watt για 6-8 λεπτά. Αφαιρούμε και περιχύνουμε με το κρύο σιρόπι.Ψιλοκόβουμε την κουβερτούρα ή τη λιώνουμε και απλώνουμε πάνω από τη σοκολατόπιτα. Με αυτόν τον τρόπο καταναλώνεται ζεστή.\r\nΑν θέλουμε να την καταναλώσουμε κρύα τότε φτιάχνουμε μια γκανάς με 200 γρ. κρέμα γάλακτος και 200 γρ. κουβερτούρα, περιχύνουμε τη σοκολατόπιτα και αφήνουμε να κρυώσει και να σταθεροποιηθεί.', 'Βάζουμε σε μια κατσαρόλα τη ζάχαρη, το νερό και μεταφέρουμε σε δυνατή φωτιά...', 5, 0, 'sokolatopita-mikro', 'sokolatopita', 'mikes'),
(5, 'τιραμισού', 'Γλυκό', 'Εύκολη', 'Βάζουμε στον κάδο του μίξερ το μασκαρπόνε, την άχνη ζάχαρη, το εκχύλισμα βανίλιας, τη μαυροδάφνη, τα 75 γρ. καφέ και χτυπάμε καλά με το σύρμα μέχρι να ομογενοποιηθεί το μείγμα.\r\nΜε μια μαρίζ παίρνουμε ότι έχει κολλήσει στα τοιχώματα του κάδου μας και χτυπάμε ξανά μέχρι να σφίξει το μείγμα.\r\nΜε το που σφίξει το τυρί μας, ρίχνουμε την παγωμένη κρέμα γάλακτος και χτυπάμε μέχρι να πάρει τη μορφή γιαουρτιού.\r\nΜόλις είναι έτοιμη αφαιρούμε από τον κάδο και αφήνουμε στην άκρη.\r\nΣε ένα μπολ βάζουμε 225 γρ. ζεστό καφέ, προσθέτουμε τα κομμάτια κουβερτούρας και ανακατεύουμε μέχρι να λιώσει.\r\nΠαίρνουμε ένα σαβαγιάρ, από τη μεριά της ζάχαρης, το βουτάμε στιγμιαία στο μπολ με τον καφέ και τοποθετούμε σε ένα ταψάκι 25x32 εκ. \r\nΕπαναλαμβάνουμε και για τα υπόλοιπα μέχρι να καλυφθεί όλη η επιφάνεια της βάσης. (18 σαβαγιάρ)\r\nΑπό πάνω στρώνουμε τη μισή κρέμα.\r\nΠαίρνουμε πάλι ένα σαβαγιάρ, από τη μεριά της ζάχαρης, το βουτάμε στιγμιαία στον καφέ και στρώνουμε από πάνω κάθετα στα προηγούμενα.\r\nΕπαναλαμβάνουμε για τα υπόλοιπα 18 σαβαγιάρ και σκεπάζουμε με την υπόλοιπη κρέμα.\r\nΒάζουμε στο ψυγείο για τουλάχιστον 6 ώρες να δέσει το γλυκό μας. \r\nΑφαιρούμε από το ψυγείο και με ένα πιρούνι δίνουμε σχήμα στο γλυκό μας.\r\nΠασπαλίζουμε με κακάο, ξύσμα κουβερτούρας και κόβουμε σε κομμάτια.', 'Βάζουμε στον κάδο του μίξερ το μασκαρπόνε, την άχνη ζάχαρη, το εκχύλισμα βανίλιας, τη μαυροδάφνη, τα', 5, 0, 'tiramisou-mikro', 'tiramisou', 'eva'),
(6, 'παέγια', 'Αλμυρό', 'Δύσκολη', 'Σε μία κατσαρόλα βάζουμε τα κελύφη και τα κεφάλια από τις γαρίδες, τον κύβο, το σαφράν και το νερό.\r\nΜεταφέρουμε σε δυνατή φωτιά, αφήνουμε μέχρι να πάρει μία βράση και αφαιρούμε από τη φωτιά.\r\nΒάζουμε ένα τηγάνι σε δυνατή φωτιά για να κάψει καλά.\r\nΚόβουμε το κοτόπουλο σε λωρίδες και στη συνέχεια σε κυβάκια 1 εκ.\r\nΠροσθέτουμε 1 κ.σ. ελαιόλαδο στο καυτό τηγάνι και βάζουμε το μισό τσορίθο. Σοτάρουμε για 1 λεπτό μέχρι να πάρει χρώμα και να αρωματιστεί το ελαιόλαδο. Αφαιρούμε και αφήνουμε στην άκρη.\r\nΣτο ίδιο τηγάνι προσθέτουμε το κοτόπουλο  και το σοτάρουμε 2-3 λεπτά μέχρι να πάρει χρώμα από όλες τις πλευρές. Αφαιρούμε και αφήνουμε στην άκρη.\r\nΠροσθέτουμε 1 κ.σ. ελαιόλαδο στο ίδιο τηγάνι και προσθέτουμε το υπόλοιπο τσορίθο. Σοτάρουμε για 1 λεπτό μέχρι να πάρει χρώμα και να αρωματιστεί το ελαιόλαδο. Αφαιρούμε και αφήνουμε στην άκρη αλλά αφήνουμε το ελαιόλαδο στο τηγάνι.\r\nΠροσθέτουμε τις γαρίδες και σοτάρουμε για 2 λεπτά και από τις δύο πλευρές μέχρι να πάρουν χρώμα. Αφαιρούμε από το τηγάνι και τις αφήνουμε στην άκρη.\r\nΒάζουμε το ίδιο τηγάνι στη φωτιά και προσθέτουμε 3 κ.σ. ελαιόλαδο.\r\nΨιλοκόβουμε το κρεμμύδι και το σκόρδο και τα βάζουμε στο τηγάνι. Σοτάρουμε μέχρι να πάρουν χρώμα.\r\nΣτη συνέχεια, προσθέτουμε το ρύζι και ανακατεύουμε καλά με μία ξύλινη κουτάλα για 2 λεπτά.\r\nΠροσθέτουμε την πάπρικα, σβήνουμε με το κρασί και ανακατεύουμε με ξύλινη κουτάλα μέχρι να εξατμιστεί.\r\nΠροσθέτουμε τον ζωμό από τις γαρίδες περνώντας τον από ένα σουρωτήρι.\r\nΧαμηλώνουμε σε μέτρια φωτιά και βράζουμε για 15 λεπτά, με ανοιχτό καπάκι μέχρι να απορροφηθούν τα υγρά. Ανακατεύουμε ανά τακτά χρονικά διαστήματα.\r\nΠροσθέτουμε το κοτόπουλο, το τσορίθο, τις γαρίδες, τα μύδια, τον αρακά, τα τοματίνια κομμένα στη μέση και ανακατεύουμε με ξύλινη κουτάλα. Κλείνουμε το καπάκι και βράζουμε για 5 λεπτά μέχρι να ανοίξουν τα μύδια.\r\nΑφαιρούμε από τη φωτιά και αφήνουμε στην άκρη.\r\nΨιλοκόβουμε το πράσινο μέρος από τα φρέσκα κρεμμυδάκια, τον άνηθο και τον μαϊντανό.\r\nΑνοίγουμε το καπάκι από το τηγάνι και αν υπάρχουν μύδια που δεν έχουν ανοίξει τα πετάμε!!!\r\nΠροσθέτουμε αλάτι, πιπέρι, 3 κ.σ. ελαιόλαδο, το φρέσκο κρεμμυδάκι, τον άνηθο, τον μαϊντανό, το ξύσμα και τον χυμό λεμονιού και ανακατεύουμε καλά με μία κουτάλα.\r\nΣερβίρουμε με λίγο άνηθο, μαϊντανό και φέτες από λεμόνι.', 'Σε μία κατσαρόλα βάζουμε τα κελύφη και τα κεφάλια από τις γαρίδες, τον κύβο, το σαφράν και το νερό..', 3, 0, 'paegia-mikro', 'paegia', 'mikes'),
(7, 'τούρτα κοκ', 'Γλυκό', 'Δύσκολη', 'Τοποθετούμε ένα κατσαρολάκι σε μέτρια φωτιά, ρίχνουμε τη ζάχαρη, το νερό και τις φλούδες λεμονιού, και αφήνουμε για 2-3 λεπτά να πάρει μια βράση και να λιώσει η ζάχαρη.\r\nΠροσθέτουμε το κονιάκ, αποσύρουμε το κατσαρολάκι από τη φωτιά και αφήνουμε στην άκρη να κρυώσει.Προθερμαίνουμε τον φούρνο στους 170°C στον αέρα.\r\nΑλείφουμε ένα ταψί διαμέτρου 20 εκ. με βούτυρο, πασπαλίζουμε με αλεύρι, τινάζουμε για να φύγει το περιττό και αφήνουμε στην άκρη.\r\nΡίχνουμε στον κάδο του μίξερ τα ασπράδια και το αλάτι, και ξεκινάμε να χτυπάμε με το σύρμα σε δυνατή ταχύτητα.\r\nΠροσθέτουμε τη ζάχαρη σε 5 δόσεις, περιμένοντας μισό λεπτό ανάμεσα σε κάθε δόση και χτυπάμε μέχρι έχουμε μια μαρέγκα. \r\nΧαμηλώνουμε την ταχύτητα του μίξερ σε χαμηλή προς μέτρια ένταση και προσθέτουμε τις βανιλίνες.\r\nΡίχνουμε έναν-έναν τους κρόκους περιμένοντας να απορροφηθεί ο πρώτος για να ρίξουμε τον επόμενο και χτυπάμε μέχρι να ενσωματωθούν στο μείγμα.\r\nΑφαιρούμε τον κάδο από το μίξερ και προσθέτουμε το αλεύρι και το κορν φλάουρ περνώντας τα από μια σίτα. \r\nΑνακατεύουμε απαλά με μια κουτάλα ή σπάτουλα σιλικόνης μέχρι να ομογενοποιηθούν τα υλικά και να αποκτήσει το μείγμα αέρινη υφή.\r\nΑδειάζουμε το μείγμα στο ταψί, μεταφέρουμε στον φούρνο και ψήνουμε για 25-30 λεπτά μέχρι να ψηθεί καλά μέχρι μέσα. (Μπορούμε να ελέγξουμε αν το παντεσπάνι έχει ψηθεί εσωτερικά τρυπώντας το με μια οδοντογλυφίδα. Αν η οδοντογλυφίδα βγει καθαρή, τότε είναι έτοιμο.)\r\nΑφαιρούμε το ταψί από τον φούρνο και αφήνουμε στην άκρη για 1 ώρα να κρυώσει εντελώς.Τοποθετούμε μια κατσαρόλα σε μέτρια φωτιά, ρίχνουμε το βούτυρο και το αλεύρι, και αφήνουμε να λιώσει το βούτυρο. \r\nΡίχνουμε σε ένα μπολ το γάλα, τη ζάχαρη, τους κρόκους, το κορν φλάουρ και τη βανιλίνη, και ανακατεύουμε καλά με ένα σύρμα χειρός μέχρι να ομογενοποιηθεί το μείγμα.\r\nΜεταφέρουμε το μείγμα του μπολ στην κατσαρόλα και ανακατεύουμε με το σύρμα για 4-5 λεπτά μέχρι να πάρει βράση και να δέσει η κρέμα.\r\nΑποσύρουμε την κατσαρόλα από τη φωτιά και αφήνουμε στην άκρη.Αφαιρούμε το παντεσπάνι από το ταψί και στρώνουμε διάφανη μεμβράνη έτσι ώστε να εξέχει αρκετά από τα τοιχώματα του ταψιού. \r\nΚόβουμε το παντεσπάνι εγκάρσια με ένα πριονωτό μαχαίρι ώστε να έχουμε 2 ίσα κομμάτια.\r\nΑλείφουμε με ένα πινέλο το κάτω κομμάτι από το παντεσπάνι με το σιρόπι και από τις 2 πλευρές και το τοποθετούμε στο ταψί με την πλευρά που κόψαμε να είναι προς τα πάνω.\r\nΡίχνουμε από πάνω όλη την κρέμα όσο είναι ζεστή και την απλώνουμε με ένα κουτάλι ώστε να καλύψει όλη την επιφάνεια.\r\nΑλείφουμε και το δεύτερο παντεσπάνι με το σιρόπι και από τις 2 πλευρές και το τοποθετούμε στο ταψί με την πλευρά που κόψαμε να είναι προς τα κάτω.\r\nΚαλύπτουμε με τη μεμβράνη που εξέχει και μεταφέρουμε το ταψί στο ψυγείο για 5-6 ώρες να σταθεροποιηθεί καλά. (Εναλλακτικά μεταφέρουμε στην κατάψυξη για 1 ώρα.)Ψιλοκόβουμε την κουβερτούρα και τη ρίχνουμε σε ένα μπολ.\r\nΠροσθέτουμε την κρέμα γάλακτος και το βούτυρο, καλύπτουμε με διάφανη μεμβράνη και μεταφέρουμε στον φούρνο μικροκυμάτων για 1-1 ½ λεπτά στα 800 Watt.\r\nΑφαιρούμε και ανακατεύουμε ελαφρά μέχρι να λιώσει τελείως η κουβερτούρα και να ομογενοποιηθεί το μείγμα.\r\nΑφαιρούμε την τούρτα από το ψυγείο, ξεφορμάρουμε, βγάζουμε τη μεμβράνη και την τοποθετούμε σε μια επιφάνεια σερβιρίσματος.\r\nΡίχνουμε από πάνω το γλάσο και το απλώνουμε με ένα κουτάλι σε όλη την επιφάνεια.\r\nΚόβουμε σε κομμάτια και σερβίρουμε με φύλλα δυόσμου. \r\n', 'Τοποθετούμε ένα κατσαρολάκι σε μέτρια φωτιά, ρίχνουμε τη ζάχαρη, το νερό και τις φλούδες λεμονιού...', 5, 0, 'tourtakok-mikro', 'tourtakok', 'mikes'),
(8, 'ρυζόγαλο', 'Γλυκό', 'Εύκολη', 'Σε μια κατσαρόλα βάζουμε το νερό, το ρύζι, τις φλούδες πορτοκαλιού, την κανέλα και μεταφέρουμε σε μέτρια φωτιά. Σιγοβράζουμε για 20-25 λεπτά.\r\nΣουρώνουμε και αφήνουμε στην άκρη.\r\nΤοποθετούμε την ίδια κατσαρόλα σε μέτρια φωτιά και βάζουμε 700 γρ. από το γάλα, τη ζάχαρη και αφήνουμε να πάρει μια βράση.\r\nΣε ένα μπολ βάζουμε το υπόλοιπο γάλα, τις βανιλίνες, το κορν φλάουρ και ανακατεύουμε να διαλυθεί το κορν φλάουρ.\r\nΒάζουμε στην κατσαρόλα το ρύζι, το μείγμα με το κορν φλάουρ, αλάτι και ανακατεύουμε με μια μαρίζ για 3-4 λεπτά μέχρι να δέσει το μείγμα.\r\nΑφαιρούμε τις φλούδες του πορτοκαλιού, την κανέλα και μοιράζουμε σε μπολάκια. Καλύπτουμε με μεμβράνη και μεταφέρουμε στο ψυγείο να κρυώσουν.\r\nΚαταναλώνονται κρύα από το ψυγείο με κανέλα.', 'Σε μια κατσαρόλα βάζουμε το νερό, το ρύζι, τις φλούδες πορτοκαλιού, την κανέλα και μεταφέρουμε σε μέ', 2, 0, 'rizogalo-mikro', 'rizogalo', 'mikes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`recipe_id`,`author`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
