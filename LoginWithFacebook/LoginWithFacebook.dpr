program LoginWithFacebook;

uses
  System.StartUpCopy,
  FMX.Forms,
  FMain in 'FMain.pas' {FormMain},
  Grijjy.Bson.IO in '..\..\GrijjyFoundation\Grijjy.Bson.IO.pas',
  Grijjy.Bson in '..\..\GrijjyFoundation\Grijjy.Bson.pas',
  Grijjy.DateUtils in '..\..\GrijjyFoundation\Grijjy.DateUtils.pas',
  Grijjy.SysUtils in '..\..\GrijjyFoundation\Grijjy.SysUtils.pas',
  Grijjy.BinaryCoding in '..\..\GrijjyFoundation\Grijjy.BinaryCoding.pas',
  Grijjy.Social in '..\..\GrijjyFoundation\Grijjy.Social.pas',
  Grijjy.FBSDK.iOS.API in '..\Grijjy.FBSDK.iOS.API.pas',
  Grijjy.FBSDK.iOS in '..\Grijjy.FBSDK.iOS.pas',
  Grijjy.FBSDK in '..\Grijjy.FBSDK.pas',
  Grijjy.FBSDK.Types in '..\Grijjy.FBSDK.Types.pas',
  Grijjy.Accounts.iOS.API in '..\Grijjy.Accounts.iOS.API.pas',
  Grijjy.iOSapi.UIKit in '..\Grijjy.iOSapi.UIKit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
