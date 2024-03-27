TYPE=VIEW
query=select `i`.`Iid` AS `ItemId`,`i`.`Iname` AS `ItemName`,count(`oi`.`iId`) AS `NoOfBoxes`,`i`.`Sprice` AS `ItemPrice`,count(distinct `o`.`Cid`) AS `ItemCustomers`,count(`oi`.`iId`) * `i`.`Sprice` AS `ItemRevenue` from ((`arlington_sprouts`.`item` `i` join `arlington_sprouts`.`order_item` `oi` on(`i`.`Iid` = `oi`.`iId`)) join `arlington_sprouts`.`orders` `o` on(`oi`.`oId` = `o`.`Oid`)) group by `i`.`Iid`,`i`.`Iname`,`i`.`Sprice`
md5=22a6a40c9e153544a00cf6871202f964
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001700602695239272
create-version=2
source=SELECT\n    i.iId AS ItemId,\n    i.Iname AS ItemName,\n    COUNT(oi.iId) AS NoOfBoxes,\n    i.Sprice AS ItemPrice,\n    COUNT(DISTINCT o.cId) AS ItemCustomers,\n    COUNT(oi.iId) * i.Sprice AS ItemRevenue\nFROM\n    ITEM i\nJOIN\n    ORDER_ITEM oi ON i.iId = oi.iId\nJOIN\n    ORDERS o ON oi.oId = o.oId\nGROUP BY\n    i.iId, i.Iname, i.Sprice
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `i`.`Iid` AS `ItemId`,`i`.`Iname` AS `ItemName`,count(`oi`.`iId`) AS `NoOfBoxes`,`i`.`Sprice` AS `ItemPrice`,count(distinct `o`.`Cid`) AS `ItemCustomers`,count(`oi`.`iId`) * `i`.`Sprice` AS `ItemRevenue` from ((`arlington_sprouts`.`item` `i` join `arlington_sprouts`.`order_item` `oi` on(`i`.`Iid` = `oi`.`iId`)) join `arlington_sprouts`.`orders` `o` on(`oi`.`oId` = `o`.`Oid`)) group by `i`.`Iid`,`i`.`Iname`,`i`.`Sprice`
mariadb-version=100428
