# <p align="center">  Animal-visit-reporting

Open-source tool developed to manage the visits of animals on water trough locations in grazing fields equiped with UHF-identification tags. The software allows a remote-view on the animals coming to the water trough, and can generate reports of said visits on a known period of time.

This digital solution for livestock remote monitoring is composed of two main parts :
  -  The hardware collects the Ultra High Frequency (UHF) data directly onfield through the antenna. [The hardware specifications and caracteristics](hardware/hardware_specs)
  -  The software processes and analyzes the UHF data. [The software specifications and caracteristics](software/software_specs)

This livestock remote monitoring digital solution was created in the context of the OpenAgri project, funded by the EU’s Horizon Europe research and innovation programme (Grant Agreement no. 101134083).

#  About

This algorithm builds a list of visits for a given animal (identified by its RFID UHF ID) based on a list of detections.
It uses two parameters to aggregate detections:
- Intra-visit delay: expressed in seconds, this parameter qualify the max delay between detections so they could be aggregated in the same visit.
- Minimum visit duration: expressed in seconds, this parameter allows to discard too short visits.

Considered readings can be filtered using the following parameters:
- target: targeted animal’s UHF ID
- readers: consider only readings from the given readers
- antennas: consider only readings from the given antennas from the readers provided in parameter “readers”
- start/end times: temporal frame of considered readings 

The algorithm has been created as a PostgreSQL function. It relies on a table containing raw detections and produces results in another table.
