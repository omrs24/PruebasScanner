using System;
using System.Collections.Generic;
using System.Text;
using System.Net.Http;
using System.Security.Cryptography.X509Certificates;
using System.Net.Security;

namespace PruebasScanner.HttpHandlers
{
    class CustomHttpClientHandler : HttpClientHandler
    {
        public CustomHttpClientHandler()
        {
            // Ignorar la validacion del certificado

            ServerCertificateCustomValidationCallback = (sender, cert, chain, sslPolicyErrors) => true;
        }
    }
}
