using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using NetworkHelper;
using console;

namespace wpf
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            List<ingatlanok> tomb = Backend.GET("http://localhost:3000/ingatlanok").Send().ToList<ingatlanok>();
            lbadatok.ItemsSource = tomb;
            lbadatok.SelectedIndex = 0;
            lbadatok.DisplayMemberPath = "kozterulet";

            datetimepicker.SelectedDate = DateTime.Now;
        }

        private void lbadatok_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            lbkozterulet.Content = (lbadatok.SelectedItem as ingatlanok).kozterulet;
            lbhazszam.Content = (lbadatok.SelectedItem as ingatlanok).hazszam;

            lbfalazat.Content = (lbadatok.SelectedItem as ingatlanok).falazat;

            if((lbadatok.SelectedItem as ingatlanok).lakas == 1)
            {
                lblakas.Content = "Lakás";
            }
            else
            {
                lblakas.Content = "Önálló ház";
            }


        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (tbar.Text != "")
                {
                    lbhiba.Content = "Árat kötelező megadni";
                }


                var adatok = new
                {
                    /*bevitel1 =,
                    bevitel2=,
                    bevitel3=*/

                };
                //Backend.POST("http://localhost:3000/hirdetesfelvitel").Body(adatok).Send().Message;
            }
            catch
            {
                lbhiba.Content = "valami hiba tortent";
            }
            




        }
    }
}
