----------------------------------------------------------
Edinburgh Centre for Robotics Business Card Instructions:
----------------------------------------------------------

1. Insert your card information (Name, email, number, etc) in the business_card.tex file 

2. You can change the *.tex file name as long as there is only 1 *.tex file in the current directory

3. IF you want to add a QR code to your page on the ECR website:

	3a. Use an online QR converter and create a QR code of your ECR profile 
	(i.e. shorturl.at/adluN)

	3b. Download a JPG or PNG of your QR code

	3c. Because the image needs to be of type .eps, use an online JPG/PNG to EPS converter (i.e. https://image.online-convert.com/convert-to-eps)

	3d. Download the eps file and rename it too qrcode.eps
	
	3e. Add this file to the current directory
	

4. ELSE (if you don't want a QR code)- Open ecr_card.cls and comment out line 70:
	\put(65,3){\includegraphics[height=0.669291in]{qrcode.eps}}

5. Open a terminal application; Go to the current directory; and type: make

6. Open the resulting pdf to see your business card! :)

7. If you want to change the size/placement of the qr code, adjust line 70 in the ecr_card.cls file

	\put(62.5,4){\includegraphics[height=0.669291in]{qrcode.eps}}

	- to adjust the size, adjust the height variable
	- to adjust the placement, adjust the numeric values (62.5,4)

	**********************
	Keep in mind: The right edge of the QR code should be in line with the right edge of
	the EPS logo and the bottom should be in line with the bottom of the text, otherwise
	it may get cut off.
	**********************

	To see the changes, repeat steps 5 and 6.

Enjoy your beautiful business card ;)


