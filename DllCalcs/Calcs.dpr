library Calcs;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  System.SysUtils,
  System.Classes;

{$R *.res}

function numberOfMultiplies(limit, factor: Integer): Integer; stdcall;
  var
    count:Integer;
    I:Integer;
begin
    count := 0;
    for I := 0 to limit do
      begin
        if I mod Factor = 0 then
          count := 1;
      end;
    Result := count;
end;

exports
  numberOfMultiplies name 'getMultiplies';

begin
end.
