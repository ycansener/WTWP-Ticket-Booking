﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using TicketBooking.ClassLayer;
using DataLayer;
using System.Data.Objects;

namespace TicketBooking.DataAccessLayer
{
    public class RezervasyonDB
    {
        public static ArrayList bosKoltuklariGetir(int seansID, int salonID)
        {
            ArrayList al = new ArrayList();

            foreach (KOLTUK koltuk in new DBConnection().ConnectDB.SeansaGoreBosKoltuklar(seansID,salonID))
                al.Add(new Koltuk(koltuk.Koltuk_ID,Convert.ToChar(koltuk.Satır_No+64),koltuk.Sutun_No));
            return al;
        }
        public static Dictionary<int, Film> tumFilmleriGetir()
        {
            Dictionary<int, Film> dict = new Dictionary<int, Film>();
            foreach (FILM f in new DBConnection().ConnectDB.TumFilmleriCek())
                dict.Add(f.FilmID,new Film(f.FilmID,f.Film_Adı,f.Ekleme_Tarihi,f.Bitis_Tarihi));

            return dict;
        }

        public static ObjectResult<FilminSeanslariniGoster_Result> filminSeanslariniGetir(int filmID)
        {
            return new DBConnection().ConnectDB.FilminSeanslariniGoster(filmID);
        }

        public static ArrayList saateGoreSalonGetir(TimeSpan saat)
        {
            ArrayList al = new ArrayList();

            foreach (SALON salon in new DBConnection().ConnectDB.SaateGoreSalonlariGetir(saat)) 
                al.Add(new Salon(salon.Salon_ID,salon.Salon_Adı));
            
            return al;
        }

        public static int tekSeansGetir(int filmID, int salonID)
        {
            return Convert.ToInt32(new DBConnection().ConnectDB.TekSeansGetir(filmID,salonID).First());
        }
    }
}