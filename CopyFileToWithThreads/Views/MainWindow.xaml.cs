using CopyFileToWithThreads.ViewModels;
using Microsoft.Win32;
using Microsoft.WindowsAPICodePack.Dialogs;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
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
using System.Windows.Threading;

namespace CopyFileToWithThreads.Views
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainViewModel MainViewModel { get; set; }
        public MainWindow()
        {
            try
            {
                InitializeComponent();
                MainViewModel = new MainViewModel(this);
                DataContext = MainViewModel;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Exception: ", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

      
    }
}
