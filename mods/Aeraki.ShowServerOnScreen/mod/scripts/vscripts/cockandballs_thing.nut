global function ServerDisplayInit

void function ServerDisplayInit()
{
#if UI
    AddConnectToServerCallback(OnConnect)
 #endif
}

#if UI
void function OnConnect( ServerInfo server )
{

  thread OnConnect_Internal( server )

}

void function OnConnect_Internal( ServerInfo server )
{

  while( uiGlobal.isLobby || uiGlobal.loadedLevel == "" )
    WaitFrame()

  SetConVarString( "lastServerName", server.name )

}
#endif