<div align="center">
  <p>
    <a href="https://horizon-openagri.eu/" target="_blank">
      <img width="80%" src="https://horizon-openagri.eu/wp-content/uploads/2025/01/Logo-Open-Agri-blue-1-1.png"></a>
      </p>
</div>

# <p align="center">  Animal visit reporting</p>
This agricultural digital solution aims to track and collect information about the frequentation of areas of interest based on the RFID tags of livestock.<br>
More specifically, it is an open-source tool developed to manage the visits of beef cattles on water trough locations in grazing fields. The animals are identified with individual RFID UHF-tags, allowing to collect individual information of frequentation for each animal.<br>
Two main parts compose this livestock digital solution : 
  1. The [hardware](hardware/hardware_specs.md)<br>
  The smartcase is composed of electronics as illustrated thereafter:<br>
  ![Electronic components and connections figure](hardware/Valise_Descriptif.png)<br>
  For further information and recommendation regarding this part, please find more details in the corresponding repository.<br><br>
  2. The [software](software/software_specs.md)<br>
  The software allows a remote-view on the animals coming to the water trough, and can generate reports of said visits on a chosen period of time.<br>
  You will find details in the dedicated repository, regarding conditions of use and license. Furthermore the source code of the visit reporting algorithm is available in the repository [algorithm](algorithm/buildandsavevisits.sql). It describes the SQL function created to convert the RFID data collected into a comprehensible information for the user.<br>

This livestock remote monitoring digital solution was created in the context of the OpenAgri project, funded by the EU’s Horizon Europe research and innovation programme (Grant Agreement no. 101134083).<br>

