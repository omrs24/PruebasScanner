using System;

using Android.App;
using Android.Content.PM;
using Android.Runtime;
using Android.OS;
using Xamarin.Forms;
using PruebasScanner.Views;

namespace PruebasScanner.Droid
{
    [Activity(Label = "Comida Reaseguradores", Icon = "@mipmap/somusappicon", Theme = "@style/MainTheme",
        MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | 
            ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize )]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            TabLayoutResource = Resource.Layout.Tabbar;
            ToolbarResource = Resource.Layout.Toolbar;

            base.OnCreate(savedInstanceState);

            ZXing.Mobile.MobileBarcodeScanner.Initialize(Application);

            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            global::Xamarin.Forms.Forms.Init(this, savedInstanceState);

            //Scanner codigo de barras
            ZXing.Net.Mobile.Forms.Android.Platform.Init();
            LoadApplication(new App());

            MessagingCenter.Subscribe<AboutPage>(this, "allowLandScape", sender =>
            {
                RequestedOrientation = ScreenOrientation.Landscape;
            });

            MessagingCenter.Subscribe<AboutPage>(this, "quitLandScape", sender =>
            {
                RequestedOrientation = ScreenOrientation.Portrait;
            });
        }
        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }
}