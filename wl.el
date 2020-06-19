;;; ~/.config/doom/wl.el -*- lexical-binding: t; -*-

(setq wl-smtp-connection-type 'nil)
(setq wl-smtp-posting-port 25)
(setq wl-smtp-authenticate-type "plain")
(setq wl-smtp-posting-user "chenli@uniontech.com")
(setq wl-smtp-posting-server "smtp.263.net")
(setq wl-local-domain "uniontech.com")

;; (setq
;;  wl-smtp-connection-type 'ssl
;;  wl-smtp-posting-port 465
;;  wl-smtp-authenticate-type "plain"
;;  wl-smtp-posting-user "chenli"
;;  wl-smtp-posting-server "mail.privateemail.com"
;;  wl-local-domain "privateemail.com"
;;  wl-message-id-domain "mail.privateemail.com")

;; 更加复杂的多账号设置
(setq wl-user-mail-address-list (quote ("chenli@uniontech.com" "czxyl@firstlove.life")))

(setq wl-draft-config-alist
      '(((string-match "uniontech.com" wl-draft-parent-folder)
         (template . "uniontech"))
        ((string-match "mail.privateemail.com" wl-draft-parent-folder)
         (template . "firstlove.life"))
        ;; automatic for replies
        (reply "\\(To\\|Cc\\|Delivered-To\\): uniontech"
               (template . "uniontech"))
        (reply "\\(To\\|Cc\\|Delivered-To\\): firstlove.life"
               (template . "firstlove.life"))))

(setq wl-template-alist
      '(("uniontech"
         (wl-smtp-connection-type . 'nil)
         (wl-smtp-posting-port . 25)
         (wl-smtp-authenticate-type . "plain")
         (wl-smtp-posting-user . "chenli@uniontech.com")
         (wl-smtp-posting-server . "smtp.263.net")
         (wl-local-domain . "uniontech.com")
         (wl-refile-rule-alist .       '(("x-ml-name"
                                          ("^Wanderlust" . "+wl")
                                          ("^Elisp" . "+elisp"))
                                         ;; (("To" "Cc")
                                         ;;  ("\\([a-z]+\\)@gohome\\.org" . "+\\1"))
                                         ;; ("From"
                                         ;;  ("me@gohome\\.org" . ("To" ("you@gohome\\.org" .
                                         ;;                              "+from-me-to-you"))))
                                         (("Subject" "To")
                                          ("\\([a-zA-Z-]+\\)@vger\\.kernel\\.org" . "+\\1"))
                                         ))
         )
        ("firstlove.life"
         ;; ("Fcc" . "%INBOX.Sent:\"czxyl@firstlove.life\"/clear@mail.privateemail.com")
         (wl-from . "陈力 <chenli@firstlove.com>")
         (wl-smtp-posting-user . "czxyl@firstlove.life")
         (wl-smtp-connection-type 'ssl)
         (wl-smtp-authenticate-type . "plain")
         (wl-smtp-posting-server . "mail.privateemail.com")
         (wl-local-domain . "mail.privateemail.com"))
        (wl-smtp-posting-port . 465)
        ))

(setq wl-subscribed-mailing-list
      '("wl@ml.gentei.org"
        "apel-ja@m17n.org"
        "linux-alpha@vger.kernel.org"
        "linux-media@vger.kernel.org"
        "linux-kernel@vger.kernel.org"
        "linux-rtc@vger.kernel.org"
        "backports@vger.kernel.org"
        "linux-x11@vger.kernel.org"
        "linux-apps@vger.kernel.org"
        "linux-assembly@vger.kernel.org"
        "io-uring@vger.kernel.org"
        "linux-arch@vger.kernel.org"
        "kernel-testers@vger.kernel.org"
        "git-commits-head@vger.kernel.org"
        "linux-api@vger.kernel.org"
        "ceph-devel@vger.kernel.org"
        "linux-admin@vger.kernel.org"
        "kernel-packagers@vger.kernel.org"
        "dwarves@vger.kernel.org"
        "linux-gcc@vger.kernel.org"
        "linux-console@vger.kernel.org"
        "linux-c-programming@vger.kernel.org"
        "linux-gpio@vger.kernel.org"
        "linux-bluetooth@vger.kernel.org"
        "linux-efi@vger.kernel.org"
        "linux-doc@vger.kernel.org"
        "linux-kbuild@vger.kernel.org"
        "bpf@vger.kernel.org"
        "linux-btrace@vger.kernel.org"
        "linux-block@vger.kernel.org"
        "linux-fbdev@vger.kernel.org"
        "cgroups@vger.kernel.org"
        "linux-config@vger.kernel.org"
        "devicetree-spec@vger.kernel.org"
        "kernel-janitors@vger.kernel.org"
        "linux-hotplug@vger.kernel.org"
        "linux-kernel-announce@vger.kernel.org"
        "linux-kselftest@vger.kernel.org"
        "linux-kernel@vger.kernel.org"
        "linux-i2c@vger.kernel.org"
        "linux-laptop@vger.kernel.org"
        "linux-modules@vger.kernel.org"
        "linux-man@vger.kernel.org"
        "devicetree@vger.kernel.org"
        "linux-new-lists@vger.kernel.org"
        "linux-newbie@vger.kernel.org"
        "linux-next@vger.kernel.org"
        "linux-numa@vger.kernel.org"
        "linux-perf-users@vger.kernel.org"
        "linux-security-module@vger.kernel.org"
        "linux-pci@vger.kernel.org"
        "linux-serial@vger.kernel.org"
        "linux-sound@vger.kernel.org"
        "linux-standards@vger.kernel.org"
        "linux-trace-devel@vger.kernel.org"
        "linux-trace-users@vger.kernel.org"
        "live-patching@vger.kernel.org"
        "netdev@vger.kernel.org"
        "linux-smp@vger.kernel.org"
        "rcu@vger.kernel.org"
        "perfbook@vger.kernel.org"
        "selinux@vger.kernel.org"
        "trinity@vger.kernel.org"
        "util-linux@vger.kernel.org"
        "workflows@vger.kernel.org"
        "ltp@lists.linux.it"
        "emacs-mime-ja@m17n.org"))
(setq wl-summary-indent-length-limit 300)
(setq wl-summary-width 300)

(setq wl-refile-rule-alist
      '(("x-ml-name"
         ("^Wanderlust" . ".wl")
         ("^Elisp" . ".elisp"))
        ;; (("To" "Cc")
        ;;  ("\\([a-z]+\\)@gohome\\.org" . "+\\1"))
        ;; ("From"
        ;;  ("me@gohome\\.org" . ("To" ("you@gohome\\.org" .
        ;;                              "+from-me-to-you"))))
        (("To")
         ("chenli@uniontech\\.com" . ".ToMe")
         ("git-commits-head@vger\\.kernel\\.org" . ".git-commits-head"))
        (("Cc")
         ("chenli@uniontech\\.com" . ".CcMe"))
        (("Subject" "To")
         ("\\([a-zA-Z-]+\\)-owner@vger\\.kernel\\.org" . ".\\1")
         ("ltp@lists\\.linux\\.it" . "%ltp-try:\"chenli@uniontech.com\"/clear@imap.263.net:143"  )
         ("openssh-unix-dev" . ".openssh")
         )
        ( ("From")
          ("it@uniontech.com" . ".IT")
         ("PMS" . "+PMS")
         ("Majordomo@vger\\.kernel\\.org" . ".archive")
         (".*@uniontech.com" . ".colleague")
         ("*@deepin.com" . ".deepin")
         )
        ))

(setq wl-summary-auto-refile-skip-marks nil)
