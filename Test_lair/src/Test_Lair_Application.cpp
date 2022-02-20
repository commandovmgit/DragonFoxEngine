
#include "Test_Lair_Application.h"
// -- !!CREATE APPLICATION!! extern function! --
Application* CreateApplication() {
	return new Lair;
}


ApplicationDetails Lair::SetApplicationDetails()
{
	ApplicationDetails m_appDetails;
	m_appDetails.MajorEngineVersion = 0;
	m_appDetails.MinorEngineVersion = 1;
	m_appDetails.EngineName = "DragonFoxEngine";

	return m_appDetails;
}

