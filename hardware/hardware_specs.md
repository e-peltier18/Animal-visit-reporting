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
<u>Power consumption:</u> 6 Wh (stand-by mode), 18 Wh (UHF reading)<br><br>
## Bill of Materials (BOM)<br>
| Component | References | Supplier | Link | Qt per Case |
|-----------|------------|----------|------|-------------|
|Waterproof hard case (35x30x15)|B07NDGR28P|Amazon|https://amzn.eu/d/35ub9jj|1|
|BeagleBoard Black|102110420|Farnell|https://fr.farnell.com/seeed-studio/102110420/carte-beaglebone-black/dp/3520081?st=beagleboard|1|
|Bluetooth module with integrated antenna|RN42XVP-I/RM|Farnell|https://fr.farnell.com/microchip/rn42xvp-i-rm/module-bt-802-15-1-xv-cl2-pcb/dp/2321374?st=bluetooth%20module%20rn|1|
|DS3231 RTC module|B076GP5B94|Amazon|https://amzn.eu/d/01zgO1g|1|
|Flat Cat 6 RJ45 cable|B0DYTQGGR4|Amazon|https://amzn.eu/d/2MMRjdw|3|
|LED pack|B07RTWQSJB|Amazon|https://amzn.eu/d/alap5uP|3|
|IP67 LED holder / mount|A1048OAAAC|Farnell|https://fr.farnell.com/arcolectric/a10480a/support-led-scelle/dp/232324?ost=232324|3|
|USB 2.0 to Ethernet adapter|B00M77HLII|Amazon|https://amzn.eu/d/8mH5Unt|1|
|IP68 Ethernet bulkhead connector / port|B0C812L8T6|Amazon|https://amzn.eu/d/9piP0xc|1|
|24V to 5V DC/DC voltage regulator|B0BFFDSNRC|Amazon|https://amzn.eu/d/4g2QgrU|1|
|AC/DC Power supply unit (PSU)|B09FDZ897P|Amazon|https://amzn.eu/d/52uYn1g|1|
|Midspan Injector (R700 compatible)|B0D5D9GHTC|Amazon|https://amzn.eu/d/3YbjNPI|1|
|5.5/2.1mm DC power jack (solder type)|B07VQ6VFDN|Amazon|https://amzn.eu/d/eU5gVjU|1|
|GX16-2 connector (2-pin)|B07L682MMC|Amazon|https://amzn.eu/d/2F6ZMPc|1|
|GX16-4 connector (4-pin)|B07VTKJCPZ|Amazon|https://amzn.eu/d/6mr5g59|2|
|2-channel relay module|B07GXC4FGP|Amazon|https://amzn.eu/d/foLyfYs|1|
|Occupancy sensor / Presence sensor (12-24V)|B0823YJS5G|Amazon|https://amzn.eu/d/7I1P4qI|2|
|4-core cable (for sensors)|B0CWLR33WS|Amazon|https://amzn.eu/d/276glVN|1|
|Phoenix Contact MC 1.5/ 9-ST-3.81|B071R5W5Q9|Amazon|https://amzn.eu/d/6LVo7Ui|1|
|Ideal diode|B09D7RYCV9|Amazon|https://amzn.eu/d/1xx0ulq|1|
|Terminal block|B0C3HDVJC3|Amazon|https://amzn.eu/d/hYma3dR|1|
|USB QC + PD module (Quick Charge + Power Delivery)|B07R8JV1LX|Amazon|https://amzn.eu/d/1Ii0rrP|1|