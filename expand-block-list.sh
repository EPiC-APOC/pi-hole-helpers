#!/bin/sh
clear

# ##############################################
# Custom blacklist
# ##############################################

# echo "clear/empty"
# echo "" | sudo tee /etc/pihole/black.list > /dev/null
# pihole -g

echo ""
echo "Custom blacklist"
echo ""

pihole -b tag.medialytics.com med.heyzap.com notify.bugsnag.com rt.applovin.com ns.zdbb.net omaze.com traffic.adxprts.com ads.exoclick.com adclickservice.com 2468.go2cloud.org pleasedontslaymy.download cdn11.pleasedontslaymy.download engine.phn.doublepimp.com media.trafficjunky.net tlootas.org badtopwitch.work eventtracking.omarsys.com almoraffiliates-api.omarsys.com cdn.engine.spotscenered.info mh.tlootas.org spotscenered.info 

# ##############################################
# Whitelist of domains (twitter, spotify, .....)
# ##############################################

# echo "clear/empty"
# echo "" | sudo tee /etc/pihole/whitelist.txt > /dev/null
# pihole -g

echo ""
echo "Custom whitelist"
echo ""

pihole -w raw.githubusercontent.com mirror1.malwaredomains.com sysctl.org zeustracker.abuse.ch s3.amazonaws.com hosts-file.net spclient.wg.spotify.com analytics.twitter.com adaway.org v.firebog.net mirror.cedia.org.ec www.malwaredomainlist.com bitbucket.org openphish.com ransomwaretracker.abuse.ch github.com thepiratebay.org apple.com appleid.apple.com opensubtitles.org angryip.org imgur.com prod.imgur.map.fastlylb.net m.imgur.com 


# ##############################################
# Pi-Hole's block lists
# ##############################################

echo ""
echo "Clean out --to be sure"
echo ""
echo "" | sudo tee /etc/pihole/adlists.list > /dev/null
echo ""
pihole -g
echo ""

#### Pi_Hole defaults :
echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://mirror1.malwaredomains.com/files/justdomains" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "http://sysctl.org/cameleon/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://zeustracker.abuse.ch/blocklist.php?download=domainblocklist" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://s3.amazonaws.com/lists.disconnect.me/simple_tracking.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://hosts-file.net/ad_servers.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null


# ##############################################

# Special thanks to: Kevin-De-Koninck  &  https://wally3k.github.io
# Credits to:
#  hpHosts; r-a-y; Steven Black; Block List Project; CHEF-KOCH; Anudeep ND; The Firebog; Peter Lowe; BlockZilla; Phishing army; Ransomware tracker; dshield.org; Energized Protection; jasonhill.co.uk; 

# ##############################################

##https://hosts-file.net/?s=Download :
##https://hosts-file.net/ad_servers.txt                                                                                                                     #Pi_Hole_default #
echo "https://hosts-file.net/emd.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://hosts-file.net/fsa.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://hosts-file.net/mmt.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://hosts-file.net/psh.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://hosts-file.net/pup.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null

##https://github.com/r-a-y/mobile-hosts (https://filterlists.com/) :
echo "https://raw.githubusercontent.com/r-a-y/mobile-hosts/master/AdguardMobileAds.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/r-a-y/mobile-hosts/master/AdguardMobileSpyware.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/r-a-y/mobile-hosts/master/EasyPrivacy3rdParty.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/r-a-y/mobile-hosts/master/EasyPrivacySpecific.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null

##https://github.com/StevenBlack/hosts :
##echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null                                #Pi_Hole_default: = Unified hosts file with base extensions (adware+malware) #
##echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null   # = Unified hosts + Fakenews + Gambling #
##echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null            # = Unified hosts + Gambling #

##https://tspprs.com/ :
##(Includes Basic Block Lists: Malware Domains/Cameleon/Zeustracker/Disconnect.me Tracking/Disconnect.me Ads/Hosts-file.net --SEEMS REDUNDANT)
echo "https://tspprs.com/dl/abuse" | sudo tee -a /etc/pihole/adlists.list > /dev/null
##echo "https://tspprs.com/dl/ads" | sudo tee -a /etc/pihole/adlists.list > /dev/null                                                                       #SEEMS_REDUNDANT #
echo "https://tspprs.com/dl/crypto" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://tspprs.com/dl/gambling" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://tspprs.com/dl/ransomware" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://tspprs.com/dl/scam" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://tspprs.com/dl/spam" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://tspprs.com/dl/spotify" | sudo tee -a /etc/pihole/adlists.list > /dev/null
##echo "https://tspprs.com/dl/tracking" | sudo tee -a /etc/pihole/adlists.list > /dev/null                                                                  #SEEMS_REDUNDANT #

##https://github.com/CHEF-KOCH/CKs-FilterList :
echo "https://raw.githubusercontent.com/CHEF-KOCH/CKs-FilterList/master/HOSTS/Ads-tracker.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/CHEF-KOCH/CKs-FilterList/master/HOSTS/Malware.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/CHEF-KOCH/CKs-FilterList/master/HOSTS/Popads.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/CHEF-KOCH/CKs-FilterList/master/HOSTS/coinminer.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/CHEF-KOCH/CKs-FilterList/master/Anti-Corp/Spotify/Spotify-HOSTS.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/CHEF-KOCH/CKs-FilterList/master/Anti-Corp/hosts/NSABlocklist.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/CHEF-KOCH/CKs-FilterList/master/Anti-Corp/hosts/Skype.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null

##https://github.com/anudeepND/blacklist :
echo "https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/anudeepND/blacklist/master/CoinMiner.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
##echo "https://raw.githubusercontent.com/anudeepND/whitelist/master/domains/whitelist.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null              #Anudeep ND #WhiteList

##https://v.firebog.net/hosts/ :
##WaLLy3K's somewhat private mirror => Advertisement Lists
echo "https://v.firebog.net/hosts/AdAway.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
##echo "https://v.firebog.net/hosts/Disconnect-ads.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null                                                  #Pi_Hole_default #
##echo "https://v.firebog.net/hosts/HPHosts-ads.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null                                                     #Pi_Hole_default #
echo "https://v.firebog.net/hosts/Easylist.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://v.firebog.net/hosts/Easylist-Dutch.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://v.firebog.net/hosts/Easyprivacy.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://v.firebog.net/hosts/SBUnchecky.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://v.firebog.net/hosts/AdguardDNS.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
##echo "https://v.firebog.net/hosts/Prigent-Ads.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null                                                     #UNSURE #
echo "https://v.firebog.net/hosts/SB2o7Net.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null  


##EXTRA/MORE/VARIOUS :
##echo "http://sysctl.org/cameleon/hosts" | sudo tee -a /etc/pihole/adlists.list > /dev/null                                                                #Pi_Hole_default #
echo "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=1&mimetype=plaintext" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://raw.githubusercontent.com/zpacman/Blockzilla/master/Blockzilla.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
echo "https://phishing.army/download/phishing_army_blocklist_extended.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
# All *_DOMBL datasets except CW_C2_DOMBL, TC_C2_DOMBL :
echo "https://ransomwaretracker.abuse.ch/downloads/RW_DOMBL.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
# [CW_C2_URLBL] ipv CW_C2_DOMBL :
echo "https://ransomwaretracker.abuse.ch/downloads/CW_C2_URLBL.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
# [TC_C2_URLBL] ipv TC_C2_DOMBL :
echo "https://ransomwaretracker.abuse.ch/downloads/TC_C2_URLBL.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
##NFO: The high sensitivity list has fewer false positives down to the low sensitivty list with more false positives : 
##SEE; https://www.dshield.org/suspicious_domains.html: https://www.dshield.org/feeds/suspiciousdomains_High.txt | https://www.dshield.org/feeds/suspiciousdomains_Medium.txt | https://www.dshield.org/feeds/suspiciousdomains_Low.txt
echo "https://www.dshield.org/feeds/suspiciousdomains_Low.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null

##https://github.com/EnergizedProtection/block :
##big-ass_lists @ https://energized.pro/#packs ;
# [ Blu GO ]
echo "https://raw.githubusercontent.com/EnergizedProtection/block/master/bluGo/formats/domains.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
# [Regional]
echo "https://raw.githubusercontent.com/EnergizedProtection/block/master/extensions/regional/formats/domains.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null


####YT:
##NOTE; the actual content is also delivered using similar domains; blocking this will prevent the video from playing        (*T*E*S*T*)
##[JijBuis] https://discourse.pi-hole.net/t/update-the-best-blocking-lists-for-the-pi-hole-dns-ad-blockers-interesting-combination/13620
echo "https://jasonhill.co.uk/pfsense/ytadblock.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null
##[JijBuis] https://github.com/anudeepND/youtubeadsblacklist
echo "https://raw.githubusercontent.com/anudeepND/youtubeadsblacklist/master/domainlist.txt" | sudo tee -a /etc/pihole/adlists.list > /dev/null


# ##############################################

echo ""
echo "******************************"
echo "*** updating pi-hole lists ***"
echo "******************************"
echo ""

#pihole -g -up
#https://discourse.pi-hole.net/t/the-pihole-command-with-examples/738
pihole -g

# ##############################################


echo ""
date >> /tmp/expand-block-list.log
echo ""
echo "******************************"
echo "*** pi-hole lists updated  ***"
echo "******************************"
echo ""