﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterUserPanel.master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="TicketBooking.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

    <br />

    <asp:Label ID="lblAd" runat="server" Text="Ad:   " ForeColor="#CCCCCC"></asp:Label>
    <br />
    <asp:TextBox ID="txtAd" runat="server" Width="240px"></asp:TextBox>

    <br />
    <asp:Label ID="lblSoyad" runat="server" Text="Soyad:   " ForeColor="#CCCCCC"></asp:Label>
    <br />
    <asp:TextBox ID="txtSoyad" runat="server"  Width="240px"></asp:TextBox>

    <br />

    <asp:Label ID="lblAd1" runat="server" Text="E-posta:   " ForeColor="#CCCCCC"></asp:Label>
    <br />
    <asp:TextBox ID="txtMail" runat="server"  Width="240px"></asp:TextBox>

    <br />

    <asp:Label ID="lblAd2" runat="server" Text="Şifre:   " ForeColor="#CCCCCC"></asp:Label>
    <br />
    <asp:TextBox ID="txtSifre" runat="server" TextMode="Password"  Width="240px"></asp:TextBox>

    <br />

    <asp:Label ID="lblAd3" runat="server" Text="Şifre(Tekrar):   " 
        ForeColor="#CCCCCC"></asp:Label>
    <br />
    <asp:TextBox ID="txtSifre2" runat="server" TextMode="Password"  Width="240px"></asp:TextBox>

    <br />

    <br />
    <br />
        <div style="text-align: center">
        <asp:Button ID="btnCancel" runat="server" Text="İptal" 
            onclick="btnCancel_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnConfirm" runat="server" Text="Kaydet" 
            onclick="btnConfirm_Click" />
    </div>
    <div>
    <asp:HyperLink class="lnk" ID="HyperLink1" runat="server" NavigateUrl="#">Son rezervasyonları göster</asp:HyperLink>
        <br />
        <asp:ListView ID="lstSonRezervasyonlar" runat="server">
        <LayoutTemplate>
            <asp:PlaceHolder runat="server" id="itemPlaceHolder"></asp:PlaceHolder>

        
        </LayoutTemplate>

        <ItemSeparatorTemplate>
        <hr />
        </ItemSeparatorTemplate>

        <ItemTemplate>
                <div id='<%#Eval("RezervasyonID","biletAna_{0}") %>'>
            <div id="logo">
            <div id="logoUst">broadway</div>
            <div id ="logoAlt">sinemaları...</div>
            </div>
            <div id="barkod">
                
                <asp:Image ID="imgBarkod" runat="server" ImageUrl='<%#Eval("RezervasyonID","~/BarkodOlustur.aspx?ID={0}") %>' />
                
            </div>
            <div id="bilgiler">
            <table id="tabloBilgiler">
            <tr>
            <th>Ad Soyad:</th>
            <td><asp:Label runat="server" ID="lblAdSoyad" Text="<%#Bind('AdSoyad')%>"></asp:Label></td>
            </tr>
            <tr>
            <th>Film:</th>
            <td><asp:Label runat="server" ID="lblFilm" Text="<%#Bind('FilmAdi') %>"></asp:Label></td>
            <th>Seans:</th>
            <td><asp:Label runat="server" ID="lblSeans" Text="<%#Bind('Saat') %>"></asp:Label></td>
            </tr>
            <tr>
            <th>Salon:</th>
            <td><asp:Label runat="server" ID="lblSalon" Text="<%#Bind('SalonAdi') %>"></asp:Label></td>
            <th>Koltuk:</th>
            <td><asp:Label runat="server" ID="lblKoltuk" Text="<%#Bind('KoltukAdi') %>"></asp:Label></td>
            <th>Ucret:</th>
            <td><asp:Label runat="server" ID="lblBiletUcret" Text='<%#Eval("Ucret","{0} TL") %>'></asp:Label></td>
            </tr>
            </table>
            </div>

        </div>
                <div style="text-align:right; margin-top:5px; color:White;" class="btn">
            <a href="#" onclick=$('<%#Eval("RezervasyonID","#biletAna_{0}") %>').jqprint(); class="lnk">Yazdır</a> </div>
        </ItemTemplate>
        </asp:ListView>
    </div>
    <br />
    <br />

</div>
</asp:Content>
