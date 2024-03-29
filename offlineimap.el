(require 'mu4e)

     ;; default
     ;; (setq mu4e-maildir "~/Maildir")

     (setq mu4e-drafts-folder "/[Gmail].Drafts")
     (setq mu4e-sent-folder   "/[Gmail].Sent Mail")
     (setq mu4e-trash-folder  "/[Gmail].Trash")

     ;; don't save message to Sent Messages, Gmail/IMAP takes care of this
     (setq mu4e-sent-messages-behavior 'delete)

     ;; setup some handy shortcuts
     ;; you can quickly switch to your Inbox -- press ``ji''
     ;; then, when you want archive some messages, move them to
     ;; the 'All Mail' folder by pressing ``ma''.

     (setq mu4e-maildir-shortcuts
         '( ("/INBOX"               . ?i)
            ("/[Gmail].Sent Mail"   . ?s)
            ("/[Gmail].Trash"       . ?t)
            ("/[Gmail].All Mail"    . ?a)))

     ;; allow for updating mail using 'U' in the main view:
     (setq mu4e-get-mail-command "offlineimap")

     ;; something about ourselves
     (setq
        user-mail-address "marc.bluemner@gmail.com"
        user-full-name  "Marc Bluemner"
        message-signature
         (concat
           "Marc Bluemner"
           "marc.bluemner@gmail.com"

           "Ruby on Rails Developer"
           "Agile Coach"
           "Test-System implementation"
           "iOS / Android development"p
           "Punk Rock Consultant"

           "TEL: +49 17670380501"
           "Twitter: @BLUEMNER"

           "Xing: https://www.xing.com/profile/Marc_Bluemner/cv"
           "Github: http://github.com/rockrollMarc"))

     ;; sending mail -- replace USERNAME with your gmail username
     ;; also, make sure the gnutls command line utils are installed
     ;; package 'gnutls-bin' in Debian/Ubuntun

     (require 'smtpmail)
    ;; (setq message-send-mail-function 'smtpmail-send-it
    ;;   starttls-use-gnutls t
    ;;    smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
    ;;    smtpmail-auth-credentials
    ;;      '(("smtp.gmail.com" 587 "marc.bluemner@gmail.com" nil))
    ;;    smtpmail-default-smtp-server "smtp.gmail.com"
    ;;    smtpmail-smtp-server "smtp.gmail.com"
    ;;    smtpmail-smtp-service 587)

     ;; alternatively, for emacs-24 you can use:
     (setq message-send-mail-function 'smtpmail-send-it
          smtpmail-stream-type 'starttls
          smtpmail-default-smtp-server "smtp.gmail.com"
          smtpmail-smtp-server "smtp.gmail.com"
          smtpmail-smtp-service 587)

     ;; don't keep message buffers around
     (setq message-kill-buffer-on-exit t)
