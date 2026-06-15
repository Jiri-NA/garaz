-- Bedny už nemají vlastní fotku (jen položky v bedně mají fotky).
-- Vynulujeme image_url u všech beden a zahodíme sloupec.
update garaz_boxes set image_url = null where image_url is not null;
alter table garaz_boxes drop column if exists image_url;
