-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-03-02 05:07:53
-- 伺服器版本： 10.4.16-MariaDB
-- PHP 版本： 7.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `topic`
--

-- --------------------------------------------------------

--
-- 資料表結構 `product_list`
--

CREATE TABLE `product_list` (
  `p_sid` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_cate` int(255) NOT NULL,
  `p_size` varchar(255) DEFAULT NULL,
  `p_price` int(11) NOT NULL,
  `p_intro` varchar(255) DEFAULT NULL,
  `p_img` varchar(255) DEFAULT NULL,
  `p_carousel_img` varchar(255) NOT NULL,
  `p_desc` varchar(255) DEFAULT NULL,
  `Alcohol_vol` float NOT NULL,
  `ingredient` varchar(255) NOT NULL,
  `cake` varchar(255) NOT NULL,
  `m_v` varchar(255) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `expir` varchar(255) NOT NULL,
  `member_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product_list`
--

INSERT INTO `product_list` (`p_sid`, `p_name`, `p_cate`, `p_size`, `p_price`, `p_intro`, `p_img`, `p_carousel_img`, `p_desc`, `Alcohol_vol`, `ingredient`, `cake`, `m_v`, `storage`, `expir`, `member_id`) VALUES
(1, '微醺森林', 4, '6吋', 650, '德式櫻桃黑森林蛋糕', '1.jpeg', '1.jpeg,1-1.jpeg,1-2.jpeg', '以德式黑森林蛋糕為基礎，加入蘭姆酒烘托出成熟的味道，搭配濕潤的蛋糕體有如親臨森林中富帶水氣的土壤，你的嗅覺會否和小白兔一起迷失在黑櫻桃的酒香中呢？', 40, '蘭姆酒/酒漬黑櫻桃/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', '001'),
(2, '祕果', 3, '6吋', 450, '酒漬無花果巧克力蛋糕', '2.jpeg', '2.jpeg,2-1.jpeg,2-2.jpeg', '一夜酒漬浸潤的無花果乾，果肉吸飽酒香，搭配70%微苦帶甜的巧克力蛋糕，散發出奢華醉人風味，以輕盈香草慕斯作為故事尾聲，今晚祝你有個好夢。', 10, '白葡萄酒/酒漬無花果乾/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(3, '可拉斯可', 4, '6吋', 650, '經典威士忌巧克力蛋糕', '3.jpeg', '3.jpeg,3-1.jpeg,3-2.jpeg', '經典不敗，愈是單純的東西愈能展現出價值，威士忌與70%苦甜巧克力交織共舞，不管人生是不是苦甜參半，都要帶點微醺和微笑。', 40, '威士忌/70%巧克力/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(4, '酒神', 2, '6吋', 450, '紅酒西洋梨威士忌風味千層蛋糕', '4.jpeg', '4.jpeg,4-1.jpeg,4-2.jpeg', '紅酒淺漬的西洋梨片埋藏在千層蛋糕中，與威士忌風味的奶油讓你每一口都充滿味覺和嗅覺的享受', 12, '紅葡萄酒/酒漬西洋梨片', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(5, '橙', 4, '6吋', 650, '檸檬風味鮮奶油蛋糕', '5.jpeg', '5.jpeg,5-1.jpeg,5-2.jpeg', '口味單純的千層蛋糕加入了君度橙酒後就搖身一變成為大人專屬的點心。酒香中藏有溫潤的蜂蜜甜味，鮮奶油內混入的檸檬皮讓甜點吃起來毫無膩口感，小孩才做選擇，大人就多買一個吧！', 40, '君度橙酒/龍眼蜜/檸檬皮/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(6, '踏雪', 4, '6吋', 650, '威士忌風味蛋糕', '6.jpeg', '6.jpeg,6-1.jpeg,6-2.jpeg', '沒有什麼比鮮奶油、焦糖和巧克力威士忌更適合點綴冬天了，在輕盈如雪花般的鮮奶油混入焦糖糖漿，與加了烈酒的巧克力蛋糕一口咬下，馬上就能感受到溫暖幸福的滋味！\r\n', 40, '威士忌/鮮奶油/焦糖糖漿/巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(7, '巧克力重擊', 5, '6吋', 650, '巧克力卡魯哇咖啡酒蛋糕', '7.jpeg', '7.jpeg,7-1.jpeg,7-2.jpeg', '法國莊園等級巧克力加上卡魯哇咖啡酒蛋糕，是本店廣受好評的特殊風味產品之一', 20, '卡魯哇咖啡酒/法國莊園級巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(8, '森聲', 5, '6吋', 650, '小山園抹茶特製蛋糕', '8.jpeg', '8.jpeg,8-1.jpeg,8-2.jpeg', '採用小山園抹茶、鮮奶油、與抹茶利口酒的特製蛋糕，是本店大受歡迎的人氣商品', 25, '抹茶利口酒/小山園抹茶粉/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(9, '夜之花', 2, '6吋', 650, '苦甜巧克力與紅酒蛋糕', '9.jpeg', '9.jpeg,9-1.jpeg,9-2.jpeg', '季節限定！苦甜巧克力與紅酒擦出火花，飽含紅酒香的蛋糕體與香濃巧克力是冬天的最佳選擇', 12, '紅葡萄酒/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(10, '小春日和', 3, '8吋', 950, '地瓜結合芋頭創意酒味蛋糕', '13.jpeg', '13.jpeg,13-1.jpeg,13-2.jpeg', '採用新鮮地瓜與特選大甲芋頭製作的健康風蛋糕！只在奶油中混入少量白酒增香，是適合初春時刻的輕量級蛋糕！', 10, '白葡萄酒/地瓜泥/大甲芋泥/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(24, '微醺森林', 4, '6吋', 650, '德式櫻桃黑森林蛋糕', '1.jpeg', '1.jpeg,1-1.jpeg,1-2.jpeg', '以德式黑森林蛋糕為基礎，加入蘭姆酒烘托出成熟的味道，搭配濕潤的蛋糕體有如親臨森林中富帶水氣的土壤，你的嗅覺會否和小白兔一起迷失在黑櫻桃的酒香中呢？', 40, '蘭姆酒/酒漬黑櫻桃/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(25, '祕果', 3, '6吋', 450, '酒漬無花果巧克力蛋糕', '2.jpeg', '2.jpeg,2-1.jpeg,2-2.jpeg', '一夜酒漬浸潤的無花果乾，果肉吸飽酒香，搭配70%微苦帶甜的巧克力蛋糕，散發出奢華醉人風味，以輕盈香草慕斯作為故事尾聲，今晚祝你有個好夢。', 10, '白葡萄酒/酒漬無花果乾/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(26, '可拉斯可', 4, '6吋', 650, '經典威士忌巧克力蛋糕', '3.jpeg', '3.jpeg,3-1.jpeg,3-2.jpeg', '經典不敗，愈是單純的東西愈能展現出價值，威士忌與70%苦甜巧克力交織共舞，不管人生是不是苦甜參半，都要帶點微醺和微笑。', 40, '威士忌/70%巧克力/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(27, '酒神', 2, '6吋', 450, '紅酒西洋梨威士忌風味千層蛋糕', '4.jpeg', '4.jpeg,4-1.jpeg,4-2.jpeg', '紅酒淺漬的西洋梨片埋藏在千層蛋糕中，與威士忌風味的奶油讓你每一口都充滿味覺和嗅覺的享受', 12, '紅葡萄酒/酒漬西洋梨片', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(28, '橙', 4, '6吋', 650, '檸檬風味鮮奶油蛋糕', '5.jpeg', '5.jpeg,5-1.jpeg,5-2.jpeg', '口味單純的千層蛋糕加入了君度橙酒後就搖身一變成為大人專屬的點心。酒香中藏有溫潤的蜂蜜甜味，鮮奶油內混入的檸檬皮讓甜點吃起來毫無膩口感，小孩才做選擇，大人就多買一個吧！', 40, '君度橙酒/龍眼蜜/檸檬皮/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(29, '踏雪', 4, '6吋', 650, '威士忌風味蛋糕', '6.jpeg', '6.jpeg,6-1.jpeg,6-2.jpeg', '沒有什麼比鮮奶油、焦糖和巧克力威士忌更適合點綴冬天了，在輕盈如雪花般的鮮奶油混入焦糖糖漿，與加了烈酒的巧克力蛋糕一口咬下，馬上就能感受到溫暖幸福的滋味！\r\n', 40, '威士忌/鮮奶油/焦糖糖漿/巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(30, '巧克力重擊', 5, '6吋', 650, '巧克力卡魯哇咖啡酒蛋糕', '7.jpeg', '7.jpeg,7-1.jpeg,7-2.jpeg', '法國莊園等級巧克力加上卡魯哇咖啡酒蛋糕，是本店廣受好評的特殊風味產品之一', 20, '卡魯哇咖啡酒/法國莊園級巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(31, '森聲', 5, '6吋', 650, '小山園抹茶特製蛋糕', '8.jpeg', '8.jpeg,8-1.jpeg,8-2.jpeg', '採用小山園抹茶、鮮奶油、與抹茶利口酒的特製蛋糕，是本店大受歡迎的人氣商品', 25, '抹茶利口酒/小山園抹茶粉/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(32, '夜之花', 2, '6吋', 650, '苦甜巧克力與紅酒蛋糕', '9.jpeg', '9.jpeg,9-1.jpeg,9-2.jpeg', '季節限定！苦甜巧克力與紅酒擦出火花，飽含紅酒香的蛋糕體與香濃巧克力是冬天的最佳選擇', 12, '紅葡萄酒/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(33, '小春日和', 3, '8吋', 950, '地瓜結合芋頭創意酒味蛋糕', '13.jpeg', '13.jpeg,13-1.jpeg,13-2.jpeg', '採用新鮮地瓜與特選大甲芋頭製作的健康風蛋糕！只在奶油中混入少量白酒增香，是適合初春時刻的輕量級蛋糕！', 10, '白葡萄酒/地瓜泥/大甲芋泥/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(34, '微醺森林', 4, '6吋', 650, '德式櫻桃黑森林蛋糕', '1.jpeg', '1.jpeg,1-1.jpeg,1-2.jpeg', '以德式黑森林蛋糕為基礎，加入蘭姆酒烘托出成熟的味道，搭配濕潤的蛋糕體有如親臨森林中富帶水氣的土壤，你的嗅覺會否和小白兔一起迷失在黑櫻桃的酒香中呢？', 40, '蘭姆酒/酒漬黑櫻桃/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(35, '祕果', 3, '6吋', 450, '酒漬無花果巧克力蛋糕', '2.jpeg', '2.jpeg,2-1.jpeg,2-2.jpeg', '一夜酒漬浸潤的無花果乾，果肉吸飽酒香，搭配70%微苦帶甜的巧克力蛋糕，散發出奢華醉人風味，以輕盈香草慕斯作為故事尾聲，今晚祝你有個好夢。', 10, '白葡萄酒/酒漬無花果乾/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(36, '可拉斯可', 4, '6吋', 650, '經典威士忌巧克力蛋糕', '3.jpeg', '3.jpeg,3-1.jpeg,3-2.jpeg', '經典不敗，愈是單純的東西愈能展現出價值，威士忌與70%苦甜巧克力交織共舞，不管人生是不是苦甜參半，都要帶點微醺和微笑。', 40, '威士忌/70%巧克力/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(37, '酒神', 2, '6吋', 450, '紅酒西洋梨威士忌風味千層蛋糕', '4.jpeg', '4.jpeg,4-1.jpeg,4-2.jpeg', '紅酒淺漬的西洋梨片埋藏在千層蛋糕中，與威士忌風味的奶油讓你每一口都充滿味覺和嗅覺的享受', 12, '紅葡萄酒/酒漬西洋梨片', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(38, '橙', 4, '6吋', 650, '檸檬風味鮮奶油蛋糕', '5.jpeg', '5.jpeg,5-1.jpeg,5-2.jpeg', '口味單純的千層蛋糕加入了君度橙酒後就搖身一變成為大人專屬的點心。酒香中藏有溫潤的蜂蜜甜味，鮮奶油內混入的檸檬皮讓甜點吃起來毫無膩口感，小孩才做選擇，大人就多買一個吧！', 40, '君度橙酒/龍眼蜜/檸檬皮/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(39, '踏雪', 4, '6吋', 650, '威士忌風味蛋糕', '6.jpeg', '6.jpeg,6-1.jpeg,6-2.jpeg', '沒有什麼比鮮奶油、焦糖和巧克力威士忌更適合點綴冬天了，在輕盈如雪花般的鮮奶油混入焦糖糖漿，與加了烈酒的巧克力蛋糕一口咬下，馬上就能感受到溫暖幸福的滋味！\r\n', 40, '威士忌/鮮奶油/焦糖糖漿/巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(40, '巧克力重擊', 5, '6吋', 650, '巧克力卡魯哇咖啡酒蛋糕', '7.jpeg', '7.jpeg,7-1.jpeg,7-2.jpeg', '法國莊園等級巧克力加上卡魯哇咖啡酒蛋糕，是本店廣受好評的特殊風味產品之一', 20, '卡魯哇咖啡酒/法國莊園級巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(41, '森聲', 5, '6吋', 650, '小山園抹茶特製蛋糕', '8.jpeg', '8.jpeg,8-1.jpeg,8-2.jpeg', '採用小山園抹茶、鮮奶油、與抹茶利口酒的特製蛋糕，是本店大受歡迎的人氣商品', 25, '抹茶利口酒/小山園抹茶粉/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(42, '夜之花', 2, '6吋', 650, '苦甜巧克力與紅酒蛋糕', '9.jpeg', '9.jpeg,9-1.jpeg,9-2.jpeg', '季節限定！苦甜巧克力與紅酒擦出火花，飽含紅酒香的蛋糕體與香濃巧克力是冬天的最佳選擇', 12, '紅葡萄酒/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(43, '小春日和', 3, '8吋', 950, '地瓜結合芋頭創意酒味蛋糕', '13.jpeg', '13.jpeg,13-1.jpeg,13-2.jpeg', '採用新鮮地瓜與特選大甲芋頭製作的健康風蛋糕！只在奶油中混入少量白酒增香，是適合初春時刻的輕量級蛋糕！', 10, '白葡萄酒/地瓜泥/大甲芋泥/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(44, '微醺森林', 4, '6吋', 650, '德式櫻桃黑森林蛋糕', '1.jpeg', '1.jpeg,1-1.jpeg,1-2.jpeg', '以德式黑森林蛋糕為基礎，加入蘭姆酒烘托出成熟的味道，搭配濕潤的蛋糕體有如親臨森林中富帶水氣的土壤，你的嗅覺會否和小白兔一起迷失在黑櫻桃的酒香中呢？', 40, '蘭姆酒/酒漬黑櫻桃/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', '001'),
(45, '祕果', 3, '6吋', 450, '酒漬無花果巧克力蛋糕', '2.jpeg', '2.jpeg,2-1.jpeg,2-2.jpeg', '一夜酒漬浸潤的無花果乾，果肉吸飽酒香，搭配70%微苦帶甜的巧克力蛋糕，散發出奢華醉人風味，以輕盈香草慕斯作為故事尾聲，今晚祝你有個好夢。', 10, '白葡萄酒/酒漬無花果乾/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(46, '可拉斯可', 4, '6吋', 650, '經典威士忌巧克力蛋糕', '3.jpeg', '3.jpeg,3-1.jpeg,3-2.jpeg', '經典不敗，愈是單純的東西愈能展現出價值，威士忌與70%苦甜巧克力交織共舞，不管人生是不是苦甜參半，都要帶點微醺和微笑。', 40, '威士忌/70%巧克力/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(47, '酒神', 2, '6吋', 450, '紅酒西洋梨威士忌風味千層蛋糕', '4.jpeg', '4.jpeg,4-1.jpeg,4-2.jpeg', '紅酒淺漬的西洋梨片埋藏在千層蛋糕中，與威士忌風味的奶油讓你每一口都充滿味覺和嗅覺的享受', 12, '紅葡萄酒/酒漬西洋梨片', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(48, '橙', 4, '6吋', 650, '檸檬風味鮮奶油蛋糕', '5.jpeg', '5.jpeg,5-1.jpeg,5-2.jpeg', '口味單純的千層蛋糕加入了君度橙酒後就搖身一變成為大人專屬的點心。酒香中藏有溫潤的蜂蜜甜味，鮮奶油內混入的檸檬皮讓甜點吃起來毫無膩口感，小孩才做選擇，大人就多買一個吧！', 40, '君度橙酒/龍眼蜜/檸檬皮/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(49, '踏雪', 4, '6吋', 650, '威士忌風味蛋糕', '6.jpeg', '6.jpeg,6-1.jpeg,6-2.jpeg', '沒有什麼比鮮奶油、焦糖和巧克力威士忌更適合點綴冬天了，在輕盈如雪花般的鮮奶油混入焦糖糖漿，與加了烈酒的巧克力蛋糕一口咬下，馬上就能感受到溫暖幸福的滋味！\r\n', 40, '威士忌/鮮奶油/焦糖糖漿/巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(50, '巧克力重擊', 5, '6吋', 650, '巧克力卡魯哇咖啡酒蛋糕', '7.jpeg', '7.jpeg,7-1.jpeg,7-2.jpeg', '法國莊園等級巧克力加上卡魯哇咖啡酒蛋糕，是本店廣受好評的特殊風味產品之一', 20, '卡魯哇咖啡酒/法國莊園級巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(51, '森聲', 5, '6吋', 650, '小山園抹茶特製蛋糕', '8.jpeg', '8.jpeg,8-1.jpeg,8-2.jpeg', '採用小山園抹茶、鮮奶油、與抹茶利口酒的特製蛋糕，是本店大受歡迎的人氣商品', 25, '抹茶利口酒/小山園抹茶粉/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(52, '夜之花', 2, '6吋', 650, '苦甜巧克力與紅酒蛋糕', '9.jpeg', '9.jpeg,9-1.jpeg,9-2.jpeg', '季節限定！苦甜巧克力與紅酒擦出火花，飽含紅酒香的蛋糕體與香濃巧克力是冬天的最佳選擇', 12, '紅葡萄酒/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(53, '小春日和', 3, '8吋', 950, '地瓜結合芋頭創意酒味蛋糕', '13.jpeg', '13.jpeg,13-1.jpeg,13-2.jpeg', '採用新鮮地瓜與特選大甲芋頭製作的健康風蛋糕！只在奶油中混入少量白酒增香，是適合初春時刻的輕量級蛋糕！', 10, '白葡萄酒/地瓜泥/大甲芋泥/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(54, '微醺森林', 4, '6吋', 650, '德式櫻桃黑森林蛋糕', '1.jpeg', '1.jpeg,1-1.jpeg,1-2.jpeg', '以德式黑森林蛋糕為基礎，加入蘭姆酒烘托出成熟的味道，搭配濕潤的蛋糕體有如親臨森林中富帶水氣的土壤，你的嗅覺會否和小白兔一起迷失在黑櫻桃的酒香中呢？', 40, '蘭姆酒/酒漬黑櫻桃/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', '001'),
(55, '祕果', 3, '6吋', 450, '酒漬無花果巧克力蛋糕', '2.jpeg', '2.jpeg,2-1.jpeg,2-2.jpeg', '一夜酒漬浸潤的無花果乾，果肉吸飽酒香，搭配70%微苦帶甜的巧克力蛋糕，散發出奢華醉人風味，以輕盈香草慕斯作為故事尾聲，今晚祝你有個好夢。', 10, '白葡萄酒/酒漬無花果乾/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(56, '可拉斯可', 4, '6吋', 650, '經典威士忌巧克力蛋糕', '3.jpeg', '3.jpeg,3-1.jpeg,3-2.jpeg', '經典不敗，愈是單純的東西愈能展現出價值，威士忌與70%苦甜巧克力交織共舞，不管人生是不是苦甜參半，都要帶點微醺和微笑。', 40, '威士忌/70%巧克力/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(57, '酒神', 2, '6吋', 450, '紅酒西洋梨威士忌風味千層蛋糕', '4.jpeg', '4.jpeg,4-1.jpeg,4-2.jpeg', '紅酒淺漬的西洋梨片埋藏在千層蛋糕中，與威士忌風味的奶油讓你每一口都充滿味覺和嗅覺的享受', 12, '紅葡萄酒/酒漬西洋梨片', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(58, '橙', 4, '6吋', 650, '檸檬風味鮮奶油蛋糕', '5.jpeg', '5.jpeg,5-1.jpeg,5-2.jpeg', '口味單純的千層蛋糕加入了君度橙酒後就搖身一變成為大人專屬的點心。酒香中藏有溫潤的蜂蜜甜味，鮮奶油內混入的檸檬皮讓甜點吃起來毫無膩口感，小孩才做選擇，大人就多買一個吧！', 40, '君度橙酒/龍眼蜜/檸檬皮/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(59, '踏雪', 4, '6吋', 650, '威士忌風味蛋糕', '6.jpeg', '6.jpeg,6-1.jpeg,6-2.jpeg', '沒有什麼比鮮奶油、焦糖和巧克力威士忌更適合點綴冬天了，在輕盈如雪花般的鮮奶油混入焦糖糖漿，與加了烈酒的巧克力蛋糕一口咬下，馬上就能感受到溫暖幸福的滋味！\r\n', 40, '威士忌/鮮奶油/焦糖糖漿/巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(60, '巧克力重擊', 5, '6吋', 650, '巧克力卡魯哇咖啡酒蛋糕', '7.jpeg', '7.jpeg,7-1.jpeg,7-2.jpeg', '法國莊園等級巧克力加上卡魯哇咖啡酒蛋糕，是本店廣受好評的特殊風味產品之一', 20, '卡魯哇咖啡酒/法國莊園級巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(61, '森聲', 5, '6吋', 650, '小山園抹茶特製蛋糕', '8.jpeg', '8.jpeg,8-1.jpeg,8-2.jpeg', '採用小山園抹茶、鮮奶油、與抹茶利口酒的特製蛋糕，是本店大受歡迎的人氣商品', 25, '抹茶利口酒/小山園抹茶粉/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(62, '夜之花', 2, '6吋', 650, '苦甜巧克力與紅酒蛋糕', '9.jpeg', '9.jpeg,9-1.jpeg,9-2.jpeg', '季節限定！苦甜巧克力與紅酒擦出火花，飽含紅酒香的蛋糕體與香濃巧克力是冬天的最佳選擇', 12, '紅葡萄酒/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(63, '小春日和', 3, '8吋', 950, '地瓜結合芋頭創意酒味蛋糕', '13.jpeg', '13.jpeg,13-1.jpeg,13-2.jpeg', '採用新鮮地瓜與特選大甲芋頭製作的健康風蛋糕！只在奶油中混入少量白酒增香，是適合初春時刻的輕量級蛋糕！', 10, '白葡萄酒/地瓜泥/大甲芋泥/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', '');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`p_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_list`
--
ALTER TABLE `product_list`
  MODIFY `p_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
