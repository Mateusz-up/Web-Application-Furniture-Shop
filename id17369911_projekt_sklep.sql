-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Czas generowania: 08 Sie 2021, 10:34
-- Wersja serwera: 10.3.18-MariaDB
-- Wersja PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `id17369911_projekt_sklep`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategoria`
--

CREATE TABLE `kategoria` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `kategoria`
--

INSERT INTO `kategoria` (`id`, `nazwa`) VALUES
(1, 'Kuchnia'),
(2, 'Lazienka'),
(3, 'Salon'),
(4, 'Jadalnia'),
(5, 'Sypialnia');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `koszyk`
--

CREATE TABLE `koszyk` (
  `id` int(11) NOT NULL,
  `id_uzytkownika` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `ilosc_produktow` int(11) NOT NULL,
  `id_promocji` int(11) DEFAULT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `podkategoria`
--

CREATE TABLE `podkategoria` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `id_kategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `podkategoria`
--

INSERT INTO `podkategoria` (`id`, `nazwa`, `id_kategoria`) VALUES
(1, 'Krzesla_Kuchenne', 1),
(2, 'Stoly_Kuchenne', 1),
(3, 'Szafki_Kuchenne', 1),
(4, 'Blaty_Kuchenne', 1),
(5, 'Akcesoria_Kuchenne', 1),
(6, 'Lustra_Lazienkowe', 2),
(7, 'Umywalki_Lazienkowe', 2),
(8, 'Szafki_Lazienkowe', 2),
(9, 'Akcesoria_Lazienkowe', 2),
(10, 'Stoly_Salonowe', 3),
(11, 'Regaly_Salonowe', 3),
(12, 'Szafy_Salonowe', 3),
(13, 'Narozniki_Salonowe', 3),
(14, 'Krzesla_Salonowe', 3),
(15, 'Stoly_Jadalnia', 4),
(16, 'Krzesla_Jadalnia', 4),
(17, 'Komody_Jadalnia', 4),
(18, 'Witryny_Jadalnia', 4),
(19, 'Lozka_Sypialnia', 5),
(20, 'Materace_Sypialnia', 5),
(21, 'Szafy_Sypialnia', 5),
(22, 'Komody_Sypialnia', 5),
(23, 'Lustra_Sypialnia', 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id` int(11) NOT NULL,
  `id_zdjec` varchar(15) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `id_opisu_zdj` text COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwa` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `opis` text CHARACTER SET utf8 NOT NULL,
  `parametry` text CHARACTER SET utf8 NOT NULL,
  `cena` float NOT NULL,
  `ilosc` int(11) NOT NULL,
  `id_podkategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id`, `id_zdjec`, `id_opisu_zdj`, `nazwa`, `opis`, `parametry`, `cena`, `ilosc`, `id_podkategoria`) VALUES
(1, 'K01', 'https://mirat.eu/img/products/30/62/3/4_max.jpg', 'Krzesło Kolix  ', '-Wytrzymałe drewniane nogi\r\n-Siedzisko z miękką poduchą\r\n-Wygodne siedzisko oraz oparcie', 'Szerokość:  45cm\r\n\r\nGłębokość:  53cm\r\n\r\nWysokość:   87cm\r\n\r\nMateriał:  tkanina', 145, 8, 1),
(2, 'K02', 'https://www.quadre.pl/img/products/67/26/2_max.jpg', 'Krzesło Deplex ', '-krzesło tapicerowane tkaniną\r\n-nogi mają zabezpieczenia przed uszkodzeniem paneli podłogowych\r\n-wytrzymałe drewniane nogi', 'Szerokość:  48cm\r\n\r\nGłębokość:  55cm\r\n\r\nWysokość:   84cm\r\n\r\nMateriał:  tkanina', 170, 25, 1),
(3, 'K03', 'https://meblujdom.pl/29029-thickbox_default/krzeslo-tapicerowane-tkanina-otto-signal.jpg', 'Krzesło Protex ', '-drewniany stelaż\r\n\r\n-tapicerowane tkaniną siedzisko i oparcie\r\n\r\n-wytrzymałe nogi', 'Szerokość: 44cm\r\n\r\nGłębokość: 54cm\r\n\r\nWysokość:  98cm\r\n\r\n', 210, 25, 1),
(4, 'K04', 'https://lifestylehome.com.pl/639002-home_default/lsh-signal-soren-krzesło-tkanina-szary.jpg', 'Krzesło Malin ', '-wytrzymałe drewno\r\n\r\n-stelaż lakierowany na biało\r\n\r\n-siedzisko wykonane z tkaniny ', 'Szerokość: 44cm\r\n\r\nGłębokość: 51cm\r\n\r\nWysokość:  98cm\r\n\r\nMateriał:  tkanina grafit', 165, 31, 1),
(5, 'K05', 'https://www.momastudio.pl/produkty/KRZESLOTAPICEROWANESKORALAYLAHIGH5.jpg', 'Krzesło Dorex ', '-stelaż wykonany z drewna\r\n\r\n-siedzisko wykonane  jest z skóry\r\n\r\n-wytrzymałe nogi', 'Szerokość: 48cm\r\n\r\nGłębokość: 01cm\r\n\r\nWysokość:  98cm\r\n\r\nMateriał: skóra', 190, 33, 1),
(6, 'K06', 'http://www.meblowy.pl/images/oferta/t_2014-11-10-12-36-33-000000000885571_big.jpeg', 'Krzesło Nilix', '-stelaż metalowy w kolorze srebrnym\r\n\r\n-siedzisko tapicerowane skórą\r\n\r\n-idealne krzesło do jadalni\r\n\r\n-wygodne w siedzeniu', 'Szerokość: 45cm\r\n\r\nGłębokość: 48cm\r\n\r\nWysokość:  94cm\r\n\r\nMateriał: skóra', 175, 8, 1),
(7, 'K07', 'https://mirat.eu/img/products/39/23/0/15_max.jpg', 'Krzesło Apelinek', '-stelaż metalowy\r\n\r\n-krzesło jest tapicerowane skórą\r\n\r\n-wygodne w siedzeniu \r\n\r\n', 'Szerokość: 44cm\r\n\r\nGłębokość: 01cm\r\n\r\nWysokość:  98cm\r\n\r\nMateriał:  skóra', 220, 25, 1),
(8, 'K08', 'https://www.meblant.pl/upload/wysiwyg/zdjecia/MM/Krzesła%20metalowe/campa.jpg', 'Krzesło Terelek', '-krzesło wykonane z metalu\r\n\r\n-4 nogi stalowe\r\n\r\n-siedzisko tapicerowane\r\n\r\n-krzesło idealne do jadalni', 'Szerokość: 47cm\r\n\r\nGłębokość: 53cm\r\n\r\nWysokość:  94cm\r\n\r\nMateriał:  tapicerowana skóra', 160, 16, 1),
(9, 'K09', 'https://www.inspirowane.pl/1521246-thickbox/insp-plush-krzesla-krzeslo-tkanina-4-kolory.jpg', 'Krzesło Herbelin', '-stelaż 4 drewniane nogi\r\n\r\n-wygodne w siedzeniu\r\n\r\n-oparcie oraz siedzisko wykonane z tkaniny\r\n\r\n-wytrzymałe nogi', 'Szerokość: 47cm\r\n\r\nGłębokość: 42cm\r\n\r\nWysokość:  94cm\r\n\r\nMateriał:  tkanina', 215, 18, 1),
(10, 'S01', 'https://cdn.arena.pl/6f12a0c9132ec9d935903d126d44a968-product_lightbox.jpg', 'Stół  Petex', '-Nogi wykonane z drewna bukowego\r\n\r\n-Blat wykonany z płyty laminowanej\r\n\r\n-Stół jest rozkładany do maksymalnej szerokości 240cm', 'Szerokość:  130-240cm\r\n\r\nGłębokość:  90cm\r\n\r\nWysokość:   76cm\r\n\r\nWaga:       44 kilogramy', 510, 36, 2),
(11, 'S02', 'https://cdn.arena.pl/1203d6b8476609e34def60703abffa81-product_lightbox.jpg', 'Stół Delex', '-Stół rozkładany do długości 220cm\r\n\r\n-Blat wykonany z płyty laminowanej\r\n\r\n-Solidne nogi', 'Szerokość:  120-220cm\r\n\r\nGłębokość:  75cm\r\n\r\nWysokość:   80cm\r\n\r\nWaga:       47 kilogramy', 450, 27, 2),
(12, 'S03', 'https://www.ikea.com/pl/pl/images/products/ekedalen-sto-rozk-adany__0516741_PE640521_S4.JPG', 'Stół Betlek', '-Stół jest cały wykonany z drewna bukowego\r\n\r\n-Stół rozkładany', 'Szerokość:  130-210cm\r\n\r\nGłębokość:  73cm\r\n\r\nWysokość:   74cm\r\n\r\nWaga:       36 kilogramy', 550, 47, 2),
(13, 'S04', 'https://static.abra-meble.pl/catalog/product/cache/1/thumbnail/9df78eab33525d08d6e5fb8d27136e95/s/t/sto_-soleo-czekolada-_1_.jpg', 'Stół Coblek', '-Materiał płyta meblowa\r\n\r\n-Stół rozkładany\r\n\r\n-Wykonany cały z drewna\r\n\r\n\r\n\r\n\r\n', 'Szerokość:  140-210cm\r\n\r\nGłębokość:  79cm\r\n\r\nWysokość:   72cm\r\n\r\nWaga:       42 kilogramy', 430, 21, 2),
(14, 'S05', 'https://www.wmrowisku.pl/img/min/764/421/76421054_signal-stol-rozkladany-kent-ii-bialy-buk-150x80_800x600_FFFFFF_pad.jpg', 'Stół Likex', '-Stół rozkładany do szerokości 220cm\r\n\r\n-Wykonany z drewna \r\n\r\n-Solidny,wytrzymały', 'Szerokość:  120-220cm\r\n\r\nGłębokość:  85cm\r\n\r\nWysokość:   80cm\r\n\r\nWaga:       47 kilogramy', 670, 16, 2),
(15, 'S06', 'https://www.brw.pl/gfx/brw/img/produkt/stol-rozkladany-miron-mini-kolor-dab-sonoma-21995-xlarge.jpg', 'Stół Bret', '-Idealny stół do kuchni\r\n\r\n-Stabilna konstrukcja\r\n\r\n-Wykonany cały z drewna', 'Szerokość:  180cm\r\n\r\nGłębokość:  75cm\r\n\r\nWysokość:   70cm\r\n\r\nWaga:       33 kilogramy', 300, 12, 2),
(16, 'S07', 'http://www.exceleo.pl/upload/sklep_galeria/6198/rozkladany-stol-gar-kolor-bloto-122-182x80-bizzotto-modern--produkt-importowany708.jpg', 'Stół Olik', '-Rozkładany stół\r\n\r\n-Szerokość po rozłożeniu to 215cm\r\n\r\n-Solidne nogi', 'Szerokość:  111-215cm\r\n\r\nGłębokość:  66cm\r\n\r\nWysokość:   75cm\r\n\r\nWaga:       41 kilogramy', 370, 9, 2),
(17, 'S08', 'https://image.ceneostatic.pl/data/products/44122374/i-king-home-stol-galaxy-rozkladany-bialy-lakierowany-140-200-cm-jastgalaxy1420.jpg', 'Stół Pretey', '-Stół wykonany z płyty meblowej w kolorze białym\r\n\r\n-Długość po rozłożeniu to 206cm', 'Szerokość:  160-206cm\r\n\r\nGłębokość:  81cm\r\n\r\nWysokość:   73cm\r\n\r\nWaga:       55 kilogramy', 750, 8, 2),
(18, 'S09', 'https://lepukka.pl/26616-large_default/stol-brooklyn-170-270-ciemny-braz.jpg', 'Stół Dref', '-Blat stołu wykonany z drewna w kolorze ciemno-brązowym\r\n\r\n-Nogi wykonane z drewna w kolorze szarym\r\n\r\n-Długość po rozłożeniu to 219cm', 'Szerokość:  150-219cm\r\n\r\nGłębokość:  92cm\r\n\r\nWysokość:   86cm\r\n\r\nWaga:       56 kilogramy', 750, 6, 2),
(19, 'SZ01', 'https://meblodom.com.pl/media/catalog/product/cache/2/image/9df78eab33525d08d6e5fb8d27136e95/u/n/untitled.104_1.jpg', 'Szafka dolna z szufladą Lener', 'Szafka dolna z 1 szufladą o szerokości 43cm.\r\nW szafce można umieszczać wiele drobiazgów jak sztuczce, ręczniki, a także można umieścić kosz na śmieci.\r\nMożna zaopatrzyć się o blat do szafki.', 'Głębokość: 47cm\r\n\r\nSzerokość: 43cm\r\n\r\nWysokość: 78cm\r\n\r\nWaga:     21kg', 160, 17, 3),
(20, 'SZ02', 'https://meblodom.com.pl/media/catalog/product/cache/2/image/9df78eab33525d08d6e5fb8d27136e95/u/n/untitled.94.jpg', 'Szafka górna Blen', 'Szafka górna o szerokości 38cm idealnie pasuje do otoczenia.\r\nDodatkowo szafka posiada dwie wkładane półki.', 'Głębokość: 35cm\r\n\r\nSzerokość: 38cm\r\n\r\nWysokość:  73cm\r\n\r\nWaga:      14kg', 115, 21, 3),
(23, 'SZ05', 'https://images.obi.pl/product/PL/1500x1500/249158_1.jpg', 'Szafka dolna Plem', 'Szafka dolna z 3 szufladami\r\nKorpus-biały\r\nPłyta wiórowa laminowana', 'Głębokość: 41cm\r\n\r\nSzerokość: 39cm\r\n\r\nWysokość: 81cm\r\n\r\nWaga:     24kg', 145, 23, 3),
(24, 'SZ06', 'https://noka.pl/5545-large_default/wysoka-szafka-kuchenna-odeta.jpg', 'Szafka wysoka Bretil', 'Szafka wysoka z podświetlanymi półkami.\r\nW skład wchodzą dwie otwierane półki.\r\nGórna część wykonana z dębu w kolorze\r\njasnym.', 'Głębokość: 59cm\r\n\r\nSzerokość: 55cm\r\n\r\nWysokość: 180cm\r\n\r\nWaga:     55kg', 250, 26, 3),
(25, 'SZ07', 'https://images.obi.pl/product/PL/1500x1500/620631_1.jpg', 'Szafka dolna Tris', 'Szafka dolna pod zlewozmywak.\r\nPosiada dwie otwierane drzwiczki.\r\nW środku dużo miejsca.\r\nCałość wykonana z dębu w kolorze ciemnym.\r\nKlamki w kolorze kremowym.', 'Głębokość: 47cm\r\n\r\nSzerokość: 82cm\r\n\r\nWysokość: 85cm\r\n\r\nWaga:     23kg', 190, 12, 3),
(26, 'B01', 'https://static02.leroymerlin.pl/files/media/image/570/1999570/product/blat-kuchenny-laminowany-aluminium-jasne-040l-biuro-styl,large.jpg', 'Blat Ergen', '-Blat wykonany jest w kolorze białym\r\n\r\n-Krawędzie blatu zostały zaokrąglone', 'Długość:  66cm\r\n\r\nSzerokość: 44cm\r\n\r\nGrubość blatu: 2,7cm\r\n\r\nWaga:  55kg', 245, 11, 4),
(27, 'B02', 'https://static01.leroymerlin.pl/files/media/image/397/1878397/product/main.jpg', 'Blat Veix', 'Blat wykonany z marmuru w kolorze szarym.', 'Długość:  70cm\r\n\r\nSzerokość: 54cm\r\n\r\nGrubość blatu: 3,6cm\r\n\r\nWaga:  66kg', 455, 13, 4),
(28, 'B03', 'https://static02.leroymerlin.pl/files/media/image/821/1903821/product/blat-kuchenny-drewniany-dab-antique-dlh,large.jpg', 'Blat Dryt', 'Blat wykonany z drewna dębu.', 'Długość:  62cm\r\n\r\nSzerokość: 44cm\r\n\r\nGrubość blatu: 3,9cm\r\n\r\nWaga:  54kg', 462, 11, 4),
(29, 'B04', 'https://static01.domzpomyslem.pl/files/media/image/311/1881311/product_dzp/blat-kuchenny-drewniany-swierk-pro-drewex,large.jpg', 'Blat Frelx', 'Blat wykonany z drewna świerku.', 'Długość:  67cm\r\n\r\nSzerokość: 59cm\r\n\r\nGrubość blatu: 4,2cm\r\n\r\nWaga:  75kg', 543, 15, 4),
(30, 'B05', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEVWcXzuAEh9W7We0VMep9tK7AhnZmZLPktLUWuuNr7Fft98xXcQ', 'Blat Hyrt', 'Blat wykonany z dębu Hen naturalny. ', 'Długość:  68cm\r\n\r\nSzerokość: 62cm\r\n\r\nGrubość blatu: 2,4cm\r\n\r\nWaga:  55kg', 576, 18, 4),
(32, 'B07', 'https://piolo-meble.pl/14074-large_default/blat-samara-sand.jpg', 'Blat Minc', 'Blat wykonany z tytanu w kolorze ciemno-szarym.', 'Długość:  80cm\r\n\r\nSzerokość: 64cm\r\n\r\nGrubość blatu: 3,9cm\r\n\r\nWaga:  86kg', 678, 7, 4),
(33, 'B08', 'https://hurtownia.komandor.pl/pomorskie/images/com_sobi2/clients/807_img.jpg', 'Blat Xuc', 'Blat wykonany ze sosny w kolorze kremowym.', 'Długość:  64cm\r\n\r\nSzerokość: 54cm\r\n\r\nGrubość blatu: 4,2cm\r\n\r\nWaga:  52kg', 655, 20, 4),
(34, 'L01', 'https://www.villadecor.pl/4457-thickbox_default/lusto-w-bialej-drewnianej-ramie-laka-60x80-.jpg', 'Lustro Trex Vil', 'Prostokątne lustro Trex Vil przeznaczone do zawieszenia w pionie lub w poziomie.', 'Wysokość:  70cm\r\n\r\nSzerokość:  52cm\r\n\r\nGłębokość:  2,6cm\r\n\r\nWaga:      3,50kg', 135, 15, 6),
(35, 'L02', 'https://images.obi.pl/product/PL/1500x1500/597746_1.jpg', 'Lustro Frex Bre', 'Lustro wyposażone jest w szklaną półkę oraz podświetlanym pasem na górze.', 'Wysokość:  65cm\r\n\r\nSzerokość:  62cm\r\n\r\nGłębokość:  3,6cm\r\n\r\nWaga:      4,50kg', 240, 11, 6),
(36, 'L03', 'https://images.obi.pl/product/PL/1500x1500/619478_1.jpg', 'Lustro Vix Lex', 'Prostokątne lustro o wysokiej jakości produktu.\r\nPrzeznaczone do zawieszenia w pionie lub w poziomie.', 'Wysokość:  110cm\r\n\r\nSzerokość:  62cm\r\n\r\nGłębokość:  3,6cm\r\n\r\nWaga:      5,50kg', 222, 12, 6),
(37, 'L04', 'https://static02.leroymerlin.pl/files/media/image/560/1905560/product/lustro-lazienkowe-z-oswietleniem-wbudowanym-altue-60-x-80-venti,large.jpg', 'Lustro Bryt Frix', 'Prostokątne lustro podświetlane diodami LED nadaje mu elegancję i szyk.', 'Wysokość:  60cm\r\n\r\nSzerokość:  80cm\r\n\r\nGłębokość:  3,6cm\r\n\r\nWaga:      3,65kg', 270, 10, 6),
(38, 'L05', 'https://static02.leroymerlin.pl/files/media/image/919/1337919/product/lustro-lazienkowe-bez-oswietlenia-prostokatne-60-x-120-dubiel-vitrum,large.jpg', 'Lustro Xyp ', 'Prostokątne lustro o wysokiej jakości wykonania,wyposażony w folię ochronną.\r\nPrzeznaczony do zawieszenia w pionie lub w poziomie.', 'Wysokość:  75cm\r\n\r\nSzerokość:  62cm\r\n\r\nGłębokość:  3,2cm\r\n\r\nWaga:      3,75kg', 210, 12, 6),
(39, 'L06', 'https://9.allegroimg.com/original/03cb79/4f73cfa94283b5abd7a7c59ef949/Lustro-prostokatne-METALOWE-czarne-60x40cm', 'Lusto Grui ', 'Prostokątne lustro ze szkła  z czarnymi ramkami.\r\nPrzeznaczony do zawieszenia w pionie lub w poziomie.', 'Wysokość:  82cm\r\n\r\nSzerokość:  69cm\r\n\r\nGłębokość:  3,6cm\r\n\r\nWaga:      4,50kg', 390, 15, 6),
(40, 'L07', 'http://mojachata.eu/image/items/dubielvitrum/fe1c6a3e69923f55be2eef57de3f7f3a.jpg', 'Lustro Zoiu', 'Lustro szlifowane,zaokrąglone narożniki oraz górna część w kształcie półkola.', 'Wysokość:  72cm\r\n\r\nSzerokość:  58cm\r\n\r\nGłębokość:  3,6cm\r\n\r\nWaga:      4,50kg', 260, 15, 6),
(41, 'L08', 'https://7.allegroimg.com/original/0cde40/154341ab4e029a9351ce714c7747', 'Lustro Crans', 'Okrągłe lustro wyposażone w oświetlenie LED.', 'Wysokość:  72cm\r\n\r\nSzerokość:  72cm\r\n\r\nGłębokość:  3,7cm\r\n\r\nWaga:      4,20kg', 340, 20, 6),
(42, 'UM01', 'https://www.svet-kupelne.sk/storage/photo/4779135/', 'Umywalka Tangu', 'Umywalka wykonana z ceramiki.\r\nPrzystosowana do montażu na meblach łazienkowych.\r\nZ otworem na baterię.', 'Wysokość: 14cm\r\n\r\nSzerokość:  50cm\r\n\r\nGłębokość:  32cm\r\n\r\nWaga:  43kg', 220, 15, 7),
(43, 'UM02', 'https://www.fajnalazienka.com/pol_pl_Umywalka-nablatowa-przyscienna-Marmorin-Pia-600-5598_2.jpg', 'Umywalka Triper', 'Prostokątna nablatowa bezprzelewowa. Umywalka wykonana z ceramiki.\r\nUmywalka nadaje się do umieszczenia na blacie oraz na szafce.', 'Wysokość: 12cm\r\n\r\nSzerokość:  48cm\r\n\r\nGłębokość:  38cm\r\n\r\nWaga:  47kg', 260, 18, 7),
(44, 'UM03', 'https://static01.leroymerlin.pl/files/media/image/529/1408529/product/umywalka-wpuszczana-w-blat-50-polly,large.jpg', 'Umywalka Cando', 'Prostokątna umywalka wykonana z ceramiki wpuszczona w blat.\r\nWyposażona w otwór na baterię oraz otwór przelewowy.', 'Wysokość: 17cm\r\n\r\nSzerokość:  47cm\r\n\r\nGłębokość:  35cm\r\n\r\nWaga:  37kg', 245, 6, 7),
(45, 'UM04', 'https://f.allegroimg.com/s512/03277f/4e77176d4a1586870ce5f8a2857f/BRAIDER-umywalka-misa-okragla-nablatowa-AURIGA', 'Umywalka Lazaj', 'Okrągła nablatowa umywalka wykonana z wysokiej jakości ceramiki.\r\nDo montażu na meblach łazienkowych.', 'Wysokość: 14cm\r\n\r\nSzerokość:  42cm\r\n\r\nGłębokość:  42cm\r\n\r\nWaga:  20kg', 190, 30, 7),
(46, 'UM05', 'https://www.stylowalazienka.pl/environment/cache/images/500_500_productGfx_61f9886fc9ac2e9c4db4e50fbe6356f9.jpg', 'Umywalka Tola', 'Owalna umywalka wykonana z ceramiki.\r\nWyposażona w otwór na baterię oraz posiada przelew.', 'Wysokość: 18cm\r\n\r\nSzerokość:  49cm\r\n\r\nGłębokość:  35cm\r\n\r\nWaga:  12kg', 115, 15, 7),
(47, 'UM06', 'http://www.wodnetrendy.pl/img/p/11472-30979-thickbox.jpg', 'Umywalka Zer4', 'Nablatowa umywalka wykonana z ceramiki.\r\nPosiada otwór na baterię.\r\nIdealnie prezentuje się na meblach łazienkowych.', 'Wysokość: 14cm\r\n\r\nSzerokość:  45cm\r\n\r\nGłębokość:  43cm\r\n\r\nWaga:  12kg', 220, 24, 7),
(48, 'UM07', 'https://static01.leroymerlin.pl/files/media/image/500/1586500/product/umywalka-75-kolo-traffic,large.jpg', 'Umywalka Kix45', 'Umywalka łazienkowa wykonana z ceramiki,z otworem na baterię i przelewem.\r\nIdealna umywalka do szafek.', 'Wysokość: 4cm\r\n\r\nSzerokość:  65cm\r\n\r\nGłębokość:  46cm\r\n\r\nWaga:  13kg', 167, 13, 7),
(49, 'UM08', 'https://static02.leroymerlin.pl/files/media/image/838/1408838/product/umywalka-nablatowa-solo-500c,large.jpg', 'Umywalka Zvb87', 'Kwadratowa nablatowa umywalka wykonana z ceramiki z otworem na baterię.', 'Wysokość: 19cm\r\n\r\nSzerokość:  44cm\r\n\r\nGłębokość:  44cm\r\n\r\nWaga:  18kg', 270, 24, 7),
(50, 'LS01', 'https://images.obi.pl/product/PL/1500x1500/600692_1.jpg', 'Szafka z umywalką białą Prot35', 'Zestaw łazienkowy Prot35 w kolorze białym.\r\nDoskonałej jakości szafka wraz z umywalką.', 'Waga:     29,0 kg\r\n\r\nWysokość: 50,0 cm\r\n\r\nSzerokość: 58,8 cm\r\n\r\nGłębokość: 44,5 cm', 410, 8, 8),
(51, 'LS02', 'https://images.obi.pl/product/PL/1500x1500/598561_1.jpg', 'Szafka z umywalką Kyc4', 'Komplet składający się z szafki oraz umywalki meblowej.\r\nBoki oraz fronty są pokryte okleina drewnopodobną w kolorze brązowym.\r\nPosiada dwie szuflady.', 'Waga:     32,0 kg\r\n\r\nWysokość: 43,0 cm\r\n\r\nSzerokość: 86 cm\r\n\r\nGłębokość: 44,5 cm', 760, 20, 8),
(52, 'LS03', 'https://static.lazienkaplus.pl/files/produkty/cache/400x400/meb/roc/a856526576.jpg', 'Zestaw szafka z umywalką Nyf', 'Zestaw składający się z szafki wykonanej z dębu w kolorze brązowym oraz ceramicznej umywalki meblowej.\r\nPosiada jedną dużą szufladę.', 'Waga:     29,0 kg\r\n\r\nWysokość: 50,0 cm\r\n\r\nSzerokość: 58,8 cm\r\n\r\nGłębokość: 44,5 cm', 770, 12, 8),
(53, 'LS04', 'https://static02.leroymerlin.pl/files/media/image/008/1927008/product/szafka-pod-umywalke-79-comad-aruba,large.jpg', 'Szafka pod umywalkę Rety-B45', 'Szafka pod umywalkę,boki zostały wykonane z drewna w kolorze jasno brązowym.', 'Waga:     17,0 kg\r\n\r\nWysokość: 78,0 cm\r\n\r\nSzerokość: 59,8 cm\r\n\r\nGłębokość: 44,5 cm', 390, 24, 8),
(54, 'LS05', 'https://images.obi.pl/product/PL/1500x1500/625165_1.jpg', 'Szafka wisząca Oliu-98', 'Wisząca szafka łazienkowa wykonana z płyty MDF w kolorze szary brąz.\r\nSzafka pomieści wiele akcesoriów.', 'Waga:     7,0 kg\r\n\r\nWysokość: 58,2 cm\r\n\r\nSzerokość: 37,2 cm\r\n\r\nGłębokość: 24,5 cm', 270, 7, 8),
(55, 'LS06', 'https://images.obi.pl/product/PL/1500x1500/623591_1.jpg', 'Szafka wisząca lustrzana Hrep', 'Szafka wisząca lustrzana,jednodrzwiowa w kolorze białym.', 'Waga:     12,0 kg\r\n\r\nWysokość: 78,0 cm\r\n\r\nSzerokość: 59,8 cm\r\n\r\nGłębokość: 44,5 cm', 177, 15, 8),
(56, 'LS07', 'https://mks-meble.pl/images/produkty/prospero/lazienka/milo/4element.jpg', 'Szafka pod umywalkę Awryk', 'Szafka pod umywalkę firmy Awryk. \r\nFront oraz boki wykonane są z płyty wiórowej lakierowanej na biało.\r\nPosiada dwie wysuwane szuflady.', 'Waga:     23,8 kg\r\n\r\nWysokość: 81,5 cm\r\n\r\nSzerokość: 54,4 cm\r\n\r\nGłębokość: 49,2 cm', 545, 11, 8),
(57, 'LS08', 'https://www.rudepol.pl/images/product_images/popup_images/Wiszca-szafka-azienkowa-LUMO-23632835-z-lustrem_18.jpg', 'Szafka lustrzana biała Nylek', 'Szafka lustrzana wykonana z polipropylenu. Szafka składa się z trzech części , każda zamykana oddzielnie.\r\nDrzwi zostały wyposażone w lustra.', 'Waga:     4,0 kg\r\n\r\nWysokość: 29,0 cm\r\n\r\nSzerokość: 55,2 cm\r\n\r\nGłębokość: 16 cm', 115, 5, 8),
(60, 'ZE03', 'https://images.obi.pl/product/PL/1500x1500/557783_1.jpg', 'Słuchawka prysznicowa Fril', 'Okrągła słuchawka prysznicowa 5-strumieniowa.\r\nCharakteryzuje się estetycznym wyglądem.', 'Waga:     232 g\r\n\r\nWysokość:  26 cm\r\n\r\nSzerokość: 8,7 cm\r\n\r\nGłębokość: 16 cm', 45, 15, 9),
(61, 'ZE04', 'https://images.obi.pl/product/PL/1500x1500/581902_1.jpg', 'Zestaw prysznicowy Lenx', 'Zestaw prysznicowy ze słuchawką 2-strumieniową,drążkiem z uchwytem przesuwanym.\r\nStanowi elegancki wygląd do kabiny.', 'Waga:     2 kg\r\n\r\nWysokość:  69 cm\r\n\r\nSzerokość: 15 cm\r\n\r\nGłębokość: 26 cm', 155, 6, 9),
(62, 'ZE05', 'https://images.obi.pl/product/PL/1500x1500/312344_1.jpg', 'Mydelniczka Jagun', 'Funkcjonalna mydelniczka pasująca do każdej łazienki, wykonana z doskonałych materiałów.', 'Waga:     112 g\r\n\r\nWysokość:  3,2 cm\r\n\r\nSzerokość: 11 cm\r\n\r\nGłębokość: 16 cm', 17, 26, 9),
(63, 'ZE06', 'https://images.obi.pl/product/PL/1500x1500/605908_1.jpg', 'Kubek Hen', 'Ładny solidny kubek idealnie pasuje do łazienki.\r\nKubek może służyć jako miejsce na szczoteczki oraz pastę.', 'Waga:     180 g\r\n\r\nWysokość:  11 cm\r\n\r\nSzerokość: 7 cm\r\n\r\nGłębokość: 6 cm', 18, 20, 9),
(65, 'ZE08', 'https://images.obi.pl/product/PL/1500x1500/252480_1.jpg', 'Kosz na bieliznę Letek', 'Kosz wiklinowy szary.\r\nIdealnie sprawdzi się w każdej łazience.', 'Waga:     3 kg\r\n\r\nWysokość:  4,2 cm\r\n\r\nSzerokość: 37 cm\r\n\r\nGłębokość: 6 cm', 75, 12, 9),
(66, 'Stół1', 'https://static.abra-meble.pl/catalog/product/a/r/arsal-stol-small.jpg', 'Stół rozkładany Brinix', 'Stół rozkładany o szerokości maksymalnej 220cm. \r\nBlat wykonany z dębu w kolorze brązowym , nogi w kolorze szarym.', 'Długość:    160-220 cm\r\n\r\nSzerokość:  90 cm\r\n\r\nWysokość:   79 cm\r\n\r\nWaga:       51 kg', 650, 10, 10),
(67, 'Stół2', 'https://static.abra-meble.pl/catalog/product/s/t/stol-nora-not-02-1.jpg', 'Stół Keplik', 'Rozkładany stół do długości 210 cm. \r\nBlat stołu jest wykonany z hartowanego szkła w kolorze czarnym,\r\nnogi wykonane z dębu w kolorze brązowym.', 'Długość:    140-210 cm\r\n\r\nSzerokość:  86 cm\r\n\r\nWysokość:   72 cm\r\n\r\nWaga:       61 kg', 800, 5, 10),
(68, 'Stół3', 'https://static.abra-meble.pl/catalog/product/s/u/sunny-1-bialy-_2_.jpg', 'Stół Nikin-45', 'Rozkładany stół wykonany z całości z dębu w kolorze białym,solidne nogi,wytrzymały.', 'Długość:    130-190 cm\r\n\r\nSzerokość:  75 cm\r\n\r\nWysokość:   79 cm\r\n\r\nWaga:       45 kg', 650, 14, 10),
(69, 'Stół4', 'https://static.abra-meble.pl/catalog/product/u/r/uran-1-bialy-_1_.jpg', 'Stół Tren-23', 'Okrągły stół w kolorze białym,rozkładany blat na dwie części.', 'Długość:    900-140 cm\r\n\r\nSzerokość:  90 cm\r\n\r\nWysokość:   76 cm\r\n\r\nWaga:       47 kg', 700, 7, 10),
(70, 'Stół5', 'https://static.abra-meble.pl/catalog/product/f/l/flot16.jpg', 'Stół Hilik-B', 'Stół rozkładany o szerokości maksymalnej 240cm. \r\nBlat wykonany z dębu w kolorze białym, nogi w kolorze szarym.', 'Długość:    170-240 cm\r\n\r\nSzerokość:  92 cm\r\n\r\nWysokość:   81 cm\r\n\r\nWaga:       55 kg', 780, 19, 10),
(71, 'Stół6', 'https://static.abra-meble.pl/catalog/product/a/b/abra_17_06_28_nora_stol_sonoma_czekolada.jpg', 'Stół Vilik-H', 'Rozkładany stół do długości 190 cm.\r\nStół wykonany cały z drewna w kolorze czekoladowym.\r\nSolidne nogi.', 'Długość:    160-190 cm\r\n\r\nSzerokość:  79 cm\r\n\r\nWysokość:   78 cm\r\n\r\nWaga:       49 kg', 750, 23, 10),
(72, 'Stół7', 'https://static.abra-meble.pl/catalog/product/s/t/stol-kurt-6_1.jpg', 'Stół rozkładany Wertyk-B3', 'Rozkładany stół do długości 250 cm.\r\nStół wykonany cały z dębu w kolorze szaro brązowym.\r\nIdealny stół do salonu.', 'Długość:    190-250 cm\r\n\r\nSzerokość:  99 cm\r\n\r\nWysokość:   87 cm\r\n\r\nWaga:       79 kg', 550, 5, 10),
(73, 'Stół8', 'https://static.abra-meble.pl/catalog/product/s/t/st_vario_sonoma_czekoladowa_3_.jpg', 'Stół Bryt-A', 'Rozkładany stół do długości 210 cm.\r\nStół wykonany cały z dębu w kolorze ciemno brązowym.\r\nElegancki,solidne nogi,idealny do salonu stół.', 'Długość:    160-210 cm\r\n\r\nSzerokość:  80 cm\r\n\r\nWysokość:   75 cm\r\n\r\nWaga:       56 kg', 840, 11, 10),
(75, 'Szafa2', 'https://static.abra-meble.pl/catalog/product/d/o/dover_22.jpg', 'Szafa Ryjik-B56', 'Dwudrzwiowa szafa w kolorze ciemno brązowym.\r\nPosiada dwie półki.', 'Głębokość:  55 cm\r\n\r\nSzerokość:  125 cm\r\n\r\nWysokość:   201 cm\r\n\r\nWaga:       67 kg', 956, 9, 12),
(76, 'Szafa3', 'https://static.abra-meble.pl/catalog/product/r/o/rondo70.jpg', 'Szafa Mik-K', 'Szafa dwudrzwiowa w kolorze ciemno brązowym, posiadająca 6 półek , elegancka, przestronna idealna do salonu.', 'Głębokość:  57 cm\r\n\r\nSzerokość:  960 cm\r\n\r\nWysokość:   198 cm\r\n\r\nWaga:       76 kg', 780, 6, 12),
(77, 'Szafa4', 'https://static.abra-meble.pl/catalog/product/n/e/nemezis-220fwz17-l.jpg', 'Szafa Lip-5', 'Szafa jednodrzwiowa w kolorze jasnym.\r\nPosiada 6 półek.', 'Głębokość:  56 cm\r\n\r\nSzerokość:  75 cm\r\n\r\nWysokość:   192 cm\r\n\r\nWaga:       68 kg', 875, 15, 12),
(78, 'Szafa5', 'https://static.abra-meble.pl/catalog/product/v/e/verin---szafa-vrn-06_1.jpg', 'Szafa Bret-5b', 'Szafa salonowa jednodrzwiowa wykonana z drewna, posiadająca 5 półek.', 'Głębokość:  42 cm\r\n\r\nSzerokość:  68 cm\r\n\r\nWysokość:   176 cm\r\n\r\nWaga:       59 kg', 450, 3, 12),
(79, 'Szafa6', 'https://static.abra-meble.pl/catalog/product/s/z/szafa_2d_viki_05.jpg', 'Szafa Trek-A', 'Szafa Trek-A wykonana jest z dębu w kolorze brązowym.\r\nJest to szafa dwudrzwiowa posiadająca 6 półek.', 'Głębokość:  75 cm\r\n\r\nSzerokość:  130 cm\r\n\r\nWysokość:   205 cm\r\n\r\nWaga:       91 kg', 890, 14, 12),
(80, 'Szafa7', 'https://static.abra-meble.pl/catalog/product/t/o/togo-22xtrt17.jpg', 'Szafa Olox-J', 'Szafa salonowa jednodrzwiowa obramowana szkłem, półki wykonane są ze szkła,podświetlane ledami.', 'Głębokość:  53 cm\r\n\r\nSzerokość:  63 cm\r\n\r\nWysokość:   175 cm\r\n\r\nWaga:       64 kg', 560, 24, 12),
(81, 'Szafa8', 'https://static.abra-meble.pl/catalog/product/s/z/szafa_duo_7-dab-sonoma_2_.jpg', 'Szafa Ader-Xa', 'Szafa dwudrzwiowa wykonana z solidnych materiałów.\r\nPosiada 6 półek podświetlanych.\r\nWykonana z dębu w kolorze brązowym.', 'Głębokość:  70 cm\r\n\r\nSzerokość:  115 cm\r\n\r\nWysokość:   205 cm\r\n\r\nWaga:       91 kg', 1340, 3, 12),
(82, 'naroznik1', 'https://static.abra-meble.pl/catalog/product/n/a/naroznik-prima-lewy-1.jpg', 'Narożnik Elik', 'Narożnik uniwersalny, posiada dwa schowki na pościel,w siedzeniu posiada sprężyny.\r\n', 'Szerokość:   245 cm\r\n\r\nGłębokość:   135 cm\r\n\r\nWysokość:    85 cm\r\n\r\nPowierzchnia spania:  134x230\r\n\r\nMateriały:  tkanina\r\n\r\nWaga:       101 kg', 1200, 10, 13),
(83, 'naroznik2', 'https://static.abra-meble.pl/catalog/product/n/a/naroznik-largo-zaglowek_prawy_2-1_.jpg', 'Narożnik Pitr-C', 'Narożnik uniwersalny,posiada pojemnik na pościel. \r\nNarożnik ten może posłużyć jako spanie,w siedzisku zastosowane sprężyny.', 'Szerokość:   225 cm\r\n\r\nGłębokość:   115 cm\r\n\r\nWysokość:    79 cm\r\n\r\nPowierzchnia spania:  110x210\r\n\r\nMateriały:   tkanina\r\n\r\nWaga:        91 kg', 1300, 12, 13),
(84, 'naroznik3', 'https://static.abra-meble.pl/catalog/product/n/a/naroznik-gomera-1-_9__p.jpg', 'Narożnik Zex-B', 'Narożnik uniwersalny,który posiada pojemnik na pościel. \r\nNarożnik ten może posłużyć jako spanie,w siedzisku zastosowane sprężyny.', 'Szerokość:   255 cm\r\n\r\nGłębokość:   155 cm\r\n\r\nWysokość:    92 cm\r\n\r\nPowierzchnia spania:  144x240\r\n\r\nMateriały:  tkanina\r\n\r\nWaga:       111 kg', 1320, 6, 13),
(85, 'naroznik4', 'https://static.abra-meble.pl/catalog/product/n/a/naroznik-premium-z_puf_-niebieski-wersja_lewa_7_.jpg', 'Narożnik Kik-V', 'Narożnik uniwersalny,który posiada pojemnik na pościel. Narożnik ten może posłużyć jako spanie,posiada pufę w komplecie.', 'Szerokość:   205 cm\r\n\r\nGłębokość:   145 cm\r\n\r\nWysokość:    78 cm\r\n\r\nPowierzchnia spania:  124x185\r\n\r\nMateriały:  tkanina\r\n\r\nWaga:       99 kg', 1230, 12, 13),
(86, 'naroznik5', 'https://static.abra-meble.pl/catalog/product/n/a/naroznik-huston-10-prawy.jpg', 'Narożnik Vetrix', 'Narożnik z funkcją spania, posiada pojemnik na pościel,posiada automat ułatwiający rozkładanie.', 'Szerokość:   235 cm\r\n\r\nGłębokość:   155 cm\r\n\r\nWysokość:    82 cm\r\n\r\nPowierzchnia spania:  144x215\r\n\r\nMateriały:  tkanina\r\n\r\nWaga:       105 kg', 1350, 15, 13),
(87, 'naroznik6', 'https://static.abra-meble.pl/catalog/product/n/a/naroznik-gregor-_wersja_prawa_1_.jpg', 'Narożnik Werk', 'Narożnik z funkcją spania, posiada pojemnik na pościel,posiada automat ułatwiający rozkładanie.\r\nPosiada regulowane nagłówki.', 'Szerokość:   265 cm\r\n\r\nGłębokość:   185 cm\r\n\r\nWysokość:    82 cm\r\n\r\nPowierzchnia spania:  154x225\r\n\r\nMateriały:  tkanina\r\n\r\nWaga:       115 kg', 1546, 21, 13),
(88, 'naroznik7', 'https://static.abra-meble.pl/catalog/product/n/a/naroznik-huston-2_lewy.jpg', 'Narożnik Fek', 'Narożnik uniwersalny,który posiada pojemnik na pościel. \r\nNarożnik ten może posłużyć jako spanie,w siedzisku zastosowane sprężyny.\r\nPosiada regulowane nagłówki.', 'Szerokość:   245 cm\r\n\r\nGłębokość:   165 cm\r\n\r\nWysokość:    92 cm\r\n\r\nPowierzchnia spania:  154x225\r\n\r\nMateriały:  tkanina\r\n\r\nWaga:       108 kg', 1100, 9, 13),
(89, 'naroznik8', 'https://static.abra-meble.pl/catalog/product/n/a/naroznik-siena-2-_1_.jpg', 'Narożnik Seki-B', 'Narożnik uniwersalny, posiada  schowek na pościel,w siedzeniu posiada sprężyny.\r\nMoże służyć jako spanie.', 'Szerokość:   215 cm\r\n\r\nGłębokość:   175 cm\r\n\r\nWysokość:    85 cm\r\n\r\nPowierzchnia spania:  164x195\r\n\r\nMateriały:  tkanina\r\n\r\nWaga:       95 kg', 1432, 5, 13),
(90, 'krz1', 'https://www.brw.pl/gfx/brw/img/produkt/krzeslo-paella-kolor-dab-stirling-tkanina-hc-21-silver-79933-mediumb.jpg', 'Krzesło Matex-I', 'Solidne krzesło wykonane z drewna bukowego.\r\nSiedzisko i oparcie tapicerowane tkaniną.', 'Szerokość:   42 cm\r\n\r\nGłębokość:   41 cm\r\n\r\nWysokość:    89 cm\r\n\r\nWaga:        7 kg', 170, 15, 14),
(91, 'krz2', 'https://www.brw.pl/gfx/brw/img/produkt/krzeslo-marynarz-poziomy-2-wybarwienie-drewna-bialy-cieply-tkanina-adel-6-grey-28088-xlarge.jpg', 'Krzesło Fri-2', 'Krzesło wykonane z drewna bukowego,siedzisko tapicerowane tkaniną.', 'Szerokość:   43 cm\r\n\r\nGłębokość:   40 cm\r\n\r\nWysokość:    91 cm\r\n\r\nWaga:        6,5 kg', 140, 15, 14),
(92, 'krz3', 'https://www.brw.pl/gfx/brw/img/produkt/krzeslo-alla-3-wybarwienie-drewna-dab-sonoma-tkanina-endo-7713-taupe-32757-xlarge.jpg', 'Krzesło Jipo', 'Krzesło wykonane z drewna bukowego,siedzisko tapicerowane tkaniną.\r\nIdealne krzesło do salonu.', 'Szerokość:   46 cm\r\n\r\nGłębokość:   43 cm\r\n\r\nWysokość:    92 cm\r\n\r\nWaga:        7,1 kg', 145, 21, 14),
(93, 'krz4', 'https://meblolux-kepno.pl/userdata/gfx/6dc967be5749c2b34bd9646db07b057f.jpg', 'Krzesło Vuben', 'Krzesło w kolorze orzechowym,siedzisko tapicerowane tkaniną.', 'Szerokość:   47 cm\r\n\r\nGłębokość:   41 cm\r\n\r\nWysokość:    90 cm\r\n\r\nWaga:        6,4 kg', 155, 16, 14),
(94, 'krz5', 'https://www.agatameble.pl/media/cache/gallery/rc/wej2l9om/images/83/83547/0614-151-017-035-0001-p-1b.jpg', 'Krzesło Kix', 'Krzesło wykonane z metalu, siedzisko tapicerowane skórą.', 'Szerokość:   42 cm\r\n\r\nGłębokość:   41 cm\r\n\r\nWysokość:    88 cm\r\n\r\nWaga:        6,4 kg', 175, 12, 14),
(95, 'krz6', 'https://meblolux-kepno.pl/userdata/gfx/d859821ea363b1f4ea63d8003447c352.jpg', 'Krzesło Afikx', 'Krzesło wykonane z drewna bukowego,siedzisko tapicerowane tkaniną.', 'Szerokość:   42 cm\r\n\r\nGłębokość:   41 cm\r\n\r\nWysokość:    85 cm\r\n\r\nWaga:        6,4 kg', 135, 25, 14),
(96, 'krz7', 'https://meblolux-kepno.pl/userdata/gfx/d55ed245e167310647cef3d54176ba3e.jpg', 'Krzesło Omen-A', 'Solidne krzesło wykonane z drewna bukowego.\r\nSiedzisko i oparcie tapicerowane tkaniną.', 'Szerokość:   45 cm\r\n\r\nGłębokość:   44 cm\r\n\r\nWysokość:    89 cm\r\n\r\nWaga:        7,4 kg', 175, 7, 14),
(97, 'krz8', 'https://www.emobay.pl/images/produkty/1f/krzesla/mini/250px_TULIPAN%20BEZ.jpg', 'Krzesło Qek', 'Krzesło wykonane z metalu, siedzisko tapicerowane skórą.', 'Szerokość:   45 cm\r\n\r\nGłębokość:   44 cm\r\n\r\nWysokość:    89 cm\r\n\r\nWaga:        7,4 kg', 179, 21, 14),
(98, 'ste', 'https://www.agatameble.pl/media/cache/gallery/rc/5bo2wq4h/images/85/8531/1130-091-015-143-0001_pc_4.jpg', 'Stół tryk-7B', 'Rozkładany stół wykonany z drewna.', 'Szerokość:   90 cm\r\n\r\nGłębokość:   90-180 cm\r\n\r\nWysokość:    70 cm\r\n\r\nWaga:        35 kg', 420, 11, 15),
(99, 'ste2', 'https://www.agatameble.pl/media/cache/gallery/rc/rrbitvt0/images/83/8387/1178-005-015-005-0002_p_3.jpg', 'Stół Kej-2', 'Rozkładany stół do maksymalnej szerokości 190 cm.\r\nWykonany z drewna.', 'Szerokość:   140-190 cm\r\n\r\nGłębokość:   82 cm\r\n\r\nWysokość:    74 cm\r\n\r\nWaga:        43 kg', 430, 14, 15),
(100, 'ste3', 'https://www.agatameble.pl/media/cache/gallery/rc/l4nbnikw/images/15/156191/0781-120-015-113-0001-p-1.jpg', 'Stół Opol-1V', 'Solidny,ładny stół idealnie pasuje do jadalni.\r\nWykonany z drewna.', 'Szerokość:   150 cm\r\n\r\nGłębokość:   80 cm\r\n\r\nWysokość:    78 cm\r\n\r\nWaga:        32 kg', 450, 20, 15),
(101, 'ste4', 'https://www.agatameble.pl/media/cache/gallery/rc/dymarbvu/images/86/86786/1674-021-015-008-0001-p-1a.jpg', 'Stół Brik-23', 'Mały stolik do jadalni, nogi wykonane ze stelażu metalowego.\r\nBlat wykonany ze szkła.', 'Szerokość:   85 cm\r\n\r\nGłębokość:   110 cm\r\n\r\nWysokość:    76 cm\r\n\r\nWaga:        28 kg', 120, 9, 15),
(102, 'ste5', 'https://www.agatameble.pl/media/cache/gallery/rc/5eags17x/images/81/81351/0090-000-015-263-0002-est45-d47a.jpg', 'Stół Kik-BN', 'Stół wykonany z drewna dębu w kolorze brązowym.', 'Szerokość:   170 cm\r\n\r\nGłębokość:   95 cm\r\n\r\nWysokość:    82 cm\r\n\r\nWaga:        31 kg', 460, 18, 15),
(103, 'ste6', 'https://www.agatameble.pl/media/cache/gallery/rc/rbl6radl/images/88/88154/1113-061-015-001-0001-p-3.jpg', 'Stół Xek', 'Rozkładany stół do maksymalnej szerokości 240 cm. \r\nWykonany z drewna.', 'Szerokość:   190-240 cm\r\n\r\nGłębokość:   110 cm\r\n\r\nWysokość:    85 cm\r\n\r\nWaga:        55 kg', 560, 25, 15),
(105, 'ste8', 'https://www.agatameble.pl/media/cache/gallery/rc/l4nbnikw/images/15/156191/0781-120-015-113-0001-p-1.jpg', 'Stół Oil-10V', 'Mały komfortowy stolik do jadalni wykonany z drewna.', 'Szerokość:   150 cm\r\n\r\nGłębokość:   70 cm\r\n\r\nWysokość:    79 cm\r\n\r\nWaga:        21 kg', 200, 11, 15),
(106, 'ki1', 'https://static.abra-meble.pl/catalog/product/m/i/milen_bezowy-czarny.jpg', 'Krzesło Kos-4P', 'Krzesło tapicerowane tkaniną, nogi wykonane z drewna.', 'Szerokość:   42 cm\r\n\r\nGłębokość:   51 cm\r\n\r\nWysokość:    85 cm\r\n\r\nMateriały:   tkanina\r\n\r\nWaga:        6,4 kg', 120, 17, 16),
(107, 'ki2', 'https://static.abra-meble.pl/catalog/product/k/a/kama_czarny_2.jpg', 'Krzesło Aprik', 'Krzesło tapicerowane eko skórą, nogi wykonane z drewna.', 'Szerokość:   44 cm\r\n\r\nGłębokość:   54 cm\r\n\r\nWysokość:    81 cm\r\n\r\nMateriały:   eko skóra\r\n\r\nWaga:        7,4 kg', 210, 5, 16),
(108, 'ki3', 'https://static.abra-meble.pl/catalog/product/k/a/kansas2-szary.jpg', 'Krzesło Hyh-V', 'Krzesło wykonane z drewna,siedlisko tapicerowane tkaniną.', 'Szerokość:   54 cm\r\n\r\nGłębokość:   58 cm\r\n\r\nWysokość:    91 cm\r\n\r\nMateriały:   tkanina\r\n\r\nWaga:        6,4 kg', 190, 3, 16),
(109, 'ki4', 'https://static.abra-meble.pl/catalog/product/h/o/hose.jpg', 'Krzesło Ulik', 'Krzesło w całości wykonane z drewna.', 'Szerokość:   45 cm\r\n\r\nGłębokość:   46 cm\r\n\r\nWysokość:    75 cm\r\n\r\nWaga:        6,4 kg', 110, 19, 16),
(110, 'ki5', 'https://static.abra-meble.pl/catalog/product/k/a/kansas_3_miodowy-szary.jpg', 'Krzesło Arex-1', 'Krzesło wykonane z drewna dębowego,siedlisko tapicerowane tkaniną.', 'Szerokość:   44 cm\r\n\r\nGłębokość:   55 cm\r\n\r\nWysokość:    75 cm\r\n\r\nMateriały:   tkanina\r\n\r\nWaga:        6,1 kg', 165, 21, 16),
(111, 'ki6', 'https://static.abra-meble.pl/catalog/product/g/o/gosia_-_trufel.jpg', 'Krzesło Ytc', 'Krzesło w całości wykonane z drewna bukowego.', 'Szerokość:   52 cm\r\n\r\nGłębokość:   52 cm\r\n\r\nWysokość:    77 cm\r\n\r\nWaga:        6,1 kg', 150, 11, 16),
(112, 'ki7', 'https://static.abra-meble.pl/catalog/product/b/e/benitogrsz_krzeslo-benito-grafit-dab-szary-tap-112.jpg', 'Krzesło Trepik-N', 'Krzesło do jadalni wykonane z drewna.\r\nSiedlisko tapicerowane tkaniną.', 'Szerokość:   52 cm\r\n\r\nGłębokość:   56 cm\r\n\r\nWysokość:    75 cm\r\n\r\nMateriały:   tkanina\r\n\r\nWaga:        5,1 kg', 240, 23, 16),
(113, 'ki8', 'https://static.abra-meble.pl/catalog/product/k/r/krzeslo-alvo-orzech-szary.jpg', 'Krzesło Drex-A1', 'Krzesło wykonane z drewna w kolorze brązowym.', 'Szerokość:   47 cm\r\n\r\nGłębokość:   54 cm\r\n\r\nWysokość:    81 cm\r\n\r\nWaga:        6,7 kg', 110, 25, 16),
(114, 'kom2', 'https://static.abra-meble.pl/catalog/product/k/o/komoda-wa_ska-bo-09_skos.jpg', 'Komoda Inex-A', 'Komoda dwudrzwiowa z czterema szufladami,wykonana z drewna dębu w kolorze ciemno brązowym.', 'Szerokość:   140 cm\r\n\r\nGłębokość:   39 cm\r\n\r\nWysokość:    93 cm\r\n\r\nWaga:        84 kg', 520, 11, 17),
(115, 'kom1', 'https://static.abra-meble.pl/catalog/product/k/o/komoda-bo-07_skos.jpg', 'Komoda Ikil ', 'Solidna komoda wykonana z całości z drewna.\r\nDwudrzwiowa z czterema szufladami.', 'Szerokość:   152 cm\r\n\r\nGłębokość:   44 cm\r\n\r\nWysokość:    91 cm\r\n\r\nWaga:        78 kg', 590, 10, 17),
(116, 'kom3', 'https://static.abra-meble.pl/catalog/product/k/o/komoda_sanremo_sanremo_45_1_.jpg', 'Komoda', 'Komoda wykonana z całości z drewna dwudrzwiowa.', 'Szerokość:   140 cm\r\n\r\nGłębokość:   59 cm\r\n\r\nWysokość:    83 cm\r\n\r\nWaga:        54 kg', 543, 9, 17),
(117, 'kom4', 'https://static.abra-meble.pl/catalog/product/a/b/abra-16-06-27-one-poj-9-ok_1.jpg', 'Komoda Kix-2', 'Komoda wąska wykonana z drewna dębu,posiadająca cztery szuflady.', 'Szerokość:   790 cm\r\n\r\nGłębokość:   49 cm\r\n\r\nWysokość:    83 cm\r\n\r\nWaga:        34 kg', 321, 15, 17),
(118, 'kom5', 'https://static.abra-meble.pl/catalog/product/a/b/abra-16-06-27-one-poj-8-sonoma.jpg', 'Komoda Eryox', 'Komoda niska czterodrzwiowa wykonana z drewna bukowego.', 'Szerokość:   110 cm\r\n\r\nGłębokość:   59 cm\r\n\r\nWysokość:    83 cm\r\n\r\nWaga:        42 kg', 333, 11, 17),
(119, 'kom6', 'https://static.abra-meble.pl/catalog/product/u/m/umo_3_wenge.jpg', 'Komoda Trip-N', 'Niska komoda posiadająca trzy duże szuflady.', 'Szerokość:   92 cm\r\n\r\nGłębokość:   59 cm\r\n\r\nWysokość:    73 cm\r\n\r\nWaga:        44 kg', 230, 20, 17),
(120, 'kom7', 'https://static.abra-meble.pl/catalog/product/z/o/zoya_p5_sonoma.jpg', 'Komoda Trip-N2', 'Wysoka komoda posiadająca pięć dużych szuflad.\r\nWykonana z całości z drewna.', 'Szerokość:   72 cm\r\n\r\nGłębokość:   59 cm\r\n\r\nWysokość:    113 cm\r\n\r\nWaga:        54 kg', 356, 23, 17),
(121, 'kom8', 'https://static.abra-meble.pl/catalog/product/e/l/elia_p6_140_sonoma.jpg', 'Komoda Hrex', 'Szeroka komoda posiadająca sześć szuflad, wykonana z całości z drewna.', 'Szerokość:   60 cm\r\n\r\nGłębokość:   69 cm\r\n\r\nWysokość:    113 cm\r\n\r\nWaga:        24 kg', 340, 10, 17),
(122, 'wit1', 'https://static.abra-meble.pl/catalog/product/w/i/witryna_niska_enter_4c_1_v_1.jpg', 'Witryna Entrek', 'Witryna dwudrzwiowa wykonana z drewna bukowego, posiadająca 6 półek wkładanych.', 'Szerokość:   79 cm\r\n\r\nGłębokość:   39 cm\r\n\r\nWysokość:    123 cm\r\n\r\nWaga:        54 kg', 220, 12, 18),
(123, 'wit2', 'https://static.abra-meble.pl/catalog/product/a/b/abra-16-06-27-one-poj-1_1.jpg', 'Witryna Xop-2B', 'Wysoka witryna jednodrzwiowa posiadająca trzy półki podświetlane obramowane szkłem.', 'Szerokość:   72 cm\r\n\r\nGłębokość:   49 cm\r\n\r\nWysokość:    183 cm\r\n\r\nWaga:        64 kg', 450, 20, 18),
(124, 'wit3', 'https://static.abra-meble.pl/catalog/product/w/i/witryna_sanremo_15_1_.jpg', 'Witryna Arui', 'Niska witryna dwudrzwiowa w kolorze białym, półki podświetlane ledami.', 'Szerokość:   82 cm\r\n\r\nGłębokość:   49 cm\r\n\r\nWysokość:    85 cm\r\n\r\nWaga:        54 kg', 350, 24, 18),
(125, 'wit4', 'https://static.abra-meble.pl/catalog/product/w/i/witrynaniska-sandi_2_1_.jpg', 'Witryna Jyk-R8', 'Idealna witryna posiadająca wiele półek,doskonale komponuje się do salonu.', 'Szerokość:   132 cm\r\n\r\nGłębokość:   36 cm\r\n\r\nWysokość:    143 cm\r\n\r\nWaga:        94 kg', 750, 9, 18),
(126, 'wit5', 'https://static.abra-meble.pl/catalog/product/w/i/witryna-wysoka-bo-02_skos.jpg', 'Witryna Olik-AP', 'Wysoka witryna jednodrzwiowa wykonana z całości z drewna bukowego.', 'Szerokość:   42 cm\r\n\r\nGłębokość:   39 cm\r\n\r\nWysokość:    133 cm\r\n\r\nWaga:        62 kg', 456, 25, 18),
(127, 'wit6', 'https://static.abra-meble.pl/catalog/product/t/o/toro-witryna-bia_a.jpg', 'Witryna Yrek', 'Witryna niska umocowana na niskich nóżkach z drewna,posiada wiele półek.', 'Szerokość:   142 cm\r\n\r\nGłębokość:   42 cm\r\n\r\nWysokość:    123 cm\r\n\r\nWaga:        68 kg', 555, 3, 18),
(128, 'wit7', 'https://static.abra-meble.pl/catalog/product/0/1/01_1.jpg', 'Witryna Begor', 'Wysoka jednodrzwiowa witryna idealna do salonu.', 'Szerokość:   52 cm\r\n\r\nGłębokość:   39 cm\r\n\r\nWysokość:    133 cm\r\n\r\nWaga:        45 kg', 650, 23, 18),
(129, 'wit8', 'https://static.abra-meble.pl/catalog/product/0/3/03_1.jpg', 'Witryna Nyn-A', 'Witryna dwudrzwiowa wykonana z drewna bukowego, posiadająca 6 półek wkładanych.', 'Szerokość:   92 cm\r\n\r\nGłębokość:   45 cm\r\n\r\nWysokość:    113 cm\r\n\r\nWaga:        75 kg', 700, 14, 18),
(130, 'lo1', 'https://static.abra-meble.pl/catalog/product/_/m/_mg_1904_2.jpg', 'Łóżko Urbik', 'Wygodne łóżko w kolorze brązowym.', 'Szerokość:    185 cm\r\n\r\nGłębokość:    201 cm\r\n\r\nWysokość:     90 cm\r\n\r\nPowierzchnia spania:   180x190 \r\n\r\n\r\n', 340, 12, 19),
(131, 'lo2', 'https://static.abra-meble.pl/catalog/product/_/m/_mg_1904_2.jpg', 'Łóżko Tryp-B', 'Łóżko tapicerowane tkaniną.\r\nIdealne łóżko do sypialni.', 'Szerokość:    195 cm\r\n\r\nGłębokość:    191 cm\r\n\r\nWysokość:     90 cm\r\n\r\nPowierzchnia spania:   1750x191 \r\n\r\n\r\n', 780, 10, 19),
(132, 'lo3', 'https://static.abra-meble.pl/catalog/product/l/o/lozko-onyx-1.jpg', 'Łóżko Hrik', 'Łóżko z podwyższonym siedziskiem na metalowych nóżkach.', 'Szerokość:    95cm\r\n\r\nGłębokość:    187 cm\r\n\r\nWysokość:     85 cm\r\n\r\nPowierzchnia spania:   90x190 \r\n\r\n\r\n', 890, 14, 19),
(133, 'lo4', 'https://static.abra-meble.pl/catalog/product/a/b/abra-17-01-16-lozka-one-34_1.jpg', 'Łóżko Ypil', 'Łóżko Ypil jest wygodne w spaniu,zrobione z drewna dębowego.', 'Szerokość:    165 cm\r\n\r\nGłębokość:    181 cm\r\n\r\nWysokość:     92 cm\r\n\r\nPowierzchnia spania:   140x170 \r\n\r\n\r\n', 650, 22, 19),
(134, 'lo5', 'https://static.abra-meble.pl/catalog/product/a/r/arsal__o_160_1_.jpg', 'Łóżko Wrip-A', 'Łóżko Wrip wykonane z drewna bukowego.\r\nMaterac twardy idealny do spania.', 'Szerokość:    195 cm\r\n\r\nGłębokość:    197 cm\r\n\r\nWysokość:     78 cm\r\n\r\nPowierzchnia spania:   150x192 \r\n\r\n\r\n', 875, 20, 19),
(135, 'lo6', 'https://static.abra-meble.pl/catalog/product/l/o/lozko_viki_10.jpg', 'Łóżko Abend3', 'Idealne łóżko do sypialni,przestrzenne i komfortowe, wykonane z drewna.', 'Szerokość:    205 cm\r\n\r\nGłębokość:    171 cm\r\n\r\nWysokość:     82 cm\r\n\r\nPowierzchnia spania:   180x190 \r\n\r\n\r\n', 989, 5, 19),
(136, 'lo7', 'https://static.abra-meble.pl/catalog/product/l/e/lena_lozko-90-lefkas.jpg', 'Łóżko Drik', 'Łóżko Drik jednoosobowe , wykonane z solidnego drewna bukowego.', 'Szerokość:    125 cm\r\n\r\nGłębokość:    101 cm\r\n\r\nWysokość:     82 cm\r\n\r\n\r\n\r\n\r\n', 650, 7, 19),
(137, 'lo8', 'https://static.abra-meble.pl/catalog/product/_/o/_o_z_ko-colorado.jpg', 'Łóżko Rik5', 'Solidne i wytrzymałe łóżko.', 'Szerokość:    185 cm\r\n\r\nGłębokość:    201 cm\r\n\r\nWysokość:     90 cm\r\n\r\nPowierzchnia spania:   180x190 \r\n\r\n\r\n', 870, 7, 19),
(138, 'mate1', 'https://24materace.pl/1570-thickbox_default/kreta-materac-nawierzchniowy.jpg', 'Materac nawierzchniowy Kilx', 'Wygodny materac nawierzchniowy.', 'Szerokość:   82 cm\r\n\r\nWysokość:    4,2 cm\r\n\r\nGłębokość:   190 cm', 550, 13, 20),
(139, 'mate2', 'https://static.abra-meble.pl/catalog/product/c/o/comfort-kokos_7.jpg', 'Materac Prim5', 'Materac obustronnie pikowany.', 'Szerokość:   89 cm\r\n\r\nWysokość:    12 cm\r\n\r\nDługość:     190 cm', 650, 11, 20),
(140, 'mate3', 'https://static.abra-meble.pl/catalog/product/p/e/perfect-przekro_j_4.jpg', 'Materac Miz', 'Materac sprężynowy.\r\nWygodny w spaniu.', 'Szerokość:   82 cm\r\n\r\nWysokość:    11 cm\r\n\r\nDługość:     1750 cm', 455, 12, 20),
(141, 'mate4', 'https://centrumopinii.pl/wp-content/uploads/2018/05/dormeo-hero-opinie-2.jpg', 'Materac Brikx', 'Wygodny materac nawierzchniowy.', 'Szerokość:   75 cm\r\n\r\nWysokość:    9cm\r\n\r\nGłębokość:   189cm', 654, 11, 20),
(142, 'mate5', 'https://static.abra-meble.pl/catalog/product/p/r/prestige_4.jpg', 'Materac Griko', 'Materac sprężynowy.', 'Szerokość:   78 cm\r\n\r\nWysokość:    15 cm\r\n\r\nGłębokość:   172 cm', 459, 9, 20),
(143, 'mate6', 'https://static.abra-meble.pl/catalog/product/s/m/smart_opti_445_2.jpg', 'Materac Hrix3', 'Materac wykonany z najlepszych surowców.', 'Szerokość:   89 cm\r\n\r\nWysokość:    7 cm\r\n\r\nGłębokość:   192 cm', 567, 11, 20),
(144, 'mate7', 'https://www.panmaterac.pl/1891-thickbox_default/materac-dzieciecy-iris.jpg', 'Materac Grep4', 'Materac dziecięcy Grep4 jest miękki i elastyczny idealny do spania dla dzieci.', 'Szerokość:   42 cm\r\n\r\nWysokość:    5 cm\r\n\r\nGłębokość:   150 cm', 320, 12, 20),
(145, 'mate8', 'https://static.abra-meble.pl/catalog/product/p/r/prestige-alergik_2.jpg', 'Materac Ikil1', 'Materac obustronnie pikowany.\r\nWygodny w spaniu.', 'Szerokość:   86 cm\r\n\r\nWysokość:    13 cm\r\n\r\nGłębokość:   192 cm', 421, 18, 20),
(146, 'luk1', 'https://www.agatameble.pl/media/cache/gallery/rc/qnt0v1t0/images/11/112793/i-12.jpg', 'Lustro Viks', 'Eleganckie lustro obramowane drewnem bukowym.', 'Wysokość:   70 cm\r\n\r\nGłębokość:  4  cm\r\n\r\nSzerokość:  110 cm', 270, 10, 23),
(147, 'luk2', 'https://www.agatameble.pl/media/cache/gallery/rc/jch7slf9/images/16/162771/marsylia-p12.jpg', 'Lustro Prixl', 'Przestrzenne lustro wykończone drewnem.', 'Wysokość:   73 cm\r\n\r\nGłębokość:  10  cm\r\n\r\nSzerokość:  93 cm', 175, 170, 23),
(148, 'luk3', 'https://www.agatameble.pl/media/cache/gallery/rc/jzy6ny8b/images/72/72926/0797-004-012-005-0001-p-1.jpg', 'Lustro Xis', 'Lustro firmy Xis.', 'Wysokość:   77 cm\r\n\r\nGłębokość:  6  cm\r\n\r\nSzerokość:  94 cm', 345, 10, 23),
(149, 'luk4', 'https://www.agatameble.pl/media/cache/gallery/rc/ks45bc73/images/10/103374/palermo-80.jpg', 'Lustro Vretx', 'Eleganckie lustro obramowane drewnem.', 'Wysokość:   82 cm\r\n\r\nGłębokość:  11  cm\r\n\r\nSzerokość:  121 cm', 322, 12, 23),
(150, 'luk5', 'https://www.agatameble.pl/media/cache/gallery/rc/ogu0ipiu/images/47/4799/LL-01.jpg', 'Lustro Fop2', 'Lustro idealne do Sypialni.', 'Wysokość:   84 cm\r\n\r\nGłębokość:  12  cm\r\n\r\nSzerokość:  111 cm', 432, 11, 23),
(151, 'luk6', 'https://www.agatameble.pl/media/cache/gallery/rc/tvpffw46/images/73/73362/1130-098-012-178-0001-p-1.jpg', 'Lustro Hrekx', 'Lustro wykonane ze szkła hartowanego.', 'Wysokość:   72 cm\r\n\r\nGłębokość:  9  cm\r\n\r\nSzerokość:  101 cm', 465, 15, 23),
(152, 'luk7', 'https://www.agatameble.pl/media/cache/gallery/rc/xiirlsbp/images/10/106670/1196-066-012-076-0002_p1.jpg', 'Lustro Olis', 'Małe lustro idealne do sypialni.', 'Wysokość:   62 cm\r\n\r\nGłębokość:  5  cm\r\n\r\nSzerokość:  92 cm', 110, 21, 23),
(153, 'luk8', 'https://www.agatameble.pl/media/cache/gallery/rc/winjl9wd/images/67/67408/1124-061-012-093-0002.jpg', 'Lustro Xipx', 'Przestrzenne lustro wykończone drewnem.', 'Wysokość:   84 cm\r\n\r\nGłębokość:  9  cm\r\n\r\nSzerokość:  111 cm', 432, 10, 23),
(154, 'sza1', 'https://static.abra-meble.pl/catalog/product/a/b/abra-18-06-18-avola-sonoma-_-lustro_1.jpg', 'Szafa Axik', 'Szafa dwudrzwiowa wykonana z drewna.', 'Szerokość:   150 cm\r\n\r\nGłębokość:   65  cm\r\n\r\nWysokość:    210 cm\r\n\r\n', 650, 11, 21),
(155, 'sza3', 'https://static.abra-meble.pl/catalog/product/s/z/szafa_avola_d_b_sonoma_czekolada_sonoma_jasna_1_.jpg', 'Szafa Icyt', 'Szafa dwudrzwiowa rozsuwana na boki wykonana z drewna.', 'Szerokość:   165 cm\r\n\r\nGłębokość:   75  cm\r\n\r\nWysokość:    198 cm\r\n\r\n', 580, 15, 21),
(156, 'sza2', 'https://static.abra-meble.pl/catalog/product/v/e/verona-sonoma-czekolada_lustro_szprosy_1_.jpg', 'Szafa Wikix', 'Szafa dwudrzwiowa z wbudowany lustrem na drzwiach.', 'Szerokość:   133 cm\r\n\r\nGłębokość:   72  cm\r\n\r\nWysokość:    204 cm\r\n\r\n', 670, 19, 21),
(157, 'sza4', 'https://static.abra-meble.pl/catalog/product/s/z/szafa_duo_15-dab-sonoma_1_.jpg', 'Szafa Mixk', 'Szafa dwudrzwiowa posiadająca dwie rozsuwane szuflady.', 'Szerokość:   174 cm\r\n\r\nGłębokość:   85  cm\r\n\r\nWysokość:    212 cm\r\n\r\n', 760, 13, 21),
(158, 'sza5', 'https://static.abra-meble.pl/catalog/product/s/z/szafa_torino_1d_d_b_s.czekolada_d_b_sonoma_1_.jpg', 'Szafa Joxp', 'Szafa jednodrzwiowa posiadająca sześć półek.', 'Szerokość:   75 cm\r\n\r\nGłębokość:   55  cm\r\n\r\nWysokość:    192 cm\r\n\r\n', 490, 11, 21),
(159, 'sza6', 'https://static.abra-meble.pl/catalog/product/s/z/szafa_torino_2d_d_b_s.czekolada_d_b_sonoma_1_.jpg', 'Szafa Drix2', 'Szafa dwudrzwiowa posiadająca dwie wkładane półki,głęboka. ', 'Szerokość:   160 cm\r\n\r\nGłębokość:   85  cm\r\n\r\nWysokość:    203 cm\r\n\r\n', 876, 6, 21),
(160, 'sza7', 'https://static.abra-meble.pl/catalog/product/a/b/abra-17-01-26-szafy-napoli-sonoma-50cm-bok.jpg', 'Szafa Qtk2', 'Szafa jednodrzwiowa wykonana z drewna, posiadająca pięć wkładanych półek.', 'Szerokość:   67 cm\r\n\r\nGłębokość:   45  cm\r\n\r\nWysokość:    182 cm\r\n\r\n', 565, 10, 21),
(161, 'sza8', 'https://static.abra-meble.pl/catalog/product/s/z/szafa_1.jpg', 'Szafa Ikil', 'Szafa dwudrzwiowa wykonana z drewna.', 'Szerokość:   170 cm\r\n\r\nGłębokość:   85  cm\r\n\r\nWysokość:    210 cm\r\n\r\n', 967, 4, 21);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `promocja`
--

CREATE TABLE `promocja` (
  `id` int(11) NOT NULL,
  `id_zdjec` text COLLATE utf8mb4_polish_ci NOT NULL,
  `id_opisu_zdj` text COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwa` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `cena` float NOT NULL,
  `cena2` float NOT NULL,
  `ilosc` int(11) NOT NULL,
  `opis` text COLLATE utf8mb4_polish_ci NOT NULL,
  `parametry` text COLLATE utf8mb4_polish_ci NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `promocja`
--

INSERT INTO `promocja` (`id`, `id_zdjec`, `id_opisu_zdj`, `nazwa`, `cena`, `cena2`, `ilosc`, `opis`, `parametry`, `data`) VALUES
(1, 'prom1', 'https://cdn.arena.pl/f23fdc36619389e106220f494833ab3f-product_lightbox.jpg', 'Łóżko Nix2', 750, 875, 17, 'Wygodne łóżko posiadający materac sprężynowy.', 'Wysokość:     65 cm\r\n\r\nDługość:      192 cm\r\n\r\nSzerokość:    85 cm', '2021-10-12'),
(2, 'prom2', 'https://mateomarket.pl/img/products/17/57/7/1_max.jpg', 'Umywalka Roka', 245, 330, 8, 'Umywalka wykonana z ceramiki.', 'Wysokość:     10 cm\r\n\r\nDługość:      42 cm\r\n\r\nSzerokość:    65 cm', '2021-09-17'),
(3, 'prom3', 'https://www.ikea.com/pl/pl/images/products/songe-lustro-szary__0637813_PE698606_S4.JPG', 'Lustro Uxus', 250, 380, 22, 'Lustro wykonane z hartowanego szkła.', 'Wysokość:     55 cm\r\n\r\nGrubość:      3 cm\r\n\r\nSzerokość:    65 cm', '2021-10-04'),
(4, 'prom4', 'https://images.obi.pl/product/PL/1500x1500/600931_1.jpg', 'Blat Umul', 250, 400, 9, 'Solidny blat przeznaczony do szafki kuchennej.', 'Wysokość:     75 cm\r\n\r\nGrubość:      6cm\r\n\r\nSzerokość:    55 cm', '2021-11-06'),
(5, 'prom5', 'https://cdn4.jysk.com/getimage/wd2.large/13904', 'Stół Brim', 340, 520, 10, 'Stół wykonany z drewna bukowego.', 'Wysokość:     65 cm\r\n\r\nDługość:      142 cm\r\n\r\nSzerokość:    95 cm', '2021-12-14'),
(6, 'prom6', 'https://s.mamotoja.pl/media/cache/450x450/media/product/200812/855_01_4086.jpg', 'Materac Lipi2', 445, 620, 3, 'Materac zrobiony z solidnych surowców.', 'Długość:     195 cm\r\n\r\nGrubość:      12 cm\r\n\r\nSzerokość:    85 cm', '2021-10-20'),
(7, 'prom7', 'https://www.bettso.pl/9853-large_default/alon-stol-rozkladany-buk-ibsenbialy.jpg', 'Stół Wix-B', 425, 650, 7, 'Stół rozkładany do maksymalnej długości 240 cm.\r\nWykonany z drewna bukowego.', 'Wysokość:     75 cm\r\n\r\nDługość:      192x240 cm\r\n\r\nSzerokość:   85 cm', '2021-10-30'),
(8, 'prom8', 'https://www.sklep.stolarstwo-smaza.pl/environment/cache/images/500_500_productGfx_2b15b6c3926e670ba52acb816bf0f4f2.jpg', 'Lustro Azix', 270, 360, 18, 'Podświetlane lustro.', 'Wysokość:     65 cm\r\n\r\nGrubość:      4 cm\r\n\r\nSzerokość:    65 cm', '2021-10-28');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(11) NOT NULL,
  `user` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `pass` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `uzytkownicy`
--



-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(11) NOT NULL,
  `id_uzytkownika` int(10) NOT NULL,
  `id_towaru` int(10) DEFAULT NULL,
  `id_prom` int(11) DEFAULT NULL,
  `data` datetime NOT NULL,
  `name` text COLLATE utf8mb4_polish_ci NOT NULL,
  `surname` text COLLATE utf8mb4_polish_ci NOT NULL,
  `adress` text COLLATE utf8mb4_polish_ci NOT NULL,
  `miasto` text COLLATE utf8mb4_polish_ci NOT NULL,
  `ilosc` int(11) NOT NULL,
  `cena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `zamowienia`
--


--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `koszyk`
--
ALTER TABLE `koszyk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_promocji` (`id_promocji`),
  ADD KEY `id_uzytkownika` (`id_uzytkownika`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeksy dla tabeli `podkategoria`
--
ALTER TABLE `podkategoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategoria` (`id_kategoria`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_podkategoria` (`id_podkategoria`);
ALTER TABLE `produkty` ADD FULLTEXT KEY `nazwa` (`nazwa`);

--
-- Indeksy dla tabeli `promocja`
--
ALTER TABLE `promocja`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `koszyk`
--
ALTER TABLE `koszyk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT dla tabeli `podkategoria`
--
ALTER TABLE `podkategoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT dla tabeli `promocja`
--
ALTER TABLE `promocja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `koszyk`
--
ALTER TABLE `koszyk`
  ADD CONSTRAINT `koszyk_ibfk_1` FOREIGN KEY (`id_promocji`) REFERENCES `promocja` (`id`),
  ADD CONSTRAINT `koszyk_ibfk_2` FOREIGN KEY (`id_uzytkownika`) REFERENCES `uzytkownicy` (`id`),
  ADD CONSTRAINT `koszyk_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `produkty` (`id`);

--
-- Ograniczenia dla tabeli `podkategoria`
--
ALTER TABLE `podkategoria`
  ADD CONSTRAINT `podkategoria_ibfk_1` FOREIGN KEY (`id_kategoria`) REFERENCES `kategoria` (`id`);

--
-- Ograniczenia dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD CONSTRAINT `produkty_ibfk_1` FOREIGN KEY (`id_podkategoria`) REFERENCES `podkategoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
