{|----------------------------------------------------------------------
 | Unit:        DelforEng
 |
 | Author:      Egbert van Nes
 |
 | Description: Interface with delfordll.dll (engine of Delphi formatter)
 |
 | Copyright (c) 2000  Egbert van Nes
 |
 | Redistribution and use in source and binary form, with or without
 | modification, are permitted provided that the following conditions
 | are met:
 |
 | 1. Redistributions of source code must retain the above copyright
 |    notice, this list of conditions and the following disclaimer.
 |    If the source is modified, the complete original and unmodified
 |    source code has to distributed with the modified version.
 |
 | 2. Redistributions in binary form must reproduce the above
 |    copyright notice, these licence conditions and the disclaimer
 |    found at the end of this licence agreement in the documentation
 |    and/or other materials provided with the distribution.
 |
 | 3. Software using this code must contain a visible line of credit.
 |
 | 4. If my code is used in a "for profit" product, you have to donate
 |    to a registered charity in an amount that you feel is fair.
 |    You may use it in as many of your products as you like.
 |    Proof of this donation must be provided to the author of
 |    this software.
 |
 | 5. If you for some reasons don't want to give public credit to the
 |    author, you have to donate three times the price of your software
 |    product, or any other product including this component in any way,
 |    but no more than $500 US and not less than $200 US, or the
 |    equivalent thereof in other currency, to a registered charity.
 |    You have to do this for every of your products, which uses this
 |    code separately.
 |    Proof of this donations must be provided to the author of
 |    this software.
 |
 | DISCLAIMER:
 |
 | THIS SOFTWARE IS PROVIDED BY THE AUTHOR 'AS IS'.
 |
 | ALL EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 | THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 | PARTICULAR PURPOSE ARE DISCLAIMED.
 |
 | IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 | INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 | (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 | OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 | INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 | WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 | NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 | THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 |
 |---------------------------------------------------------------------- |----------------------------------------------------------------------}

unit DelforEng2;

interface

uses Classes, DelForTypes, OObjects;
const
  Delfordll = 'Delfordll.dll';
procedure Formatter_Destroy; external Delfordll ;
procedure Formatter_LoadFromFile(AFileName: PChar); external Delfordll ;
procedure Formatter_LoadFromList(aList: TStringList); external Delfordll ;
function Formatter_Parse(ASettings: PSettings; SizeOfSettings: Integer): Boolean;
external Delfordll ;
  {this is the main function: it improves the block of text which
  should be entered by LoadFromFile, LoadFromList or SetTextStr
  Read it out with GetTextStr or WriteToFile}
procedure Formatter_clear; external Delfordll ;
procedure Formatter_writeToFile(AFileName: PChar); external Delfordll ;
function Formatter_GetTextStr: PChar; external Delfordll ;
procedure Formatter_SetTextStr(aText: PChar); external Delfordll ;
procedure Formatter_SetOnProgress(aOnProgress: TProgressEvent); external Delfordll ;
procedure Formatter_LoadCapFile(aCapFile: PChar); external Delfordll ;
procedure Formatter_SaveCapFile(aCapFile: PChar); external Delfordll ;
function Formatter_Version: Integer; external Delfordll ;
  {if the version number is changed the dll is not
  (backward) compatible anymore}

implementation

end.