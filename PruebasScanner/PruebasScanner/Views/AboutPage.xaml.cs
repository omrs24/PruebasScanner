using Plugin.XamarinFormsSaveOpenPDFPackage;
using PruebasScanner.Services;
using System;
using System.ComponentModel;
using System.IO;
using System.Net.Http;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using ZXing.Mobile;
using ImageFromXamarinUI;
using PruebasScanner.Models;
using System.Threading;
using System.Net.Http.Headers;
using PruebasScanner.HttpHandlers;
using PruebasScanner.ViewModels;
using Newtonsoft.Json;

namespace PruebasScanner.Views
{
    public partial class AboutPage : ContentPage
    {
        public string token;
        public AboutPage()
        {
            InitializeComponent();

            this.Title = "";

            token = Application.Current.Properties["token"].ToString();

            //MessagingCenter.Subscribe<LoginViewModel, Form>(this, "UserLoggedIn", (sender, user) =>
            //{
            //    Console.WriteLine($"Token: {user}");
            //    token = user.token;
            //});
        }


        protected override void OnAppearing()
        {
            base.OnAppearing();
            MessagingCenter.Send(this, "allowLandScape");
        }

        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            MessagingCenter.Send(this, "quitLandScape");
        }

        async void btnScan_Clicked(object sender, EventArgs e)
        {
            try
            {
                var scanner = new MobileBarcodeScanner();
                scanner.TopText = "Aleja la camara a 15 cm de distancia\ndel código QR.";
                scanner.BottomText = "El codigo se escaneará solo.";
                scanner.FlashButtonText = "Linterna";
                scanner.AutoFocus();

                //This will start scanning
                ZXing.Result result = await scanner.Scan();

                //Show the result returned.
                HandleResult(result);
            }
            catch (Exception ex)
            {
                await DisplayAlert("Advertencia", "Ha ocurrido un error en el escaneo" + ex.Message.ToString(), "Cerrar");
            }
        }

        void HandleResult(ZXing.Result result)
        {
            var msg = "No se completo el escaneo";
            if (result != null)
            {
                //Obtener valor escaneado

                int id = Convert.ToInt32(result.ToString());

                getData(id);

                //string[] splResult = new string[3];
                //splResult = result.Text.Split('|');

                //#region "Validacion Correos Validos"
                //Correos correo = new Correos();
                ////var listItem = correo.listCorreos.Find(x => x.ToString() == splResult[1].ToLower());

                //var listMarca = correo.listCorreosMarca.Find(x => x.ToString() == splResult[1].ToLower());

                //if (listMarca == null)
                //{
                //    lblTitle.Text = "Comida Reaseguradores 2024";
                //}
                //else
                //{
                //    lblTitle.Text = $"*** Comida Reaseguradores 2024 ***";
                //}
                ///*if (listItem == null)
                //{
                //    DisplayAlert("Error", $"Correo no encontrado en la lista de invitaciones { splResult[1].ToLower() } .", "Ok");
                //    return;
                //}
                //else
                //{
                    
                //}*/
                //#endregion

                //#region "Validacion Nombres Cortos"

                //EmpresasCorto emp = new EmpresasCorto();

                ///*if (emp.empresas.ContainsKey(splResult[2].ToUpper()))
                //{
                //    lblCompany.Text = emp.empresas[splResult[2].ToUpper()];
                //    lblCompany.FontSize = 25;
                //}
                //else
                //{*/
                //    if (splResult[2].Length > 40)
                //    {
                //        lblCompany.Text = splResult[2].Substring(0, 40).ToUpper();
                //        lblCompany.FontSize = 20;
                //    }
                //    else
                //    {
                //        lblCompany.Text = splResult[2].ToUpper();
                //        lblCompany.FontSize = 25;
                //    }
                ////}

                //#endregion

                ////lenamos el cuadro de busqueda con el codigo escaneado
                //lblName.Text = splResult[0].ToUpper();
                //if (splResult[0].Length > 30)
                //{
                //    lblName.FontSize = 25;
                //}
                //else
                //{
                //    lblName.FontSize = 30;
                //}
                //lblEmail.Text = splResult[1].ToUpper();                    

            }
            else
            {
                DisplayAlert("", msg, "Ok");
            }
        }

        async void btnPrinter_Clicked(object sender, EventArgs e)
        {

            /*btnScan.IsVisible = false;
            btnPrinter.IsVisible = false;*/

            //  ocultamos los botones que no son necesarios en la captura 
            /*btnPrinter.IsVisible = false;
            btnScan.IsVisible = false;*/

            // fora mas avanzada de hacerlo
            try
            {
                //await CaptureScreenshot();
                await GenerateBlankTag();
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error al imprimir la etiqueta", $"Intente mas tarde. \n { ex.ToString() }", "Ok");
            }
            

            /*btnScan.IsVisible = true;
            btnPrinter.IsVisible = true;*/
            /*if (Device.RuntimePlatform == Device.iOS)
            {
                //code for iOS (works)
                var printInfo = UIPrintInfo.PrintInfo;
                printInfo.JobName = "myJobName";
                printInfo.OutputType = UIPrintInfoOutputType.General;

                var printer = UIPrintInteractionController.SharedPrintController;
                printer.PrintInfo = printInfo;
                printer.PrintingItem = NSData.FromFile("imagePath");
                printer.ShowsPageRange = true;

                printer.Present(true, (handler, completed, error) =>
                {
                    if (!completed && error != null)
                    {
                        Console.WriteLine(error.LocalizedDescription);
                        }
                });

                printInfo.Dispose();
            }
            else
            {
                //code for Android (does not work)
                //DependencyService.Get<IPrint>().Print(UseStreamReader(image));
            }/


            //   como es asincrona meterlo al task
            //  Los volvemos a mostrar
            /*btnPrinter.IsVisible = true;
            btnScan.IsVisible = true;*/
        }



        async Task CaptureScreenshot()
        {
            System.IO.Stream stream = null;
            if (Screenshot.IsCaptureSupported)
            {
                var screenshot = await pancakeCard.CaptureImageAsync();
                string nombreFormateado = null, correoFormateado = null;
                if (CrossXamarinFormsSaveOpenPDFPackage.IsSupported)
                {
                    using(var memoryStream = new MemoryStream())
                    {                        
                        await screenshot.CopyToAsync(memoryStream);

                        nombreFormateado = lblName.Text.Trim().ToLower();
                        correoFormateado = lblEmail.Text.ToLower();


                        await CrossXamarinFormsSaveOpenPDFPackage.Current.SaveAndView(nombreFormateado + ".jpg", "application/jpg", memoryStream, PDFOpenContext.ChooseApp);
                    }

                    string fileName = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "RegistroPersonasEcaneadas.txt");
                    File.AppendAllText(fileName, correoFormateado + "\n");
                }

            }

        }

        async Task GenerateTagsList() 
        {                        
            if (Screenshot.IsCaptureSupported)
            {
                Correos correo = new Correos();
                string nombresRepetidos = null;
                foreach (var item in correo.mailTagsV2)
                {
                    //Update name and company name with dictionary info
                    lblName.Text = item.Key.Trim().ToString();
                    lblCompany.Text = item.Value.Trim().ToString();

                    string nombreFormateado = null, correoFormateado = null;
                    // Capture tag screenshot
                    var screenshot = await pancakeCard.CaptureImageAsync();

                    if (CrossXamarinFormsSaveOpenPDFPackage.IsSupported)
                    {
                        using (var memoryStream = new MemoryStream())
                        {
                            await screenshot.CopyToAsync(memoryStream);

                            nombreFormateado = item.Key.Trim().ToLower();

                            // save the file into local storage, folder must be created in order to save images
                            var newFile = Path.Combine("/storage/emulated/0/Download/Asistente/", nombreFormateado + ".jpg");
                            var bytes = memoryStream.ToArray();

                            if (!File.Exists(newFile))
                                File.WriteAllBytes(newFile, bytes);
                            else
                                nombresRepetidos += nombreFormateado + " \n";

                        }
                    }
                    //await Task.Delay(1000);
                }

                await DisplayAlert("Repetidos", nombresRepetidos, "Ok");
            }
        }

        async Task GenerateBlankTag()
        {
            if (Screenshot.IsCaptureSupported)
            {
                Correos correo = new Correos();
                string nombresRepetidos = null;

                string nombreFormateado = null, correoFormateado = null;
                // Capture tag screenshot
                var screenshot = await pancakeCard.CaptureImageAsync();

                using (var memoryStream = new MemoryStream())
                {
                    await screenshot.CopyToAsync(memoryStream);

                    nombreFormateado = "blank_" + DateTime.Now.ToString("dd/mm/yyyy HH:mm:ss").Replace("/","").Replace(":","").Replace(" ", "_");

                    // save the file into local storage, folder must be created in order to save images
                    var newFile = Path.Combine("/storage/emulated/0/Download/Asistente/", nombreFormateado + ".jpg");
                    var bytes = memoryStream.ToArray();

                    if (!File.Exists(newFile))
                    {
                        File.WriteAllBytes(newFile, bytes);
                        await DisplayAlert("Correcto", "Etiqueta creada correctamente", "OK");
                    }
                    else
                    {
                        await DisplayAlert("Error", "Archivo ya existe", "OK");
                    }


                }
            }
        }

        private async void btnCsvFile_Clicked(object sender, EventArgs e)
        {
            try
            {
                string fileName = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "RegistroPersonasEcaneadas.txt");

                if (!File.Exists(fileName))
                {
                    await DisplayAlert("No existe el archivo", "El archivo de registro no existe", "Ok");
                    return;
                }

                string text = File.ReadAllText(fileName);

                await DisplayAlert("Contenido archivo", text, "Ok");

                await Share.RequestAsync(new ShareFileRequest
                {
                    Title = "Registro de asistentes ",
                    File = new ShareFile(fileName),
                }); ;
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error al visualizar y compartir el archivo", $"Intente mas tarde. \n { ex.ToString() }", "Ok");
            }
            

        }

        public byte[] ToByteArray(Stream stream)
        {
            stream.Position = 0;
            byte[] buffer = new byte[stream.Length];
            for (int totalBytesCopied = 0; totalBytesCopied < stream.Length;)
                totalBytesCopied += stream.Read(buffer, totalBytesCopied, Convert.ToInt32(stream.Length) - totalBytesCopied);
            return buffer;
        }

        public byte[] UseBinaryReader(Stream stream)
        {
            byte[] bytes;
            using (var binaryReader = new BinaryReader(stream))
            {
                bytes = binaryReader.ReadBytes((int)stream.Length);
            }
            return bytes;
        }

        public byte[] UseStreamReader(Stream stream)
        {
            byte[] bytes;
            using (var reader = new StreamReader(stream))
            {
                bytes = System.Text.Encoding.UTF8.GetBytes(reader.ReadToEnd());
            }
            return bytes;
        }

        private async void btnDeleteFile_Clicked(object sender, EventArgs e)
        {
            try
            {
                var result = await DisplayActionSheet("¿Desea borrar el contenido del archivo?", "", "", "Borrar contenido", "Regresar");

                if (result == "Borrar contenido")
                {
                    string fileName = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "RegistroPersonasEcaneadas.txt");
                    File.Delete(fileName);
                    await DisplayAlert("", "Se ha borrado el contenido", "Ok");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error al borrar el archivo", $"Intente mas tarde. \n { ex.ToString() }", "Ok");
            }            
        }

        private async void getData(int id)
        {
            try
            {
                //var handler = new CustomHttpClientHandler();
                using (HttpClient client = new HttpClient())
                {
                    var authHeader = new AuthenticationHeaderValue("Bearer", token);

                    client.DefaultRequestHeaders.Authorization = authHeader;
                    client.DefaultRequestHeaders.TryAddWithoutValidation("Content-Type", "application/json");
                    client.DefaultRequestHeaders.TryAddWithoutValidation("Accept", "application/json");
                    var response = client.GetAsync("https://comida-reaseguradores.som.us/SomusEventos/api/forms/" + id.ToString()).Result;

                    //string content = response.Content.ReadAsStringAsync().Result;
                    string content2;
                    if (!response.IsSuccessStatusCode)
                    {
                        content2 = await response.Content.ReadAsStringAsync();
                        Form user = JsonConvert.DeserializeObject<Form>(content2);

                        await DisplayAlert("error", user.name, "ok");
                        return;
                    }

                    content2 = await response.Content.ReadAsStringAsync();

                    //var Items = JsonConvert.DeserializeObject<Mensajes>(content2);
                    await DisplayAlert("Resultado", content2, "Ok");
                    //Debug.WriteLine(content);

                }
            }
            catch (Exception ex)
            {

                await DisplayAlert("error", $"Intente mas tarde. \n { ex.ToString() }", "ok");
            }
            
        }

    }
}