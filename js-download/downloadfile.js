var xhr = new ActiveXObject("WinHttp.WinHttpRequest.5.1");
xhr.Open("GET", WScript.Arguments(0), /*async=*/false);
xhr.Send();
WScript.Echo(xhr.ResponseText);