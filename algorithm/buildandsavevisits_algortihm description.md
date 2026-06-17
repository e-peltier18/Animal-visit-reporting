#   <p align="center">Build and save visits - Algorithm description<br>
This algorithm builds a list of visits for a given animal (identified by its RFID UHF-tag) based on a list of detections.<br>
It uses two parameters to aggregate detections:<br>
    - <u>Intra-visit delay:</u> expressed in seconds, this parameter qualify the max delay between detections so they could be aggregated in the same visit.<br>
    - <u>Minimum visit duration:</u> expressed in seconds, this parameter allows to discard too short visits.<br><br>

Considered readings can be filtered using the following parameters:<br>
    - <u>target:</u> targeted animal’s UHF ID number<br>
    - <u>readers:</u> filter readings collected by the selected smartcase readers<br>
    - <u>antennas:</u> filter readings collected by the selected antennas from the readers provided in parameter “readers”<br>
    - <u>start/end times:</u> temporal frame of considered readings <br><br>
    
The algorithm has been created as a PostgreSQL function. It relies on a table containing raw detections and produces results in another table.