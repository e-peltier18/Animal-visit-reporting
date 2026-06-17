# <p align="center"> Hardware specifications
<p align="center"><u>UHF RFID smart case</u><br></p>
<br>
Smart device for controlling an RFID reader, pre-processing read data (aggregation per second), recording it and transmitting it to the cloud or to a mobile app via Bluetooth. The equipment is designed for continuous field collection of UHF RFID data for animals identified with UHF RFID tags. It allows monitoring of animal traffic in areas of interest. Watering, feeding. It can be used with all types of livestock (cattle, sheep, goats, pigs).<br><br>
<u>Licensing and Usage Rights:</u> Chosen open hardware license (CERN OHL-S v2.0)<br>
Attribution required<br><br>
<u>Commercial use allowed under share-alike conditions</u><br><br>
<u>Versioning and changelog:</u> v3.5 – stable hardware release<br><br>
<u>Keywords/Tags:</u><br> 
 Ultra-High Frequency ; UHF ; RFID ; Livestock monitoring ; Grazing monitoring ; Beef cattle ; Electronic identification<br><br>
<u>Authors:</u> Florian GIMBERT ; PageUp / Sébastien DUROY ; Idele<br>
<u>Contact Email:</u> fgimbert@pageup.fr / sebastien.duroy@idele.fr<br><br>
This device is designed in the form of a case containing a mini-PC (BeagleBoard), an RFID reader and a real-time clock. The device has indicator LEDs, USB charging ports, motion detector ports, and network ports for data communication. It is controlled and configured using a mobile application that sends commands to the mini PC via Bluetooth pairing.<br>
<u>Devices/ Equipment:</u><br>
●	Beagleboard black with 512 MB RAM, ARM processor<br>
●	Bluetooth module<br>
●	Real Time Clock<br>
●	RFID UHF Impinj reader R420 / R700<br>
●	Mti antennas<br>
●	Smartrac UHF cattle tag<br>
●	Motion sensors<br>
●	Electric station, Ecoflow Delta 2 Max<br>
●	Solar Panel, EcoFlow 220W Bifacial<br>
●	4G/5G router - Huawei B535<br>
●	Linux server Debian 12.7<br><br>

 <u>Operating System:</u><br>
The OS (installed on the Beagleboard) has the following functions: <br>
  - Control of the reader<br>
  - Monitoring of the correct operation of the device<br>
  - Data sending to the database <br>
  - Use of the dedicated commands to communicate with a parameter setting mobile app<br><br>
The communication protocols are defined by the ISO 18000 pool of standards and the recently published ISO 6881 standard for the UHF-signal emission from the tag to the reader.<br><br>
Two types of communication with database are possible :<br>
 - <u>Device to database (cloud mode):</u> use of 4G/5G connection network<br>
 - <u>Device to farmer’s phone (edge mode):</u> use of standard Bluetooth apairing with a smartphone<br><br>
The solution must be supplied with electric power. For use in parcels, we used a rechargeable electric station EcoFlow Delta 2 Max plugged with an EcoFlow 220W Bifacial solar panel.<br>
We assessed the energy consumption metering for the edge device with this system. Current and voltage data logger were used to measure the consumption of complete RFID UHF device (RFID reader, 4G router, mini-pc).<br>
<u>Read range:</u> up to 6 meters<br>
<u>Power consumption:</u> 6 Wh (stand-by mode), 18 Wh (UHF reading)<br>

 
