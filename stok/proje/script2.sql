#Her personelin son 1 ayda eklediği ürünün fiyat cinsinden değerini hesaplayınız
select p.id,SUM(u.Fiyat * ue.Miktar) from Personel p join UrunEkle ue on ue.personelId = p.id join urun u on u.idUrun = ue.Urunid
WHERE ue.Tarih <= (NOW() - INTERVAL 1 MONTH) AND UE.status = 1
group by p.id;

#Urunlerde en çok iş yapan (Ekleyip- çıkaran) personelleri sırala
select id,SUM(Miktar) as miktar from (
select p.id, ue.Miktar from Personel p join UrunEkle ue on ue.personelId = p.id  where UE.status = 1 
UNION ALL 
select p.id, uc.Miktar from Personel p join urunCikar uc on uc.personelId = p.id 
)a  group by id  order by miktar desc;

#Ürünleri fiyat değerine göre sıralayiniz
select UrunAdi,SUM(Miktar * Fiyat) as Deger from UrunEkle ue join urun u on ue.UrunId = u.idUrun where ue.STATUS = 1 group by UrunAdi



