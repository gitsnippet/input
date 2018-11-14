
CREATE TABLE `goods` (
  `goods` varchar(20) NOT NULL,
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `totalPrice` float(10,2) NOT NULL COMMENT '总价',
  `unitPrice` float(10,2) NOT NULL COMMENT '单价',
  `amount` int(4) NOT NULL COMMENT '数量',
  `spec` varchar(100) NOT NULL COMMENT '规格,可以写商品的特征',
  `location` varchar(50) NOT NULL COMMENT '购买地',
  `purchaseTime` date NOT NULL COMMENT '购买时间',
  `batch` int(2) NOT NULL DEFAULT '1' COMMENT '批次',
  `comments` varchar(200) NULL COMMENT '评价',
  PRIMARY KEY (`id`),
  UNIQUE KEY `goods` (`goods`,`totalPrice`,`unitPrice`,`amount`,`spec`,`location`,`purchaseTime`,`batch`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
