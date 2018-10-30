 CREATE TABLE `goods` (
      `id` int(5) NOT NULL AUTO_INCREMENT,
      `goods` varchar(30) NOT NULL COMMENT '商品',
      `totalPrice` float(10,2) NOT NULL COMMENT '总价',
      `unitPrice` float(10,2) NOT NULL COMMENT '单价',
      `spec` varchar(100) NOT NULL COMMENT '规格,可以写商品的特征',
      `location` varchar(50) NOT NULL COMMENT '购买地',
      `purchaseTime` date NOT NULL COMMENT '购买时间',
      `batch` int(2) NOT NULL DEFAULT '1' COMMENT '批次',
      `comments` varchar(200) NOT NULL COMMENT '评价',
      PRIMARY KEY (`id`),
      UNIQUE KEY `goods` (`goods`,`totalPrice`,`unitPrice`,`spec`,`location`,`purchaseTime`,`batch`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
