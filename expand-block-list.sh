# ##############################################
# Custom blacklist
# ##############################################

pihole -b tag.medialytics.com med.heyzap.com notify.bugsnag.com rt.applovin.com ns.zdbb.net omaze.com traffic.adxprts.com ads.exoclick.com adclickservice.com 2468.go2cloud.org pleasedontslaymy.download cdn11.pleasedontslaymy.download engine.phn.doublepimp.com media.trafficjunky.net tlootas.org badtopwitch.work eventtracking.omarsys.com almoraffiliates-api.omarsys.com cdn.engine.spotscenered.info mh.tlootas.org spotscenered.info 

# ##############################################
# Whitelist of domains (twitter, spotify, .....)
# ##############################################

# Clean out - to be sure
# echo "" | sudo tee /etc/pihole/whitelist.txt > /dev/null
# pihole -g

pihole -w raw.githubusercontent.com mirror1.malwaredomains.com sysctl.org zeustracker.abuse.ch s3.amazonaws.com hosts-file.net spclient.wg.spotify.com analytics.twitter.com adaway.org v.firebog.net mirror.cedia.org.ec www.malwaredomainlist.com bitbucket.org openphish.com ransomwaretracker.abuse.ch github.com thepiratebay.org apple.com appleid.apple.com opensubtitles.org angryip.org imgur.com prod.imgur.map.fastlylb.net m.imgur.com 


# ##############################################
# Pi-Hole's block lists
# ##############################################

#### Pi_Hole defaults :
echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://mirror1.malwaredomains.com/files/justdomains" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "http://sysctl.org/cameleon/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://zeustracker.abuse.ch/blocklist.php?download=domainblocklist" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://s3.amazonaws.com/lists.disconnect.me/simple_tracking.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://hosts-file.net/ad_servers.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null

# ##############################################

# Special thanks to: https://wally3k.github.io & Kevin-De-Koninck
# Credits to:
#  hpHosts; r-a-y; Steven Black; Block List Project; CHEF-KOCH; Anudeep ND; The Firebog; Peter Lowe; BlockZilla; Phishing army; Ransomware tracker; dshield.org; Energized Protection; jasonhill.co.uk; 

# ##############################################

##https://hosts-file.net/?s=Download :
##https://hosts-file.net/ad_servers.txt (Pi_Hole default)
https://hosts-file.net/emd.txt
https://hosts-file.net/fsa.txt
https://hosts-file.net/mmt.txt
https://hosts-file.net/psh.txt
https://hosts-file.net/pup.txt

##https://github.com/r-a-y/mobile-hosts (https://filterlists.com/) :
https://raw.githubusercontent.com/r-a-y/mobile-hosts/master/AdguardMobileAds.txt
https://raw.githubusercontent.com/r-a-y/mobile-hosts/master/AdguardMobileSpyware.txt
https://raw.githubusercontent.com/r-a-y/mobile-hosts/master/EasyPrivacy3rdParty.txt
https://raw.githubusercontent.com/r-a-y/mobile-hosts/master/EasyPrivacySpecific.txt

##https://github.com/StevenBlack/hosts :
##https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts                              (Pi_Hole default: = Unified hosts file with base extensions (adware+malware) )
##https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling/hosts ( = Unified hosts + Fakenews + Gambling )
##https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling/hosts          ( = Unified hosts + Gambling )

##https://tspprs.com/ :
##(Includes Basic Block Lists: Malware Domains/Cameleon/Zeustracker/Disconnect.me Tracking/Disconnect.me Ads/Hosts-file.net --SEEMS REDUNDANT)
https://tspprs.com/dl/abuse
##https://tspprs.com/dl/ads         (SEEMS REDUNDANT)
https://tspprs.com/dl/crypto
https://tspprs.com/dl/gambling
https://tspprs.com/dl/ransomware
https://tspprs.com/dl/scam
https://tspprs.com/dl/spam
https://tspprs.com/dl/spotify
##https://tspprs.com/dl/tracking    (SEEMS REDUNDANT)

##https://github.com/CHEF-KOCH/CKs-FilterList :
https://raw.githubusercontent.com/CHEF-KOCH/CKs-FilterList/master/HOSTS/Ads-tracker.txt
https://raw.githubusercontent.com/CHEF-KOCH/CKs-FilterList/master/HOSTS/Malware.txt
https://raw.githubusercontent.com/CHEF-KOCH/CKs-FilterList/master/HOSTS/Popads.txt
https://raw.githubusercontent.com/CHEF-KOCH/CKs-FilterList/master/HOSTS/coinminer.txt
https://raw.githubusercontent.com/CHEF-KOCH/CKs-FilterList/master/Anti-Corp/Spotify/Spotify-HOSTS.txt
https://raw.githubusercontent.com/CHEF-KOCH/CKs-FilterList/master/Anti-Corp/hosts/NSABlocklist.txt
https://raw.githubusercontent.com/CHEF-KOCH/CKs-FilterList/master/Anti-Corp/hosts/Skype.txt

##https://github.com/anudeepND/blacklist :
https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt
https://raw.githubusercontent.com/anudeepND/blacklist/master/CoinMiner.txt 
##https://raw.githubusercontent.com/anudeepND/whitelist/master/domains/whitelist.txt    (Anudeep ND)

##https://v.firebog.net/hosts/ :
##WaLLy3K's somewhat private mirror => Advertisement Lists
https://v.firebog.net/hosts/AdAway.txt
##https://v.firebog.net/hosts/Disconnect-ads.txt    (Pi_Hole default)
##https://v.firebog.net/hosts/HPHosts-ads.txt       (Pi_Hole default)
https://v.firebog.net/hosts/Easylist.txt
https://v.firebog.net/hosts/Easylist-Dutch.txt
https://v.firebog.net/hosts/Easyprivacy.txt
https://v.firebog.net/hosts/SBUnchecky.txt
https://v.firebog.net/hosts/AdguardDNS.txt
##https://v.firebog.net/hosts/Prigent-Ads.txt       (UNSURE)
https://v.firebog.net/hosts/SB2o7Net.txt                                                        

##EXTRA/MORE/VARIOUS :
##http://sysctl.org/cameleon/hosts  (Pi_Hole default)
https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=1&mimetype=plaintext
https://raw.githubusercontent.com/zpacman/Blockzilla/master/Blockzilla.txt
https://phishing.army/download/phishing_army_blocklist_extended.txt
# All *_DOMBL datasets except CW_C2_DOMBL, TC_C2_DOMBL :
https://ransomwaretracker.abuse.ch/downloads/RW_DOMBL.txt
# [CW_C2_URLBL] ipv CW_C2_DOMBL :
https://ransomwaretracker.abuse.ch/downloads/CW_C2_URLBL.txt
# [TC_C2_URLBL] ipv TC_C2_DOMBL :
https://ransomwaretracker.abuse.ch/downloads/TC_C2_URLBL.txt
##iNFO: The high sensitivity list has fewer false positives down to the low sensitivty list with more false positives : 
https://www.dshield.org/feeds/suspiciousdomains_Low.txt
##https://www.dshield.org/suspicious_domains.html: ( https://www.dshield.org/feeds/suspiciousdomains_High.txt | https://www.dshield.org/feeds/suspiciousdomains_Medium.txt | https://www.dshield.org/feeds/suspiciousdomains_Low.txt )

##https://github.com/EnergizedProtection/block :
##big-ass lists @ https://energized.pro/#packs
# [ Blu GO ]
https://raw.githubusercontent.com/EnergizedProtection/block/master/bluGo/formats/domains.txt
# [Regional]
https://raw.githubusercontent.com/EnergizedProtection/block/master/extensions/regional/formats/domains.txt

####YT:
##NOTE; the actual content is also delivered using similar domains; blocking this will prevent the video from playing        (*T*E*S*T*)
##[JijBuis] https://discourse.pi-hole.net/t/update-the-best-blocking-lists-for-the-pi-hole-dns-ad-blockers-interesting-combination/13620
https://jasonhill.co.uk/pfsense/ytadblock.txt
##[JijBuis] https://github.com/anudeepND/youtubeadsblacklist
https://raw.githubusercontent.com/anudeepND/youtubeadsblacklist/master/domainlist.txt

# ##############################################

pihole -g -up
#https://discourse.pi-hole.net/t/the-pihole-command-with-examples/738
#pihole -g

# ##############################################