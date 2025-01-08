using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace PruebasScanner.Services
{
    public interface IPrintService
    {
        void Print(Stream content);
        /*bool PrintImage(Stream img);

        bool PrintPdfFile(Stream file);*/
    }
}
