using Newtonsoft.Json;
using PruebasScanner.Models;
using PruebasScanner.Views;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using Xamarin.Forms;

namespace PruebasScanner.ViewModels
{
    public class LoginViewModel : BaseViewModel
    {
        public Action DisplayInvalidLoginPrompt;
        public Action DisplayToken;
        public event PropertyChangedEventHandler PropertyChanged = delegate { };
        private string email;
        public string Email
        {
            get { return email; }
            set
            {
                email = value;
                PropertyChanged(this, new PropertyChangedEventArgs("txtCorreo"));
            }
        }
        private string password;
        public string Password
        {
            get { return password; }
            set
            {
                password = value;
                PropertyChanged(this, new PropertyChangedEventArgs("txtPass"));
            }
        }
        public Command LoginCommand { protected set; get; }
        public LoginViewModel()
        {
            LoginCommand = new Command(OnSubmit);
        }
        public async void OnSubmit()
        {

            try
            {
                string token;
                //var handler = new CustomHttpClientHandler();
                using (HttpClient client = new HttpClient())
                {
                    //var authHeader = new AuthenticationHeaderValue("Bearer", token);
                    //client.DefaultRequestHeaders.Authorization = authHeader;
                    client.DefaultRequestHeaders.TryAddWithoutValidation("Content-Type", "application/json");
                    client.DefaultRequestHeaders.TryAddWithoutValidation("Accept", "application/json");

                    var model = new
                    {
                        email = email,
                        password = password
                    };

                    var json = JsonConvert.SerializeObject(model);
                    var content = new StringContent(json, Encoding.UTF8, "application/json");

                    var result = await client.PostAsync("https://comida-reaseguradores.som.us/SomusEventos/api/login/", content);
                                        
                    string content2;
                    if (result.IsSuccessStatusCode)
                    {
                        content2 = await result.Content.ReadAsStringAsync();
                        var info = JsonConvert.DeserializeObject<Form>(content2);
                        Console.WriteLine(content2);

                        //MessagingCenter.Send(this, "UserLoggedIn", content);

                        Application.Current.Properties["token"] = info.token;

                        await Shell.Current.GoToAsync($"{nameof(AboutPage)}");
                        return;
                    }

                    DisplayInvalidLoginPrompt();
                    //var Items = JsonConvert.DeserializeObject<Mensajes>(content2);


                    //await DisplayAlert("Resultado", content2, "Ok");

                }
            }
            catch (Exception ex)
            {
                DisplayInvalidLoginPrompt();
                //await DisplayAlert("error", $"Intente mas tarde. \n { ex.ToString() }", "ok");
            }

            
        }
    }
}
