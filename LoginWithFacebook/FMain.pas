unit FMain;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  System.Messaging,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  Grijjy.Social;

type
  TFormMain = class(TForm)
    ButtonLoginFacebook: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ButtonLoginFacebookClick(Sender: TObject);
  private
    { Private declarations }
    Social: TgoSocial;
    procedure SocialLoginMessageListener(const Sender: TObject;
      const M: TMessage);
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

uses
  Grijjy.FBSDK.Types;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  Social := TgoSocial.Create;
  TMessageManager.DefaultManager.SubscribeToMessage(TgoSocialLoginMessage,
    SocialLoginMessageListener);
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  TMessageManager.DefaultManager.Unsubscribe(TgoSocialLoginMessage,
    SocialLoginMessageListener);
  Social.Free;
end;

procedure TFormMain.SocialLoginMessageListener(const Sender: TObject;
  const M: TMessage);
var
  SocialLoginMessage: TgoSocialLoginMessage;
begin
  SocialLoginMessage := M as TgoSocialLoginMessage;
  if SocialLoginMessage.Value.Result then
    ShowMessage(
      'Success Id = ' + SocialLoginMessage.Value.Id +
      ' AccessToken = ' + SocialLoginMessage.Value.AccessToken)
  else
    ShowMessage('Failed');
end;

procedure TFormMain.ButtonLoginFacebookClick(Sender: TObject);
begin
  Social.Login(TgoSocialNetwork.Facebook);
end;

end.
