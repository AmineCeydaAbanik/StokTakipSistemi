#En cok urun girilen subeyi gosteriniz
DELIMITER //
CREATE FUNCTION performansliSube()
RETURNS INT
DETERMINISTIC
BEGIN
	 DECLARE result INT;
select  idSube into result  from Personel p join UrunEkle ue on ue.personelId = p.id join urun u on u.idUrun = ue.Urunid
join sube s on s.idSube = p.Sube group by s.idSube  order by SUM( ue.Miktar) limit 1;
RETURN result;
END;//
DELIMITER ;

select performansliSube()


#Eklenen urun ile beraber UrunBilgileri tablosundaki bilgileri guncelle
DELIMITER $$
CREATE  TRIGGER urunBilgileriGuncelle
AFTER INSERT
ON urunEkle FOR EACH ROW
BEGIN
	declare idUruntmp int;
    declare toplamDegertmp int;
    declare kapasitetmp int;
    select idUrun ,SUM(ue.Miktar * u.Fiyat) toplam_deger, SUM(ue.Miktar)/uk.kapasite kapasite 
    into idUruntmp,toplamDegertmp,kapasitetmp
 from urunEkle ue join Urun u on ue.UrunId = u.idUrun join urunKapasite uk on uk.UrunId = u.idUrun
 where STATUS = 1 and ue.UrunId = NEW.UrunId;
 
 IF EXISTS (select * from urunKapasite where UrunId = new.UrunId) then
	update UrunBilgileri set DolulukORani = kapasitetmp, ToplamDeger =toplamDegertmp  where UrunId = new.UrunId; 
 else
	insert into UrunBilgileri (UrunId,DolulukOrani,ToplamDeger) values(idUruntmp,toplamDegertmp,kapasitetmp);
END IF;
END$$

DELIMITER ;

insert into UrunEkle (PersonelId,UrunId,Miktar,Tarih,Status) values
(2,2,2000,'2020-01-01 00:00:01',1)


    select idUrun ,SUM(ue.Miktar * u.Fiyat) toplam_deger, SUM(ue.Miktar)/uk.kapasite kapasite 
 from urunEkle ue join Urun u on ue.UrunId = u.idUrun join urunKapasite uk on uk.UrunId = u.idUrun
 where STATUS = 1 and ue.UrunId = 2


