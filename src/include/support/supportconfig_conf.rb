# encoding: utf-8

# ***************************************************************************
#
# Copyright (c) 2008 - 2012 Novell, Inc.
# All Rights Reserved.
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.   See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, contact Novell, Inc.
#
# To contact Novell about this file by physical or electronic mail,
# you may find current contact information at www.novell.com
#
# ***************************************************************************
module Yast
  module SupportSupportconfigConfInclude
    def initialize_support_supportconfig_conf(include_target)
      textdomain "support"

      @support_descr = {
        "OPTION_APPARMOR"                => _(
          "AppArmor information. security-apparmor.txt"
        ),
        "OPTION_AUTOFS"                  => _(
          "autofs information. fs-autofs.txt"
        ),
        "OPTION_BOOT"                    => _(
          "Information related to booting and the kernel. boot.txt"
        ),
        "OPTION_CHKCONFIG"               => _(
          "Current system service states. chkconfig.txt"
        ),
        "OPTION_CRASH"                   => _(
          "Information related to capturing a system core dump. crash.txt"
        ),
        "OPTION_CRON"                    => _(
          "Information related to cron and at. cron.txt"
        ),
        "OPTION_DISK"                    => _(
          "Disk, file system mounts and partition information. fs-diskio.txt"
        ),
        "OPTION_DNS"                     => _(
          "Domain Name Service information. dns.txt"
        ),
        "OPTION_EDIR"                    => _(
          "Novell eDirectory health check information. novell-edir.txt"
        ),
        "OPTION_ENV"                     => _(
          "System environment information, including sysctl and root's environment. env.txt"
        ),
        "OPTION_ETC"                     => _(
          "Recursively gets *.conf files, along with various other configuration files in /etc. etc.txt"
        ),
        "OPTION_EVMS"                    => _(
          "Enterprise Volume Management System-related information. evms.txt"
        ),
        "OPTION_HA"                      => _(
          "Heartbeat/high availabilty cluster information. ha.txt"
        ),
        "OPTION_ISCSI"                   => _(
          "iSCSI target and initiator information. fs-iscsi.txt"
        ),
        "OPTION_LDAP"                    => _(
          "LDAP related information, including a root DSE search. ldap.txt"
        ),
        "OPTION_LUM"                     => _(
          "Novell Linux User Management-related information, including a root DSE, UNIX Config and workstation object searches. novell-lum.txt"
        ),
        "OPTION_LVM"                     => _(
          "Linux Volume Management-related information. lvm.txt"
        ),
        "OPTION_MEM"                     => _(
          "Memory-related information. memory.txt"
        ),
        "OPTION_MOD"                     => _(
          "System kernel module information. modules.txt"
        ),
        "OPTION_MPIO"                    => _(
          "Native device mapper multipathing information. mpio.txt"
        ),
        "OPTION_NCP"                     => _(
          "Novell Core Protocol-related information. novell-ncp.txt"
        ),
        "OPTION_NCS"                     => _(
          "Novell Cluster Services-related information. novell-ncs.txt"
        ),
        "OPTION_NET"                     => _(
          "Network-related information, including firewall rules. network.txt"
        ),
        "OPTION_NFS"                     => _(
          "Network File System-related information. nfs.txt"
        ),
        "OPTION_NSS"                     => _(
          "Novell Storage Services-related information. novell-nss.txt"
        ),
        "OPTION_NTP"                     => _(
          "Network Time Protocol-related information. ntp.txt"
        ),
        "OPTION_OCFS2"                   => _(
          "OCFS2 file system-related information. ocfs2.txt"
        ),
        "OPTION_OFILES"                  => _(
          "List of all open files using lsof. open-files.txt"
        ),
        "OPTION_OPENWBEM"                => _(
          "OpenWBEM-related information. openwbem.txt"
        ),
        "OPTION_PAM"                     => _(
          "Pluggable Authentication Module-related information, including user account information. pam.txt"
        ),
        "OPTION_PRINT"                   => _(
          "Printing and CUPS-related information. print.txt"
        ),
        "OPTION_PROC"                    => _(
          "Includes key /proc file content. proc.txt"
        ),
        "OPTION_RCD"                     => _(
          "Update daemon-related information. updates-daemon.txt"
        ),
        "OPTION_RUG"                     => _(
          "Update client related information. updates.txt"
        ),
        "OPTION_SAR"                     => _(
          "System Activity Reporting-related information, including copies of the SAR data files. sar.txt"
        ),
        "OPTION_SLERT"                   => _(
          "SLES Real Time kernel-related information. slert.txt"
        ),
        "OPTION_SLP"                     => _(
          "Service Location Protocol related information. slp.txt"
        ),
        "OPTION_SMART"                   => _(
          "Self-Monitoring, Analysis, and Reporting Technology-related information for hard disks. WARNING: Some hard disk controllers and drives do not\n" +
            "behave nicely. Probing SMART data has been known to change file systems to read only mode or even hang the server. Make sure probing SMART data\n" +
            "works in your environment before enabling this option. fs-smartmon.txt\n"
        ),
        "OPTION_SMB"                     => _(
          "Samba and CIFS-related information. samba.txt"
        ),
        "OPTION_SRAID"                   => _(
          "Software RAID-related information. fs-softraid.txt"
        ),
        "OPTION_SSH"                     => _(
          "Secure Shell server information. ssh.txt"
        ),
        "OPTION_SYSCONFIG"               => _(
          "Configuration files found in /etc/sysconfig. sysconfig.txt"
        ),
        "OPTION_UDEV"                    => _(
          "UDEV device manager-related information. udev.txt"
        ),
        "OPTION_X"                       => _(
          "X graphical system-related information. x.txt"
        ),
        "OPTION_XEN"                     => _(
          "XEN virtualization-related information. xen.txt"
        ),
        "ADD_OPTION_EDIR_SEARCH"         => _(
          "Tells supportconfig to search the file system for all eDirectory instances files. If set, ADD_OPTION_FSLIST is automatically set as well. -e"
        ),
        "ADD_OPTION_FSLIST"              => _(
          "A full file list using find from the root of the filesytem. -L, fs-files.txt"
        ),
        "ADD_OPTION_LOGS"                => _(
          "Includes the entire log file, including comments, instead of just VAR_OPTION_LINE_COUNT lines of it. Additional rotated logs are included if available. -l"
        ),
        "ADD_OPTION_MIN_DISKSCAN"        => _(
          "Minimizes the amount of disk information and detailed scanning. -d"
        ),
        "ADD_OPTION_MIN_Y2LOGS"          => _(
          "Normally all of the /var/log/YaST2/* logs are included. This option minimizes the amount of each file retrieved."
        ),
        "ADD_OPTION_RPM_VFULL"           => _(
          "Runs an rpm -V on every installed RPM package. This takes some time to complete. -v, rpm-verify.txt"
        ),
        "ADD_OPTION_SLP_FULL"            => _(
          "Normally only the base SLP service types are listed. This option allows you to query each of the discovered service types individually. -s, slp.txt"
        ),
        "VAR_OPTION_CONTACT_COMPANY"     => _(
          "Company name to include in the basic-environment.txt"
        ),
        "VAR_OPTION_CONTACT_EMAIL"       => _(
          "Contact's email address to include in the basic-environment.txt"
        ),
        "VAR_OPTION_CONTACT_NAME"        => _(
          "Contact's name to include in the basic-environment.txt"
        ),
        "VAR_OPTION_CONTACT_PHONE"       => _(
          "Contact's phone number to include in the basic-environment.txt"
        ),
        "VAR_OPTION_LINE_COUNT"          => _(
          "The number of lines to include when getting a log file. Zero means get the entire file."
        ),
        "VAR_OPTION_LOG_DIRS"            => _(
          "The supportconfig tarball location. The first valid location in the list is always used."
        ),
        "VAR_OPTION_MSG_MAXSIZE"         => _(
          "The maximum number of /var/log/messages lines to get. Zero means get the entire file."
        ),
        "VAR_OPTION_PENGINE_FILES_LIMIT" => _(
          "The maximum number of heartbeat policy engine log files to include in the supportconfig tarball."
        ),
        "VAR_OPTION_SAR_FILES_LIMIT"     => _(
          "The maximum number of SAR data files to include in the supportconfig tarball."
        ),
        "VAR_OPTION_SILENT"              => _(
          "When set to 1, supportconfig runs in quiet mode. This option is useful if you\nplan on running supportconfig regularly in a cron job for example. Set with -Q."
        ),
        "VAR_OPTION_UPLOAD_TARGET"       => _(
          "Used to specify where the supportconfig tarball will be uploaded, when using the -u srnum startup option. You can specify any FTP server that supports anonymous uploads. The default is SUSE's public ftp server."
        )
      }
    end
  end
end
