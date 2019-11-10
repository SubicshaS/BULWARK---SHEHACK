


import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import java.util.Properties;


public class Mailer {

    public  static void send(String to ,String sub,String msg) {

          final String username = "subicshas@gmail.com";
          final String password = "subilohit";
		 /* google map api  AIzaSyDTKs5yACTs3GJjhLFSwLd6FqUZfMkLlHo  or AIzaSyBcF1uuvp3JJeOTBKg8rLubGTJ9ZR_oslg*/

        Properties prop = new Properties();
  		prop.put("mail.smtp.host", "smtp.gmail.com");
  		prop.put("mail.smtp.port", "587");
  		prop.put("mail.smtp.auth", "true");
  		prop.put("mail.smtp.starttls.enable", "true"); // TLS
  		prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

  		Session session = Session.getInstance(prop,
				new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(username, password);
                    }
                });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("subicshas@gmail.com"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(to));
            message.setSubject(sub);
            message.setText(msg);

            Transport.send(message);

            System.out.println("Mail sent succesfully!");

        } catch (MessagingException e) {
        	e.printStackTrace();
            throw new RuntimeException(e);
        }
    }
    
    
  

}

