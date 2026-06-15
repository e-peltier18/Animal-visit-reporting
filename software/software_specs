# Software specifications
Two modes are at disposal for the software part :
  -  Cloud mode, when the hardware is connected to an Internet network and usable on a computer
  -  Edge mode, when no connection is available and the hardware is to use via Bluetooth connection with a smartphone

# <p align="center"> OpenAgri online software (Cloud mode)
Software technologies
Web:	●	PostgreSQL database
●	PHP framework Laravel
Mobile App:	●	Flutter
●	ISAR database
UHF case:	●	JDK for embedded development
●	SQL lite

# <p align="center">	OpenAgri mobile App (Edge mode)
Software Title: OpenAgri mobile app 
Short Description: Mobile application to collect UHF Data from Page Up UHF cases and to compute locally visits and build daily visits reports. 
Keywords/Tags: RFID UHF, livestock electronic identification, visits to areas of interest 
Author(s)/Maintainer(s): F. Gimbert 
Organization: Page Up 
Contact Email: fgimbert@pageup.fr 
Repository URL: (add registry url for docker images if exist) 
Version: 1.0.0 
Programming Language(s): Flutter 
Operating System(s): Android 10+
System architecture: The mobile application is a standalone app (no backoffice nor web site needed). To collect data, it must connect, via bluetooth, to a PageUp UHF box.
Licensing and Usage Rights: Open source license Apache 2.0 ; Attribution requirements: Maintain copyright headers ; Commercial use permissions: Allowed

# <p align="center">	On-field deployment
With regards to the installation of the hardware to the test location, each pasture has only one watering point available for a single herd within the same parcel. The area around the watering point is covered by the electromagnetic field of the RFID antenna. 
The RFID UHF reader has four antenna ports. A single antenna is sufficient minimum to cover the watering zone. Two masts have been welded for the solar panel and the positioning of the RFID antenna. An important aspect is that the monitoring system must be robust enough to withstand the various movements between pastures and draw up arrangements for protecting the device to prevent any damage by animals during grazing periods. 
This was achieved by modifying an old cattle weighing cage entirely for our RFID system (welding masts for the solar panel and RFID antenna, doors that can be padlocked to protect the system against theft). As the holding cages can be hitched to a tractor, the system is easy to move from one grazing plot to another.
The cage has the advantage of being lockable and protecting the electronic equipment (UHF case, solar battery, router) against harsh weather conditions, theft or potential damages caused by animals

The hardware devices are under continuous testing and validation in the operational environment where the pilot will be realised. Of particular importance are the functioning of the battery and solar panel. The devices have been tested for the cloud mode of operation, evaluating the performance of various energy reduction mechanisms.
For example, the RFID data logger is in “sleep mode” (consuming minimal battery energy) and connected with a motion detection sensor. Upon the detection of motion close to the trough (a cow is approaching) a “wake up” signal initiates the RFID detection and data logging operations. 
