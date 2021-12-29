using CopyFileToWithThreads.Command;
using CopyFileToWithThreads.Views;
using Microsoft.WindowsAPICodePack.Dialogs;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CopyFileToWithThreads.ViewModels
{
    public class MainViewModel
    {
        private MainWindow _mainWindow;

        OpenFileDialog _openFile;
        Thread _thread;

        public RelayCommand FromFileCommand { get; set; }
        public RelayCommand ToFileCommand { get; set; }
        public RelayCommand CopyFileCommand { get; set; }
        public RelayCommand SuspendCommand { get; set; }
        public RelayCommand ResumeCommand { get; set; }
        public MainViewModel(MainWindow window)
        {
            _mainWindow = window;

            FromFileCommand = new RelayCommand(act => BtnFromFile_Click());
            ToFileCommand = new RelayCommand(act => BtnToFile_Click());
            CopyFileCommand = new RelayCommand(act => BtnCopyFile_Click());
            SuspendCommand = new RelayCommand(act => BtnSuspend_Click());
            ResumeCommand = new RelayCommand(act => BtnResume_Click());
        }

        private void BtnFromFile_Click()
        {
            _openFile = new OpenFileDialog();
            _openFile.Filter = "Text documents (.txt)|*.txt";
            var result = _openFile.ShowDialog();

            if (result == DialogResult.OK)
            {
                _mainWindow.txbFromFile.Text = _openFile.FileName;
            }
        }
        private void BtnToFile_Click()
        {
            CommonOpenFileDialog dialog = new CommonOpenFileDialog();
            dialog.IsFolderPicker = true;

            if (dialog.ShowDialog() == CommonFileDialogResult.Ok)
            {
                _mainWindow.txbToFile.Text = dialog.FileName;
            }

        }
        private void BtnCopyFile_Click()
        {
            if (string.IsNullOrWhiteSpace(_mainWindow.txbFromFile.Text)
                || string.IsNullOrWhiteSpace(_mainWindow.txbToFile.Text))
            {
                MessageBox.Show("Do not leave the file path blank!");
            }
            else
            {
                _thread = new Thread(CopyFileMethod);
                _thread.Start();
            }
        }
        private void CopyFileMethod()
        {
            string fromFile = "";
            string toFile = "";
            _mainWindow.Dispatcher.Invoke(new Action(() =>
            {
                toFile = _mainWindow.txbToFile.Text;
                fromFile = _mainWindow.txbFromFile.Text;
            }));

            string[] array = fromFile.Split('\\');
            string filename = array[array.Length - 1];
            string destFile = toFile + $@"\{filename}";


            if (!string.IsNullOrEmpty(fromFile))
            {
                var lines = File.ReadAllLines(fromFile);
                if (!string.IsNullOrEmpty(destFile))
                {
                    for (int i = 0; i < lines.Length; i++)
                    {
                        _mainWindow.pbLoading.Dispatcher.Invoke(new Action(() => _mainWindow.pbLoading.Value += (100 / lines.Length)));
                        _mainWindow.textProgress.Dispatcher.Invoke(new Action(() => _mainWindow.textProgress.Text = $"{_mainWindow.pbLoading.Value} %"));
                        File.AppendAllText(destFile, lines[i]);
                        File.AppendAllText(destFile, "\n");
                        Thread.Sleep(500);
                    }
                    _mainWindow.pbLoading.Dispatcher.Invoke(new Action(() => _mainWindow.pbLoading.Value = 100));
                    _mainWindow.textProgress.Dispatcher.Invoke(new Action(() => _mainWindow.textProgress.Text = "100 %"));

                }
            }
            MessageBox.Show("Success!");
            _mainWindow.Dispatcher.Invoke(new Action(() =>
            {
                _mainWindow.pbLoading.Value = 0;
                _mainWindow.txbFromFile.Text = "";
                _mainWindow.txbToFile.Text = "";
                _mainWindow.textProgress.Text = "0 %";
            }));


        }
        private void BtnSuspend_Click() => _thread?.Suspend();

        private void BtnResume_Click() => _thread?.Resume();

    }
}
