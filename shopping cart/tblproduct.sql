--
-- This is the structure for table `productstable`
--

CREATE TABLE `productstable` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
  `description` text NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `productstable`
--

INSERT INTO `productstable` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, 'Product1', 'P001', 'product-images/product1.jpg', 1500.00),
(2, 'Product2', 'P002', 'product-images/product2-hard-drive.jpg', 800.00),
(3, 'Product3', 'P003', 'product-images/product3.jpg', 300.00),
(4, 'Product4', 'P004', 'product-images/product4.jpg', 1500.00),
(5, 'Product5', 'P005', 'product-images/product5.jpg', 800.00),
(6, 'Product6', 'P006', 'product-images/product6.jpg', 300.00),
(7, 'Product7', 'P007', 'product-images/product7.jpg', 1500.00),
(8, 'Product8', 'P008', 'product-images/product8.jpg', 800.00),
(9, 'Product9', 'P009', 'product-images/product9.jpg', 300.00),
(10, 'Product10', 'P010', 'product-images/product10.jpg', 800.00);

--
-- These are the indexes for table `productstable`
--
ALTER TABLE `productstable`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`code`);

--
-- This section is for AUTO_INCREMENT for dumped tables
--

--
-- This is AUTO_INCREMENT for table `productstable`
--
ALTER TABLE `productstable`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;