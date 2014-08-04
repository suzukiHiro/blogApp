#coding: utf-8

class NoticeMailer < ActionMailer::Base
 default from: "suzuki.h.0130@gmail.com"
 def sendmail_confirm(mail_address)
   mail(
      to: mail_address,
      subject: "テストメール"
    ) do |format|
      format.text
    end
 end
end