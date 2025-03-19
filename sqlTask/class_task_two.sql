SELECT i.SKU, i.SKU_Description, w.WarehouseID, w.WarehouseCity, w.WarehouseState FROM INVENTORY i JOIN WAREHOUSE w ON i.WarehouseID = w.WarehouseID WHERE w.WarehouseCity = 'Atlanta' OR w.WarehouseCity = 'Bangor' OR w.WarehouseCity = 'Chicago';
SELECT i.SKU, i.SKU_Description, w.WarehouseID, w.WarehouseCity, w.WarehouseState FROM INVENTORY i JOIN WAREHOUSE w ON i.WarehouseID = w.WarehouseID WHERE w.WarehouseCity IN ('Atlanta', 'Bangor', 'Chicago');
SELECT i.SKU, i.SKU_Description, w.WarehouseID, w.WarehouseCity, w.WarehouseState FROM
INVENTORY i JOIN WAREHOUSE w ON i.WarehouseID = w.WarehouseID WHERE w.WarehouseCity != 'Atlanta' AND w.WarehouseCity != 'Bangor' AND w.WarehouseCity != 'Chicago';
SELECT i.SKU, i.SKU_Description, w.WarehouseID, w.WarehouseCity, w.WarehouseState FROM
INVENTORY i JOIN WAREHOUSE w ON i.WarehouseID = w.WarehouseID WHERE w.WarehouseCity NOT IN ('Atlanta', 'Bangor', 'Chicago');
SELECT SKU, SKU_Description, WarehouseID FROM INVENTORY WHERE WarehouseID IN (SELECT WarehouseID FROM WAREHOUSE WHERE Manager = 'Lucille Smith');
SELECT SKU, SKU_Description, INVENTORY.WarehouseID FROM INVENTORY, WAREHOUSE WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID AND WAREHOUSE.Manager = 'Lucille Smith';

