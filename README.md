#Temperature Sensor Graph Thing

Simple Rails API and graph for capturing data from Mark's Dip Cortex development board.

To Do:

Change the webpage to display post time across the x axis and temperature on the y. Plus also post the other data altitude and pressure and allow these two be graphed. 

Within the mbed code change the micrcontroller to post on a timer event. Once every 10 seconds it writs the temperature into an data structure. Another process should then read this data structure and write the values to the website if there is a valid internet connection. Each of these should be tied to flashing an LED. 
