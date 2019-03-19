var xhr = new ActiveXObject("WinHttp.WinHttpRequest.5.1");
xhr.Open("GET", WScript.Arguments(0), /*async=*/false);
xhr.Send();
stream = new ActiveXObject("ADODB.Stream");
stream.Type = 1;
stream.Open();
stream.Write(xhr.ResponseBody);
stream.SaveToFile("test.md");