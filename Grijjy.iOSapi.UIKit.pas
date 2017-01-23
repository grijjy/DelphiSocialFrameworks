unit Grijjy.iOSapi.UIKit;

{ Missing and incomplete declarations from iOSapi.UIKit }

interface

uses
  Macapi.ObjectiveC,
  iOSapi.UIKit,
  iOSapi.CocoaTypes,
  iOSapi.Foundation,
  iOSapi.CoreGraphics;

function UIApplicationOpenURLOptionsAnnotationKey: NSString;
function UIApplicationOpenURLOptionsSourceApplicationKey: NSString;

implementation

uses
  System.SysUtils;

const
  UIKitFwk: String = '/System/Library/Frameworks/UIKit.framework/UIKit';

function UIApplicationOpenURLOptionsAnnotationKey: NSString;
begin
  if (TOSVersion.Check(9, 0)) then
    Result := CocoaNSStringConst(UIKitFwk, 'UIApplicationOpenURLOptionsAnnotationKey')
  else
    Result := nil;
end;

function UIApplicationOpenURLOptionsSourceApplicationKey: NSString;
begin
  if (TOSVersion.Check(9, 0)) then
    Result := CocoaNSStringConst(UIKitFwk, 'UIApplicationOpenURLOptionsSourceApplicationKey')
  else
    Result := nil;
end;

end.
