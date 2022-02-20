#pragma once
#include "Core.h"
struct ApplicationDetails {
	int MajorEngineVersion;
	int MinorEngineVersion;

	const char* EngineName;

};




class Application
{
public:
	Application();
	virtual ~Application();

	virtual ApplicationDetails SetApplicationDetails() {
		return ApplicationDetails{};
	}

	void Run();


	ApplicationDetails m_ApplicationDetails;

	
	Application* CreateApplication();

};
