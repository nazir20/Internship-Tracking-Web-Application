# Internship-Tracking-Web-Application

<b>KOÜ Internship & Workplace Education Tracking System</b> is a web based application designed for Kocaeli University students to apply and follow thier internship 
and workplace education proccess. The app has 4 panels: Admin Panel, Internship Commission Panel, Teacher Panel & Student Panel. This was our first Software Development Assignement. Project is done by(<a href="https://github.com/nazir20">Mohammad Nazir Sharifi</a>,
<a href="https://github.com/AsliBozkurt">Aslı Bozkurt</a>, <a href="https://github.com/kaankasap9">Kaan Kasap</a> & <a href="https://github.com/YigitAgalar">Yiğit Ağalar</a>); 
<hr>

## 🍄Project's Main Purpose & Requirements:

Within the scope of the project, it is expected to develop a system that simplifies the manageability of internship application and evaluation processes.
There should be 4 different roles in the system as student, teacher, commission and administrator. 

- <b>The administrator</b> has control over everything in the system. Adding, deleting, updating, defining sub-roles and can do all the processing. 
- <b>The teacher</b> sees the internship and workplace training files of the students assigned to him and can evaluate them. 
- <b>The commission</b> is a role made up of teachers. He has all the features of the teacher role. Apart from that, following the internship applications, approving/rejecting, deleting, listing (according to the period, according to the company, according to the success status, according to the teacher evaluating, according to the dates, depending on the type of internship etc…), it is a role that can print from lists.
- <b>The student</b> must fill out the internship form in the system and print it out. After this printout is approved by the company where the internship or workplace training will be held, the approved version should be uploaded to the system. Commission related form
After approval, they can follow the internship processes. When the student internship is finished, the internship book should upload the internship documents to the system. The missing or completeness of these uploaded documents should be checked by the system and conveyed to the commission.<br>
  After the commission approves the internship documents and appoints the teacher who will evaluate, the student should see the status of the internship (such as missing document / internship exam / internship date / teacher to evaluate). The student will be invited to the internship by the teacher who will evaluate and their grades will be taken. It will be entered into the system (the number of successful / unsuccessful / missing and accepted days should be written.). Students should be able to follow their status from the system. <br>
  He/she should be able to follow all the documents related to Internship 1, Internship 2 and Vocational Education in Business, the dates he did, in which company he did it, on which dates he did it, which teacher evaluated it, and the missing days. Evaluating professors, which students in which period
Students should be able to see what they evaluate, the students according to their success status, and the situations according to the company.

Instructors who have commissions should be able to make all kinds of listing and reporting for the whole department, as well as their own knowledge. Managers can perform all kinds of operations and reporting in the entire system. There should be a maximum of 3 administrator definitions in the system, 1 of which should be a super administrator (This administrator cannot be deprived of his rights and cannot be deleted.). Users should be able to be added to the system individually and collectively. Bulk adding must be done by the administrator. Each user is added in the student role by default. It can appoint administrators, teachers and commissions. In adding individual or collective users to the system, information such as student number or registration number, name, surname, e-mail, mobile phone number
should be taken. After adding this information, a random password should be generated by the computer for the users. These generated passwords should be transmitted to users via e-mail and mobile phone. At the first login, users should be asked to change their passwords and they should be kept encrypted with MD5 in the database. In addition, the user's faculty, department and
Information such as class must be recorded in the system. <br>
<i>In addition, consider the following criteria in the software:</i>
- When the student writes the internship start date and number of days, the end date should be calculated automatically. (Weekends and public holidays should be taken into account.)
- After the assessing instructor enters the internship grade into the system, it should be kept together with the semester in which the student took the internship course and the grade information.
- If the internship and IME will be held consecutively, it should be checked that there is a gap of at least 1 week. Otherwise, it is not suitable.
- The commission assigned for the IME should select the students who will upload documents. For example, which students will go to IME in the 2022-2023 Fall semester should be chosen by the commission.
- In case of an application and/or an approval/rejection/update in the evaluation, the user should be sent an e-mail and a message.


## 🍀 Techonologies Used:

- <b>HTML, CSS, Js & Bootstrap</b> for Frontend
- <b>PHP Programming Language</b> for Backend 
- <b>Mysql</b> for Database
- <b>Amazon AWS</b>
- <b>PHP Mailer</b> for sending emails
- <b>Chart.js</b> for creating beautiful anaylitcs and charts for users
- <b>fpdf Library</b> for creating dynamic pdfs
- <b>PHPOffice/PHPSpreadsheet</b> for reading and writing different spreadsheets including EXCEL files
- <b>Git & Github</b> for version control


## 🦉Screenshots

- <b>Main Page</b>
![App Main Page](https://github.com/nazir20/Internship-Tracking-Web-Application/blob/main/screenshotss/mainpage.png)
- <b>Student Dashboard</b>
![App Main Page](https://github.com/nazir20/Internship-Tracking-Web-Application/blob/main/screenshotss/student_dashboard.png)
- <b>Student -applying for internship_1 and filling the form</b>
![App Main Page](https://github.com/nazir20/Internship-Tracking-Web-Application/blob/main/screenshotss/apply_internship1.png)
- <b>Student -applied for internship_1, filled the form and printing out the pdf of the form</b>
![App Main Page](https://github.com/nazir20/Internship-Tracking-Web-Application/blob/main/screenshotss/creating_pdf_internship_1.png)
- <b>Student -applying for internship_2</b>
![App Main Page](https://github.com/nazir20/Internship-Tracking-Web-Application/blob/main/screenshotss/apply_intern.png)
- <b>Student -internship tracking </b>
![App Main Page](https://github.com/nazir20/Internship-Tracking-Web-Application/blob/main/screenshotss/staj_takibi.png)
- <b>Student -internship tracking </b>
![App Main Page](https://github.com/nazir20/Internship-Tracking-Web-Application/blob/main/screenshotss/staj_takibi2.png)
- <b>Student; can see the announcements added by commission </b>
![App Main Page](https://github.com/nazir20/Internship-Tracking-Web-Application/blob/main/screenshotss/student_announcements.png)
- <b>Student; can see the announcements added by commission </b>
![App Main Page](https://github.com/nazir20/Internship-Tracking-Web-Application/blob/main/screenshotss/student_announcements2.png)
<hr>


- <b>Commission Dashboard</b>
![App Main Page](https://github.com/nazir20/Internship-Tracking-Web-Application/blob/main/screenshotss/commission_dashboard.png)
- <b>Commission -controlling informations and docs of students applied for internship</b>
![App Main Page](https://github.com/nazir20/Internship-Tracking-Web-Application/blob/main/screenshotss/internship1_student_info.png)
<hr>


- <b>Teacher Dashboard</b>
![App Main Page](https://github.com/nazir20/Internship-Tracking-Web-Application/blob/main/screenshotss/teacher_dashboard.png)
- <b>Teacher -controlling informations and docs of students applied for internship and evaluating it</b>
![App Main Page](https://github.com/nazir20/Internship-Tracking-Web-Application/blob/main/screenshotss/internship_evaluation.png)
<hr>

- <b>Admin Dashboard</b>
![App Main Page](https://github.com/nazir20/Internship-Tracking-Web-Application/blob/main/screenshotss/admin_dashboard.png)
- <b>Admin Dashboard</b>
![App Main Page](https://github.com/nazir20/Internship-Tracking-Web-Application/blob/main/screenshotss/admin_dashboard2.png)


## Run Locally


```bash
  download the repository, put the repository main folder inside the htdocs folder
```


```bash
  unzip the admin.zip, comission.zip, teacher.zip & student.rar
```

```bash
  export the yazgeldb.sql file to XAMPP and run it(the db file is also attached to this repo).
```

Run the Project
```bash
  open your favorite browser and search for localhost/the_name_you_gave_for_project_inside_the_htdocs_folder
```
## 🐼Feedback

If you have any feedback, please reach out to us at nazirsharifi19@gmail.com
