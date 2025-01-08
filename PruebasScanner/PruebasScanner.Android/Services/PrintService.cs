using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using Android.Print;
using Xamarin.Forms;
using PruebasScanner.Droid.Adapters;
using Android.Support.V4.Print;
using Plugin.CurrentActivity;
using Android.Graphics;
using PruebasScanner.Services;


[assembly: Dependency(typeof(PruebasScanner.Droid.Services.PrintService))]
namespace PruebasScanner.Droid.Services
{
    public class PrintService : IPrintService
    {
        [Obsolete]
        public void Print(Stream inputStream)
        {
            //Android print code goes here
            //Stream inputStream = new MemoryStream(content);

            string fileName = "form.pdf";
            if (inputStream.CanSeek)
                //Reset the position of PDF document stream to be printed
                inputStream.Position = 0;
            //Create a new file in the Personal folder with the given name
            //"/data/user/0/com.companyname.pruebasscanner/files/form.pdf"
            //string createdFilePath = System.IO.Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), fileName);
            var filename1 = Android.App.Application.Context.GetExternalFilesDir("").AbsolutePath;
            var filename = System.IO.Path.Combine(filename1, fileName);
            //Save the stream to the created file
            using (var dest = System.IO.File.OpenWrite(filename))
                inputStream.CopyTo(dest);
            string filePath = filename;
            PrintManager printManager = (PrintManager)Forms.Context.GetSystemService(Context.PrintService);
            PrintDocumentAdapter pda = new CustomPrintDocumentAdapter(filePath);
            //Print with null PrintAttributes
            printManager.Print(fileName, pda, null);
        }

        /*public bool PrintImage(Stream img)
        {
            PrintHelper photoPrinter = new PrintHelper(CrossCurrentActivity.Current.Activity);
            photoPrinter.ScaleMode = PrintHelper.ScaleModeFit;
            Bitmap bitmap = BitmapFactory.DecodeStream(img);
            photoPrinter.PrintBitmap("PrintSampleImg.jpg", bitmap);

            return true;
        }

        public bool PrintPdfFile(Stream file)
        {
            try
            {
                if (file.CanSeek)
                    //Reset the position of PDF document stream to be printed
                    file.Position = 0;
                //Create a new file in the Personal folder with the given name
                string createdFilePath = System.IO.Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "PrintSampleFile");
                //Save the stream to the created file
                using (var dest = System.IO.File.OpenWrite(createdFilePath))
                    file.CopyTo(dest);
                string filePath = createdFilePath;
                PrintManager printManager = (PrintManager)CrossCurrentActivity.Current.Activity.GetSystemService(Context.PrintService);
                PrintDocumentAdapter pda = new CustomPrintDocumentAdapter(filePath);
                //Print with null PrintAttributes
                printManager.Print("PrintSampleFile Job", pda, null);
                file.Dispose();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            return true;
        }*/
    }
}