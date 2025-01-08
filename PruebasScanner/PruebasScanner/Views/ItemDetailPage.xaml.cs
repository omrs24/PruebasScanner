using PruebasScanner.ViewModels;
using System.ComponentModel;
using Xamarin.Forms;

namespace PruebasScanner.Views
{
    public partial class ItemDetailPage : ContentPage
    {
        public ItemDetailPage()
        {
            InitializeComponent();
            BindingContext = new ItemDetailViewModel();
        }
    }
}