# Elements Support and Configuration

<p>
      This document is maintained in Freemind:
    </p>
    <p>
    </p>
    <p>
      <a href="http://freemind.sourceforge.net/wiki/index.php/Main_Page">http://freemind.sourceforge.net/wiki/index.php/Main_Page</a>
    </p>
    <p>
    </p>
    <p>
      the Mindmap file is at
    </p>
    <ul>
      <li>
        https://lshtm-my.sharepoint.com/:u:/g/personal/eadmarei_lshtm_ac_uk/EZQE_oBstDhPndnppoIHXL8B8zLTjecX-7_3WTKy8NH1sQ?e=QEOtdD
      </li>
    </ul>
    <p>
      and exported as
    </p>
    <ul>
      <li>
        File
      </li>
      <li>
        Export
      </li>
      <li>
        ...as XHTML(Clickable Image Map version)
      </li>
      <li>
        <a href="https://lshtm-my.sharepoint.com/:u:/g/personal/eadmarei_lshtm_ac_uk/EbHdGB7hG_pBkGTwDEAv-6sBlDYYH-IbQhVUeDsQyrXXQA?e=ub4rsU">https://lshtm-my.sharepoint.com/:u:/g/personal/eadmarei_lshtm_ac_uk/EbHdGB7hG_pBkGTwDEAv-6sBlDYYH-IbQhVUeDsQyrXXQA?e=ub4rsU</a>
      </li>
    </ul>
    <p>
      General Schematic Diagram showing data integrations and flows
    </p>
    <p>
      <a href="https://lshtm-my.sharepoint.com/:b:/g/personal/eadmarei_lshtm_ac_uk/ESQ0fPv8VqxEmCBL_ppx2ngB4uw99DUDaSdo7Qfi6UyZng?e=fFgdAB">https://lshtm-my.sharepoint.com/:b:/g/personal/eadmarei_lshtm_ac_uk/ESQ0fPv8VqxEmCBL_ppx2ngB4uw99DUDaSdo7Qfi6UyZng?e=fFgdAB</a>
    </p>


- System

<p>
      https://support.symplectic.co.uk/support/solutions/folders/6000177990
    </p>

  - Login

<ul>
      <li>
        https://support.symplectic.co.uk/support/solutions/articles/6000050142-integrating-shibboleth-service-provider-with-elements
      </li>
      <li>
        https://elements-dev.lshtm.ac.uk/authentications.html
      </li>
      <li>
        Session Timeout is set on server, default 30 minutes.  Contact Symplectic to alter this.
      </li>
    </ul>

  - Hosting

<p>
      LIVE, DEV, And Reporting database are hosted on a single box.  If there are performance issues it has been suggested that background scheduled jobs could be suspended on DEV.  Contact Symplectic re: hosting issues.
    </p>

  - Email

<ul>
      <li>
        <a href="https://elements.lshtm.ac.uk/mailservice.html">https://elements.lshtm.ac.uk/mailservice.html</a>
      </li>
      <li>
        see also global settings:
      </li>
      <li>
        Check https://elements.lshtm.ac.uk/mail.html for unsent emails
      </li>
    </ul>
    <p>
    </p>
    <p>
    </p>
    <p>
      Notifications and reminders:
    </p>
    <ul>
      <li>
        https://elements.lshtm.ac.uk/modulesettings.html?msid=1
      </li>
      <li>
        https://elements.lshtm.ac.uk/modulesettings.html?msid=3
      </li>
      <li>
        HR Process failure alert: https://elements.lshtm.ac.uk/modulesettings.html?msid=13
      </li>
    </ul>

  - [Upgrades](#ID_463587821)

<p>
      Upgrades are performed by Symplectic. New releases are approx. every two months.  Downtime is during office hours, usually 30-60 minutes
    </p>
    <ul>
      <li>
        https://support.symplectic.co.uk/support/solutions/folders/6000177975   for release dates and notes
      </li>
      <li>
        Reporting Database views must be rebuilt after any upgrade - see below
      </li>
    </ul>

  - Support

<ul>
      <li>
        https://basecamp.com/1758777/projects/14521595 =&gt; BaseCamp Implementation project
      </li>
      <li>
        https://support.symplectic.co.uk/support/tickets =&gt; Support requests
      </li>
      <li>
        https://support.symplectic.co.uk/support/discussions =&gt;Feature Request forums
      </li>
      <li>
        https://support.symplectic.co.uk/support/solutions =&gt; System admin documentation
      </li>
    </ul>

  - Roles

<ul>
      <li>
        https://support.symplectic.co.uk/support/solutions/articles/6000049832-roles-in-elements
      </li>
      <li>
        https://elements.lshtm.ac.uk/roles.html?tt=1
      </li>
    </ul>

    - System Roles
      - System Administrator
      - System Verifier
    - User Group Roles

<ul>
      <li>
        Statistician gives access to Group Reports
      </li>
      <li>
        Research Manager gives impersonation rights to all group members
      </li>
    </ul>

    - Category Admins
  - DEV server
    - :smily_bad: Synchronisation

<p>
      It is not generally possible to synchronise data, data structures, or configuration options between DEV and PROD servers: this has to be done manually
    </p>
    <p>
      This process is known as Refreshing the DEV server, and is being done for the first time along with the DEV upgrade to v5.17.  The data is refreshed before the upgrade.
    </p>

  - Background jobs & Services

<ul>
      <li>
        https://support.symplectic.co.uk/support/solutions/articles/6000049860-scheduled-jobs-and-services
      </li>
      <li>
        https://elements.lshtm.ac.uk/schedules.html
      </li>
    </ul>

    - Reporting Database Synchroniser

<p>
      Updates Reporting DB content in realtime
    </p>
    <p>
      Also gives option to rebuild DB after any structure changes in types and fields.  This takes about 30 mins, but old version remains in service until new one is complete. May report a version error, but this seems to be not a problem
    </p>
    <ul>
      <li>
        https://elements.lshtm.ac.uk/reportingsynchroniser.html
      </li>
    </ul>

    - Synchroniser

<p>
      Runs searches of Pubmed, Eprints, etc
    </p>

    - HR Feed Synchroiser

<p>
      set to nightly update. 
    </p>

    - Indexers
  - Global Settings

<ul>
      <li>
        https://support.symplectic.co.uk/support/solutions/articles/6000049843-manage-global-settings
      </li>
    </ul>

  - License

<ul>
      <li>
        License expires annually on 21 September
      </li>
      <li>
        PO must be raised and forwarded to Daryl, who will then request issue of new licenses
      </li>
      <li>
        License files installed by administrator via
      </li>
    </ul>

  - System Logs

<ul>
      <li>
        https://elements.lshtm.ac.uk/systemlog.html
      </li>
    </ul>

    - Eprints harvester logs

<ul>
      <li>
        https://elements.lshtm.ac.uk/datasource.html?cid=1&amp;sid=28
      </li>
    </ul>

  - Branding

<ul>
      <li>
        https://support.symplectic.co.uk/support/solutions/articles/6000049821-how-to-customise-logos-and-branding
      </li>
      <li>
        https://elements.lshtm.ac.uk/branding.html
      </li>
    </ul>

  - Modules
    - User Access
  - API
    - Create API Users

<p>
      Elements -
    </p>

    - PostMan

<p>
      PostMan is an API testing tool.  It can be used to run single or batch operations against the Elements API.  Symplectic provide a set of example operations which can be imported to the PostMan client.
    </p>
    <p>
    </p>
    <p>
      <a href="https://support.symplectic.co.uk/support/solutions/articles/6000217377-postman-api-collection">https://support.symplectic.co.uk/support/solutions/articles/6000217377-postman-api-collection</a>
    </p>
    <p>
    </p>
    <p>
    </p>

    - API operations
      - Reporting Dates

<ul>
      <li>
        THIS SECTION IS NOW OBSOLETE SINCE AUTOMATED REPORTING DATES INTRODUCED 2021
      </li>
      <li>
      </li>
      <li>
        Reporting  Date of Publication is set by online-publication-date of first publication record imported.  This leaves many with NULL Reporting Date but avoids filling many with 01/01/yyyy. 
      </li>
      <li>
        Subsequent publication records may add more accurate dates. 
      </li>
      <li>
        Ben's query algorithm looks for earlier dates with better date precision
      </li>
      <li>
        Andy turned Ben's added filters to
        <ul>
          <li>
            avoid inserting any 01/01/yyyy (where Scopus may pad the dd/mm and give the appearance of precision before the date reached elements
          </li>
          <li>
            avoid replacing any that have already been replaced manually, by checking publication history table
          </li>
          <li>
            create flags in output to allow further filtering in Excel or Qlikview
          </li>
        </ul>
      </li>
      <li>
        That query is now installed as a view
        <ul>
          <li>
            [local].[reporting_date_suggestions]
          </li>
        </ul>
      </li>
      <li>
        That view is pulled into Qlikview
        <ul>
          <li>
            C:\Users\EADMAREI\OneDrive - London School of Hygiene and Tropical Medicine\CRIS Implementation\API\Publication Reporting Dates/Reporting Date Suggestions.qvw
          </li>
          <li>
            Then filter to extract subsets
          </li>
          <li>
             Export ID and Date-1 to CSV
          </li>
          <li>
            run CV in postman collection runner, with
          </li>
          <li>
            <ul>
              <li>
                COLLECTION: Update reporting Dates
                <ul>
                  <li>
                    Job: PATCH update publication reporting date 1
                    <ul>
                      <li>
                        {{base-api-url}}/publications/{{id}}
                      </li>
                      <li>
                        &lt;update-object xmlns="http://www.symplectic.co.uk/publications/api"&gt; &lt;reporting-date-1&gt; {{date-1}} &lt;/reporting-date-1&gt; &lt;/update-object&gt;
                      </li>
                    </ul>
                  </li>
                </ul>
              </li>
            </ul>
          </li>
        </ul>
      </li>
    </ul>

      - Centre legacy data
      - 
- Publications
  - Data Sources

<ul>
      <li>
        https://elements.lshtm.ac.uk/datasources.html
      </li>
    </ul>

    - ResearchOnline (Eprints)

<p>
      Harvest and deposit crosswalk files can be downloaded and tested from https://elements.lshtm.ac.uk/datasource.html?cid=1&amp;sid=28 , but this is not an exercise for the faint-hearted.  Seek help if you wish to modify the harvester crosswalk. Ben@symplectic.co.uk
    </p>

      - Harvest
        - Force full harvest

<ul>
      <li>
        Full harvest is run every 35 days
      </li>
      <li>
        Individual records are checked every 14 days, as a continuous background process
      </li>
      <li>
        Modified records are requested every hour
      </li>
      <li>
        Full harvest can be requested at any time by sysadmin - takes a couple of hours
        <ul>
          <li>
            https://elements.lshtm.ac.uk/datasource.html?cid=1&amp;sid=28
          </li>
        </ul>
      </li>
    </ul>

        - OAI sets

<p>
      The Harvest is based on OAI sets defined on the Eprints server, under
    </p>
    <ul>
      <li>
        Admin - Config Tools - View Configuration - cfg.d/zzz_symplectic_oai_test.pl
      </li>
    </ul>
    <p>
      They were split into three groups based on full_text_status in order to sequence the initial harvest correctly. 
    </p>

      - Deposit
      - Subsequent Updates

<p>
      Updates in Elements may trigger updates to Eprints. There is a Relevance Schema wich declares which types and fields are monitored for updates
    </p>

    - DataCompass (Eprints)

<p>
      Elements v5.15 adds support for multiple Eprints instances, so allowing the possibility of harvesting dataset metadata from DataCompass
    </p>
    <p>
    </p>
    <p>
      DataCompass integration completed early 2022
    </p>

    - PubMed
    - Europe PubMed Central
    - Scopus
    - Web of Science

<p>
      There is a problem with a limit of 1000000 searches per year on WoS, which locks us out of WoS around April each year. Contact Symplectic Support when that happens, and they will sort it out with Clarivate.
    </p>
    <p>
    </p>

  - Data structure
    - Publication Types

<p>
      Any change to the Types structure requires a rebuild of the Reporting database for new fields to be reported.
    </p>

    - Underlying field types
  - Reporting Dates

<p>
      Publication Reporting dates are set initially by the first source record that is imported. 
    </p>
    <p>
      The system is set to work from the online-publication-date.  https://elements.lshtm.ac.uk/objecttype.html?cid=1&amp;tid=5
    </p>
    <p>
      If not found, no Reporting date is set.
    </p>
    <p>
    </p>
    <p>
      See
    </p>
    <ul>
      <li>
        http://qlikview.lshtm.ac.uk/QvAJAXZfc/opendoc.htm?document=Documents%2FRestricted%2FReporting%20date%20suggestions.qvw&amp;host=QVS%40qlikview
      </li>
    </ul>
    <p>
      A utility for finding and fixing missing reporting dates via reporting db and API via php script calling Curl on
    </p>
    <ul>
      <li>
        e.g. http://pubdb.lshtm.ac.uk/publications/administration/coding/update_reporting_date1.php?pubid=139137&amp;date1=2012-08-01
      </li>
      <li>
        UPDATE: From v5.21, Reporting dates are maintained automatically: https://support.symplectic.co.uk/support/solutions/articles/6000236133-reporting-dates-in-elements-from-v5-21
      </li>
    </ul>
    <p>
    </p>
    <p>
    </p>

- Grants
  - Types

<p>
      Currently two type have been defined
    </p>
    <ul>
      <li>
        Current Research Grants
      </li>
      <li>
        Completed Research Grants
      </li>
    </ul>
    <p>
      These incorporate a number of custom fields:
    </p>

  - Feed

<p>
      Data extracted nightly and copied to FTP server
    </p>
    <p>
      Data extract Query responsibility of Trevor Littlemore
    </p>
    <ul>
      <li>
        metadata.csv
      </li>
      <li>
        links.csv
      </li>
      <li>
        persons.csv (not used - static empty file)
      </li>
      <li>
        labels.csv  (extracted from metadata.csv/labels and imported into LSHTM Labels schemas
      </li>
    </ul>
    <p>
      Outstanding: a small number of grant currency codes are not supported at this time, but should be added to Elements in a subsequent release
    </p>
    <p>
    </p>
    <p>
      Documentation:
    </p>
    <p>
      https://lshtm-my.sharepoint.com/:w:/g/personal/eadmarei_lshtm_ac_uk/EdYV3F5daR1LmeLZnBTqKEABGYRN0LS6akkS6IeAXKfBRA?e=2R4iKk
    </p>
    <p>
    </p>
    <p>
      https://lshtm-my.sharepoint.com/:w:/g/personal/eadmarei_lshtm_ac_uk/EdYV3F5daR1LmeLZnBTqKEABGYRN0LS6akkS6IeAXKfBRA?e=2R4iKk
    </p>
    <p>
        (May 2019 version)
    </p>

  - Labels

<div class="formatted_content" data-embeddable="" data-skip-stacker-links="" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 5px; padding-right: 0px; padding-bottom: 25px; padding-left: 0px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-size: 16px; vertical-align: baseline; background-image: null; background-repeat: repeat; background-attachment: scroll; background-position: null; display: block; line-height: 21px; color: rgb(0, 0, 0); font-family: Segoe UI, helvetica, arial, sans-serif; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px">
      Hi Trevor,<br>I've packaged up that Perl script into an .exe, so as long as you can run a batch file with a scheduler somewhere, it can create the labels.csv from the metadata.csv.  Do you want to give it a try on your platform to check it works.  The batch file just says:<br>
      <pre style="margin-top: 0px; margin-bottom: 0px; margin-right: 0; margin-left: 0; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-size: 13px; vertical-align: baseline; background-image: null; background-repeat: repeat; background-attachment: scroll; background-position: null; white-space: pre-line; font-family: monaco, monospace; color: rgb(51, 51, 51)">.\metadata2labels.exe metadata.csv &gt;labels.csv 
</pre>
      I hope that makes sense.  Then you could just upload labels.csv along with the other two files.  <br><br><font size="16px"><i style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-size: 16px; vertical-align: baseline; background-image: null; background-repeat: repeat; background-attachment: scroll; background-position: null">The perl script is not needed - I'm just including it here for reference, and so I can find it if I need to modify it.  The .exe was generated with Strawberry perl and the pp module</i></font><br><br>
      <pre style="margin-top: 0px; margin-bottom: 0px; margin-right: 0; margin-left: 0; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-size: 13px; vertical-align: baseline; background-image: null; background-repeat: repeat; background-attachment: scroll; background-position: null; white-space: pre-line; font-family: monaco, monospace; color: rgb(51, 51, 51)">Install strawberry Perl from <a href="http://strawberryperl.com/" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 2px; padding-bottom: 2px; padding-right: 0px; padding-left: 0px; font-size: 13px; vertical-align: baseline; background-image: null; background-repeat: repeat; background-attachment: scroll; background-position: null; color: rgb(28, 92, 118); text-decoration: underline"><font size="13px" color="rgb(28, 92, 118)"><u>http://strawberryperl.com/</u></font></a> 
C:\&gt;   cpan -f install pp 
C:\&gt; pp -o metadata2labels.exe metadata2labels.pl
c:\&gt; .\metadata2labels.exe metadata.csv &gt;labels.csv   </pre>
    </div>
    <p>
      metadata2labels.pl
    </p>
    <p>
    </p>
    <p>
      #!/usr/bin/perl
    </p>
    <p>
    </p>
    <p>
      # LABELS FIELD NUMBER NEEDS MODIFYING IF FIELDS ARE ADDED OR REMOVED FROM METADATA.CSV
    </p>
    <p>
      #
    </p>
    <p>
      #  usage:  perl  metadata2labels.pl metadata.csv &gt; labels.csv
    </p>
    <p>
    </p>
    <p>
      #use Data::Dumper;
    </p>
    <p>
      #
    </p>
    <p>
      #$fields=array();
    </p>
    <p>
      #$labels=array();
    </p>
    <p>
    </p>
    <p>
       my $firstline=1;
    </p>
    <p>
    </p>
    <p>
        my ($Discipline,$RA1,$RA2,$Disease,$Region,$Country);
    </p>
    <p>
      print "proprietary_id,scheme,label,percentage";
    </p>
    <p>
      while (&lt;&gt;) {
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
          if ($firstline) {
    </p>
    <p>
              $firstline=0;
    </p>
    <p>
          }
    </p>
    <p>
          else {
    </p>
    <p>
    </p>
    <p>
         # print;
    </p>
    <p>
         my @fields = split /,/;
    </p>
    <p>
          #    print $fields[19];
    </p>
    <p>
           my $proprietary_id = $fields[8];
    </p>
    <p>
    </p>
    <p>
        # print STDERR  "ID=$proprietary_id\tlabels=";
    </p>
    <p>
         #print STDERR
    </p>
    <p>
         my $label_field = $fields[21]; 
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
          $label_field =~ s/"//g;
    </p>
    <p>
          $label_field =~ s/\(Not Applicable\)//g;
    </p>
    <p>
           my ($Discipline,$RA1,$RA2,$Disease,$Region,$Country);
    </p>
    <p>
       #print STDERR "split/  ";
    </p>
    <p>
       #print STDERR
    </p>
    <p>
       ($Discipline,$RA1,$RA2,$Disease,$Region,$Country) = split /;/, $label_field;
    </p>
    <p>
       #print STDERR " /split\n";  
    </p>
    <p>
          $Discipline=~ s/Life course epidemiology/Life-course epidemiology/;
    </p>
    <p>
          if (length($Discipline)&gt;0 #&amp;&amp; ($Discipline !="(Not Applicable)")
    </p>
    <p>
              ) {
    </p>
    <p>
              print "\n$proprietary_id,c-lshtm-disciplines,\"$Discipline\",";
    </p>
    <p>
              # print STDERR "===============\n$proprietary_id,c-lshtm-disciplines,\"Discipline\",";
    </p>
    <p>
          }
    </p>
    <p>
          #  s/^\s+// strips leading blanks
    </p>
    <p>
    </p>
    <p>
            $RA1 =~ s/^\s+//;
    </p>
    <p>
          $RA1=~ s/Sexual and reproductive health//;
    </p>
    <p>
          $RA1=~ s/Bayesian analysis/Bayesian Analysis/;
    </p>
    <p>
          $RA1=~ s/Research: policy relationship/Research : policy relationship/;
    </p>
    <p>
             $RA1=~ s/Perinatal Health/Perinatal health/;
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
          if ((length($RA1)&gt;0)#  &amp;&amp; ($RA1 !~  /(Not Applicable)/)
    </p>
    <p>
              ) {
    </p>
    <p>
              print "\n$proprietary_id,c-lshtm-research-areas,\"$RA1\",";
    </p>
    <p>
            #  print STDERR "==============\n$proprietary_id,c-lshtm-research-areas,\"$RA1\",";
    </p>
    <p>
          }
    </p>
    <p>
    </p>
    <p>
          $RA2 =~ s/^\s+//;
    </p>
    <p>
    </p>
    <p>
              $RA2=~ s/Sexual and reproductive health//;
    </p>
    <p>
          $RA2=~ s/Bayesian analysis/Bayesian Analysis/;
    </p>
    <p>
          $RA2=~ s/Research: policy relationship/Research : policy relationship/;
    </p>
    <p>
          $RA2=~ s/Perinatal Health/Perinatal health/;
    </p>
    <p>
    </p>
    <p>
          if ((length($RA2)&gt;0 ) #&amp;&amp; ($RA2 !~ /(Not Applicable)/)
    </p>
    <p>
              ) {
    </p>
    <p>
              print "\n$proprietary_id,c-lshtm-research-areas,\"$RA2\",";
    </p>
    <p>
             # print STDERR "==============\n$proprietary_id,c-lshtm-research-areas,\"$RA1\",";
    </p>
    <p>
          }
    </p>
    <p>
    </p>
    <p>
          if ((length($RA2)&gt;0 ) &amp;&amp; (length($RA2)&gt;0 ) ) {
    </p>
    <p>
              #code
    </p>
    <p>
              # print STDERR "\n=======RA1=======$proprietary_id,c-lshtm-research-areas,\"$RA1\",";
    </p>
    <p>
               # print STDERR "\n=======RA2=======$proprietary_id,c-lshtm-research-areas,\"$RA2\",";
    </p>
    <p>
          }
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
          $Disease=~ s/^\s+//;
    </p>
    <p>
         # Diarrhoeal diseases
    </p>
    <p>
          $Disease=~ s/^Diarrhoeal disease$/Diarrhoeal diseases/;
    </p>
    <p>
          if ((length($Disease)&gt;0)#  &amp;&amp; ($Disease != "(Not Applicable)")
    </p>
    <p>
              ) {
    </p>
    <p>
              print "\n$proprietary_id,c-lshtm-diseases-conditions,\"$Disease\",";
    </p>
    <p>
              # print STDERR "\n===========$proprietary_id,c-lshtm-diseases-conditions,\"$Disease\",";
    </p>
    <p>
          }
    </p>
    <p>
          $Region=~ s/^\s+//;
    </p>
    <p>
          if ((length($Region)&gt;0)#  &amp;&amp; ($Region != "(Not Applicable)")
    </p>
    <p>
              ) {
    </p>
    <p>
              print "\n$proprietary_id,c-lshtm-regions,\"$Region\",";
    </p>
    <p>
             # print STDERR  "\n=============$proprietary_id,c-lshtm-region,\"$Region\",";
    </p>
    <p>
          }
    </p>
    <p>
          $Country=~ s/^\s+//;
    </p>
    <p>
          $Country=~ s/Viet Nam/Vietnam/;
    </p>
    <p>
          $Country=~ s/Great Britain/United Kingdom/;
    </p>
    <p>
          $Country=~ s/Laos/Lao PDR/;
    </p>
    <p>
          $Country=~ s/Kazakstan/Kazakhstan/;
    </p>
    <p>
          $Country=~ s/Ivory Coast/Cote d'Ivoire/;
    </p>
    <p>
          $Country=~ s/Bosnia-Herzegovina/Bosnia and Herzegovina/;
    </p>
    <p>
          $Country=~ s/Congo \(Democratic Republic/Congo/;
    </p>
    <p>
          $Country=~ s/^Syria$/Syrian Arab Republic/;
    </p>
    <p>
          $Country=~ s/^Russia$/Russian Federation/;
    </p>
    <p>
          $Country=~ s/^Palastinian Territory/West Bank and Gaza/;
    </p>
    <p>
          $Country=~ s/Burma \(Myanmar\)/Myanmar/;
    </p>
    <p>
          $Country=~ s/Hong Kong$/Hong Kong SAR/;
    </p>
    <p>
          $Country=~ s/USA/United States/;
    </p>
    <p>
          $Country=~ s/Ukrainan/Ukraine/;
    </p>
    <p>
          $Country=~ s/Moldavia/Moldova/;
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
           if ((length($Country)&gt;0)#  &amp;&amp; ($Country !="(Not Applicable)")
    </p>
    <p>
               ) {
    </p>
    <p>
              print  "\n$proprietary_id,c-lshtm-countries,\"$Country\",";
    </p>
    <p>
             #  print STDERR "\n==============$proprietary_id,c-lshtm-countries,\"$Country\",";
    </p>
    <p>
          }
    </p>
    <p>
    </p>
    <p>
        #  print "$proprietary_id\t$Discipline\t$RA1\t$RA2\t$Disease\t$Region\t$Country \n";
    </p>
    <p>
      } #end else
    </p>
    <p>
    </p>
    <p>
      } # end while
    </p>

- Professional Activities
- Reporting Database

<p>
      SQL-Server database
    </p>
    <ul>
      <li>
        https://support.symplectic.co.uk/support/solutions/folders/6000177989  (Documentation)
      </li>
      <li>
        hostname: elements.lshtm.ac.uk
      </li>
      <li>
        database:  
        <ul>
          <li>
             "elements-lshtm1-reporting".dbo.              =&gt; LIVE
          </li>
          <li>
             "elements-lshtm2-reporting".dbo.             =&gt;  DEV
          </li>
        </ul>
      </li>
      <li>
      </li>
      <li>
        Login: Andy.Reid
      </li>
      <li>
        Password:  &lt;secret&gt;   Request new login from Symplectic Support
      </li>
      <li>
        Login: profiles   (used for extracting publications data to populate Staff Profiles)
      </li>
    </ul>

  - Documentation

<p>
      Full docs available from Symplectic Support website
    </p>

  - Rebuild custom views {#ID_463587821}

<p>
      Rebuild of database destroys custom views, which are required for reports and feeds.  Rebuild script is maintained here:
    </p>
    <p>
    </p>
    <p>
      May 2022 - abandoned semi automatic method below, and gone back to manual script, kept at
    </p>
    <p>
    </p>
    <p>
      https://lshtm-my.sharepoint.com/:u:/g/personal/eadmarei_lshtm_ac_uk/Ec8Qo8GUM5VFtcBiFWqBoeMBdUvrpPk0zZ6tdFkgS71RYQ?e=PpuXZk     (17/05/2022)
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
      ==================== Obsolete below this point ==============================
    </p>
    <p>
      Sept 2021
    </p>
    <p>
      Rebuild script is now generated semi-automatically from existing database, prior to rebuild
    </p>
    <ol>
      <li>
        Open SSMS
      </li>
      <li>
        Connect to elements.lshtm.ac.uk as Andy.reid or other write-enabled account
      </li>
      <li>
        Rt-click on database elements-lshtm-prod-reporting - then tasks - generate scripts
      </li>
      <li>
        Select objects:
        <ul>
          <li>
            views LSHTM.* ,  local.*
          </li>
          <li>
            Programmability/Stored Procedures  LSHTM.*
          </li>
          <li>
                                          / Functions/Scalar valued functions: LSHTM.*
          </li>
          <li>
          </li>
          <li>
            Security/Schemas: LSHTM, local
          </li>
        </ul>
      </li>
      <li>
        select Advnced options
        <ul>
          <li>
            Source Server Version : SQL Server 2019 (15.0.2080)     Source Database Engine Edition : Microsoft SQL Server Standard Edition     Source Database Engine Type : Standalone SQL Server     Target Server Version : SQL Server 2019     Target Database Engine Edition : Microsoft SQL Server Standard Edition     Target Database Engine Type : Standalone SQL Server
          </li>
          <li>
             Options screenshot:              https://lshtm-my.sharepoint.com/:i:/g/personal/eadmarei_lshtm_ac_uk/EUO6Zbuobk1Jq67biggcjQIB9IXU4O8XaWJkBhV7W1RFSQ?e=n5VKAU
          </li>
          <li>
            save to file in dated folder
          </li>
        </ul>
      </li>
      <li>
        save second copy with USE.... dev
      </li>
      <li>
        WHEN RUN THERE MAY BE ONE OR TWO ERRORS DUE TO NESTED PROCEDURES CREATED IN 'WRONG' ORDER - THESE CAN BE IGNORED
        <ul>
          <li>
          </li>
          <li>
            The module 'LSHTM_ProjectGetJSON_004' depends on the missing object 'LSHTM.LSHTM_UserGetJSON'. The module will still be created; however, it cannot run successfully until the object exists.
          </li>
          <li>
            .
          </li>
          <li>
             The module 'LSHTM_ProjectGetRSS' depends on the missing object 'LSHTM.LSHTM_ProjectGetRSS_FullAuthors'. The module will still be created; however, it cannot run successfully until the object exists.
          </li>
          <li>
            The module 'LSHTM_ProjectGetRSS' depends on the missing object 'LSHTM.LSHTM_ProjectGetRSS_orig'. The module will still be created; however, it cannot run successfully until the object exists.
          </li>
        </ul>
      </li>
    </ol>

  - Qlikview

<p>
      <a href="http://qlikview.lshtm.ac.uk/QvAJAXZfc/opendoc.htm?document=Documents%2FRestricted%2FREF2021%2FLiveREF.qvw&amp;host=QVS%40qlikview">http://qlikview.lshtm.ac.uk/QvAJAXZfc/opendoc.htm?document=Documents%2FRestricted%2FREF2021%2FLiveREF.qvw&amp;host=QVS%40qlikview</a>
    </p>
    <p>
    </p>

  - Custom Reports

<ol>
      <li>
        Request SQL account from Symplectic, with matching reportserver account (possibly windows account?)
      </li>
      <li>
        Create local Windows account on desktop with matching name and password
      </li>
      <li>
        Install ReportBuilder 2014 version (may be updated in v5.14.1)
      </li>
      <li>
        Shift-RtClick on Internet Explorer and run as account above (only microsoft browsers will work, I believe)
        <ol>
          <li>
            UPDATE 2022: with SQL Server 2019 Chrome seems to work and no need to open a special instance. Just log in to SSRS when requested, and again when launching Report Builder each time.
          </li>
          <li>
            <font color="#cccccc" face="Arial, Helvetica Neue, Helvetica, sans-serif"><i>Google Chrome is not a supported browser for SSRS Report Builder. Only IE, Firefox and Safari are "officially" supported.</i></font>
          </li>
          <li>
            <i><font color="#cccccc">Chrome is OK but cannot launch ReportBuilder. Once ReportBuilder is installed on your desktop and running as user to match the SQL server username e.g. Andy.Reid then you can use Chrome to make changes such as resetting the data-source once the design is finalised in ReportBuilder</font></i>
          </li>
        </ol>
      </li>
      <li>
         Go to https://elements.lshtm.ac.uk/Reports
      </li>
      <li>
        Create datasource in
        <ol>
          <li>
            <a href="https://elements.lshtm.ac.uk/Reports/Pages/Folder.aspx">Home</a> &gt; <a href="https://elements.lshtm.ac.uk/Reports/Pages/Folder.aspx?ItemPath=%2felements-lshtm1">elements-lshtm-prod</a> &gt; <a href="https://elements.lshtm.ac.uk/Reports/Pages/Folder.aspx?ItemPath=%2felements-lshtm1%2fCustom+Reports">Custom Reports</a> 
          </li>
          <li>
            pointing at elements.lshtm.ac.uk/reportserver
          </li>
          <li>
            login with your SQL server account
          </li>
          <li>
            Once the design is complete and tested, it can be switched to run off the default DataSource 'ElementsReporting', but that cannot be used by ReportBuilder for development.  The switch has to be done via the web portal <a href="https://elements.lshtm.ac.uk/Reports/Pages/Folder.aspx?ItemPath=%2felements-lshtm1">https://elements.lshtm.ac.uk/Reports/</a>
          </li>
        </ol>
      </li>
      <li>
        Create datasets and reports about Users, Groups, Assessment Exercises, Assessment Exercise definitions
        <ol>
          <li>
            Reports require a single non-nullable INTEGER parameter such as UserID or GroupID or Assessment Exercise Definition ID
          </li>
          <li>
            Date Range parameters are also possible
          </li>
        </ol>
      </li>
      <li>
         go to Elements Reporting Hub
        <ol>
          <li>
            Create new report
          </li>
          <li>
            Set availability
          </li>
          <li>
            Set target groups
          </li>
        </ol>
      </li>
    </ol>

    - Registry fix for links in Office

<p class="MsoNormal">
      <font color="#1F497D">link to reg file </font>
    </p>
    <p class="MsoNormal">
      <font color="#1F497D">https://lshtm-my.sharepoint.com/:u:/g/personal/eadmarei_lshtm_ac_uk/ERDKAM40SvpPsWY8Wuu7gYEBp6ikLd1KWoUPVxe0ypJMzQ?e=LZcRTQ </font>
    </p>
    <p class="MsoNormal">
    </p>
    <p class="MsoNormal">
      <font color="#1F497D">Embedded links will not work by default in EXcel or word. </font>
    </p>
    <p class="MsoNormal">
      <font color="#1F497D">There is a registry hack tht fixes it on individual machines, but obvs that is not really solution for general users: </font><o p="#DEFAULT"></o>
    </p>
    <p>
        <o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal">
      <font color="#1F497D">[HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\9.0\Common\Internet] </font><o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal">
      <font color="#1F497D">"ForceShellExecute"=dword:00000001 </font><o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal">
    </p>
    <p class="MsoNormal">
      <font color="#1F497D">link to reg file </font>
    </p>
    <p class="MsoNormal">
      <font color="#1F497D">https://lshtm-my.sharepoint.com/:u:/g/personal/eadmarei_lshtm_ac_uk/ERDKAM40SvpPsWY8Wuu7gYEBp6ikLd1KWoUPVxe0ypJMzQ?e=LZcRTQ </font>
    </p>
    <p class="MsoNormal">
    </p>
    <p class="MsoNormal">
    </p>
    <p class="MsoNormal">
    </p>

  - Dashboards

<p>
      Developed in a standalone Dashboard designer available from Symplectic Support website
    </p>

  - CV Template

<p>
      <font color="#444444" face="Roboto"><a href="mailto:evelina@symplectic.co.uk">
</a></font>    </p>
    <p>
      Constructed as a Custom Report, developed as a charged extra by Evelina, and tweaked by Andy Reid.
    </p>
    <p>
      Planned to release in time for Senior Staff Review 2019 [Evelina leaving August 2019, try ben@symplectic.co.uk]
    </p>
    <p>
      Full almost final version released July 19 2019.
    </p>
    <p>
    </p>
    <p>
      18/05/22 Now up to version 20, with additions and improvements driven by additions to data (such as Internal Citizenships) and changes to Promotions and Review protocols.
    </p>

- Projects
  - Research Centres

<p>
      New Project type created: 'Research Centre' for officially supported Centres
    </p>
    <p>
      Second type, Research Group, for other groupings
    </p>

    - Old Links
      - Members

<p>
    </p>
    <ol>
      <li>
        Create project in Elements and give unitcode to match Pubsdb/eprints X*** code
      </li>
      <li>
        CENTRE MEMBERS:
        <ol>
          <li>
            Reload U:\School Publications\Private\_pubs\qlikview\PubsDB\School publications 2001-present.qvw
          </li>
          <li>
            Export to CSV using U:\School Publications\Private\_pubs\qlikview\PubsDB\School publications 2001-present.qvw (Centres tab)
          </li>
          <li>
            Import using PostMan to Elements API
          </li>
        </ol>
      </li>
      <li>
        CENTRE PUBS:
        <ol>
          <li>
            C:\Users\EADMAREI\OneDrive - London School of Hygiene and Tropical Medicine\Qlik\Elements\Live.qvw  (centres Tab)
          </li>
          <li>
            Export table as csv
          </li>
          <li>
          </li>
        </ol>
      </li>
    </ol>
    <p>
      Request
    </p>
    <p>
      <font face="Courier New">&lt;import-relationship xmlns="http://www.symplectic.co.uk/publications/api"&gt; </font>
    </p>
    <p>
      <font face="Courier New">    &lt;from-object&gt;user({{userID}})&lt;/from-object&gt; </font>
    </p>
    <p>
      <font face="Courier New">    &lt;to-object&gt;project({{projID}})&lt;/to-object&gt; </font>
    </p>
    <p>
      <font face="Courier New">    &lt;type-name&gt;user-project-research&lt;/type-name&gt; </font>
    </p>
    <p>
      <font face="Courier New">&lt;/import-relationship&gt;</font>
    </p>
    <p>
    </p>
    <p>
      Run in Collection Runner using CSV file as data source
    </p>

      - Publications

<p>
      Exported from PubsDB and imported via API
    </p>
    <p>
    </p>
    <ol>
      <li>
        CENTRE PUBS:
        <ol>
          <li>
            Z:\Elements\Reporting\LiveREF.qvw  (projects Tab)
          </li>
          <li>
            Export table as csv
          </li>
          <li>
            Import via Postman to API
          </li>
          <li>
            API body code:
          </li>
        </ol>
      </li>
    </ol>
    <p>
      &lt;import-relationship xmlns="http://www.symplectic.co.uk/publications/api"&gt;
    </p>
    <p>
          &lt;from-object&gt;publication({{pubID}})&lt;/from-object&gt;
    </p>
    <p>
          &lt;to-object&gt;project({{projID}})&lt;/to-object&gt;
    </p>
    <p>
          &lt;type-name&gt;publication-project-derivative&lt;/type-name&gt;
    </p>
    <p>
      &lt;/import-relationship&gt;
    </p>

    - New Links
      - Members
        - User-initiated

<p>
      Users can add themselves to Centres and other Projects:
    </p>
    <ol>
      <li>
        Menu - Projects - Add Project Relationship  (top right)
      </li>
    </ol>

        - Admin-initiated

<p>
      Projects - &lt;project - click title to bring up details&gt; - bottom of links list - <font color="rgb(33, 36, 43)" face="Roboto, Helvetica, Arial, sans-serif"><b>Link Elements users to this project </b></font>
    </p>
    <p>
    </p>
    <p>
      Or via UserGroup - &lt;Project User Group&gt; -  Project Users Report, which gives hyperlinks to create project-user links via API
    </p>
    <p>
      Hyperlinks not currently working, but userid and projid can be used as CSV input to Postman (see System - API)
    </p>

        - Synchronise user group membership

<p>
      User Group linked to Project by group.ID=Project.c-user-group-id for reporting purposes
    </p>

          - DB view: local.user_projects 

<p>
    </p>
    <p>
    </p>
    <p>
      CREATE view [local].[user_projects] as
    </p>
    <p>
    </p>
    <p>
      SELECT
    </p>
    <p>
      distinct
    </p>
    <p>
      u.ID,
    </p>
    <p>
      u.[Proprietary ID],
    </p>
    <p>
      u.Username,
    </p>
    <p>
       [project-codes] = STUFF((
    </p>
    <p>
                SELECT ';' + p.[c-project-code]
    </p>
    <p>
                FROM  [Project] p inner join [Project User Relationship] pur  on p.ID = pur.[Project ID]      
    </p>
    <p>
         where u.ID=pur.[User ID]
    </p>
    <p>
                FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 1, '')
    </p>
    <p>
        FROM [User] u  inner join [Project User Relationship] pur2 on u.ID = pur2.[User ID]
    </p>

          - HR Feed: [Generic24]

<p>
      HR Feed draws from view local.user_projects to fill Generic24 with list of linked projects for each user
    </p>

          - Auto Group

<p>
      User Group has child auto group e.g.
    </p>
    <ul>
      <li>
        " WHERE [Generic24] LIKE '%XMAL%' "
      </li>
    </ul>

      - [Report](files/insert_project_publication.php)

<p>
      Group Report
    </p>
    <p>
      <font color="rgb(68, 68, 68)" face="Roboto, Helvetica, Arial, sans-serif"><b>Link Group publications to project </b></font>
    </p>
    <p>
    </p>
    <ul>
      <li>
        Links UserGroup to Project
      </li>
      <li>
        lists publications by the UserGroup
      </li>
      <li>
        marks those already linked
      </li>
      <li>
        provides 'Link to Group' hyperlinks, call to PHP script
      </li>
      <li>
      </li>
    </ul>

        - PHP script

<p>
      &lt;?php
    </p>
    <p>
      // USAGE:   http://pubdb.lshtm.ac.uk/publications/groups/insert_project_publication.php?pubid=<i>nnnnn</i>&amp;projid=<i>nnnnn</i>
    </p>
    <p>
      $username='projects';
    </p>
    <p>
      $password = 'xxxxxxxxxxxxxxxxxxxxxxxxx';
    </p>
    <p>
    </p>
    <p>
      foreach($_GET as $varname =&gt; $value){
    </p>
    <p>
           "$varname = $value". "&lt;br&gt;\n";
    </p>
    <p>
      //$formVars[$varname] = trim($value, 300);
    </p>
    <p>
      $formVars[$varname] = $value;
    </p>
    <p>
      }
    </p>
    <p>
    </p>
    <p>
       $pubid = $formVars["pubid"];
    </p>
    <p>
      #$back=$formVars['back'].$row_num;
    </p>
    <p>
       $projid=$formVars["projid"];
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
      $curl = curl_init();
    </p>
    <p>
    </p>
    <p>
      curl_setopt_array($curl, array(
    </p>
    <p>
        CURLOPT_PORT =&gt; "8091",
    </p>
    <p>
        CURLOPT_URL =&gt; "https://elements.lshtm.ac.uk:8091/secure-api/v5.5/relationships",
    </p>
    <p>
         CURLOPT_HTTPAUTH =&gt; CURLAUTH_ANY,
    </p>
    <p>
         CURLOPT_USERPWD  =&gt; "$username:$password",
    </p>
    <p>
        CURLOPT_RETURNTRANSFER =&gt; true,
    </p>
    <p>
        CURLOPT_SSL_VERIFYPEER =&gt; false,
    </p>
    <p>
        CURLOPT_ENCODING =&gt; "",
    </p>
    <p>
        CURLOPT_MAXREDIRS =&gt; 10,
    </p>
    <p>
        CURLOPT_TIMEOUT =&gt; 30,
    </p>
    <p>
        CURLOPT_HTTP_VERSION =&gt; CURL_HTTP_VERSION_1_1,
    </p>
    <p>
        CURLOPT_CUSTOMREQUEST =&gt; "POST",
    </p>
    <p>
        CURLOPT_POSTFIELDS =&gt; "&lt;import-relationship xmlns=\"http://www.symplectic.co.uk/publications/api\"&gt;
    </p>
    <p>
      &lt;from-object&gt;publication($pubid)&lt;/from-object&gt;
    </p>
    <p>
      &lt;to-object&gt;project($projid)&lt;/to-object&gt;
    </p>
    <p>
      &lt;type-name&gt;publication-project-derivative&lt;/type-name&gt;
    </p>
    <p>
      &lt;/import-relationship&gt;",
    </p>
    <p>
        CURLOPT_HTTPHEADER =&gt; array(
    </p>
    <p>
          "Content-Type: text/xml",
    </p>
    <p>
          "Postman-Token: 0948726a-9cbe-4650-b0f9-54f9af5b0cf9",
    </p>
    <p>
          "cache-control: no-cache"
    </p>
    <p>
        ),
    </p>
    <p>
      ));
    </p>
    <p>
    </p>
    <p>
      //printr (curl_getinfo($curl));
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
      $response = curl_exec($curl);
    </p>
    <p>
      $err = curl_error($curl);
    </p>
    <p>
    </p>
    <p>
      curl_close($curl);
    </p>
    <p>
    </p>
    <p>
      if ($err) {
    </p>
    <p>
        echo "cURL Error #:" . $err;
    </p>
    <p>
      } else {
    </p>
    <p>
        echo $response;
    </p>
    <p>
      }
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
      ?&gt;
    </p>

    - Change type

<p>
      There is no way to change Project type in interface once created, but API can change type of a Project
    </p>
    <p>
    </p>
    <p>
      PostMan parameters:
    </p>
    <p>
    </p>
    <p>
      OPERATION:
    </p>
    <p>
      Patch
    </p>
    <p>
    </p>
    <p>
      BODY:
    </p>
    <p>
      &lt;update-object xmlns="http://www.symplectic.co.uk/publications/api" type-name ="<font color="#ff3333">c-research-centre-cloned</font>"&gt;&lt;/update-object&gt;   # "<font color="#ff3333">c-research-centre-cloned = Research Group.   c-research-centre = Research Centre</font>
    </p>
    <p>
    </p>
    <p>
      PRE-REQUEST SCRIPT
    </p>
    <p>
      pm.globals.set("cats", "projects");
    </p>
    <p>
      pm.globals.set("id", "<font color="#ff3333">111833</font>");          #id of project object
    </p>

      - JSON
        - [Update Project Type.postman_collection.json](Centres/Update%20Project%20Type.postman_collection.json)

<p>
      https://lshtm-my.sharepoint.com/:u:/g/personal/eadmarei_lshtm_ac_uk/EX3qOLaiIEFJtR0MfWQeXxYBL443xeJI9bHypL7hK4quKg?e=Uyae1C
    </p>

- Staff Profiles
  - Publicatiions

<p>
      Publications feed to profiles is via reporting database view [local].[profile_publications]
    </p>
    <p>
    </p>
    <p>
      Currently this must be rebuilt any time the database is rebuilt or  the system upgraded. 
    </p>
    <p>
    </p>
    <p>
      Schema [local] must be created first.
    </p>
    <p>
    </p>
    <p>
      full set of create scripts is here:
    </p>
    <p>
      https://lshtm-my.sharepoint.com/:u:/g/personal/eadmarei_lshtm_ac_uk/EZXaVT2wWRdCkO60pL3hNkQBysKldWkavcoSD-FsTfTSzA?e=vUQ1B8
    </p>

    - Create View

<p>
    </p>
    <p>
      USE [elements-lshtm1-reporting]
    </p>
    <p>
      GO
    </p>
    <p>
    </p>
    <p>
      /****** Object:  View [local].[profile_publications]    Script Date: 19/07/2019 14:27:04 ******/
    </p>
    <p>
      SET ANSI_NULLS ON
    </p>
    <p>
      GO
    </p>
    <p>
    </p>
    <p>
      SET QUOTED_IDENTIFIER ON
    </p>
    <p>
      GO
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
      Create view [local].[profile_publications] as
    </p>
    <p>
      WITH pubmed AS (SELECT        [Publication ID], MAX([Data Source Proprietary ID]) AS pmid, { fn CONCAT('http://www.ncbi.nlm.nih.gov/pubmed/', MAX([Data Source Proprietary ID]))
    </p>
    <p>
                                                                       } AS URL
    </p>
    <p>
                                              FROM            dbo.[Publication Record]
    </p>
    <p>
                                              WHERE        ([Data Source] = N'Pubmed')
    </p>
    <p>
                                              GROUP BY [Publication ID]), eprints AS
    </p>
    <p>
          (SELECT        [Publication ID], MAX([Data Source Proprietary ID]) AS eprintid, { fn CONCAT('https://www.researchonline.lshtm.ac.uk/', MAX([Data Source Proprietary ID]))
    </p>
    <p>
                                      } AS URL
    </p>
    <p>
            FROM            dbo.[Publication Record] AS [Publication Record_1]
    </p>
    <p>
            WHERE        ([Data Source] = N'Eprints') AND ([c-eprints-full-text-status] IN ('public', 'restricted'))
    </p>
    <p>
            GROUP BY [Publication ID]), doi_table AS
    </p>
    <p>
          (SELECT        ID AS [Publication ID], doi, { fn CONCAT('http://dx.doi.org/', doi) } AS URL
    </p>
    <p>
            FROM            dbo.Publication
    </p>
    <p>
            WHERE        (doi IS NOT NULL))
    </p>
    <p>
    </p>
    <p>
          SELECT        TOP (100) PERCENT dbo.[User].[Employee Number] AS staff_id, dbo.[User].Username AS user_id, Publication_1.authors AS author, Publication_1.title,
    </p>
    <p>
                                    Publication_1.volume, Publication_1.issue AS number, Publication_1.[pagination Begin] AS pages,
    </p>
    <p>
    </p>
    <p>
      isnull(Publication_1.journal,Publication_1.[parent-title] )AS secondary_title,
    </p>
    <p>
    </p>
    <p>
        LEFT(Publication_1.[Reporting Date 1], 4) AS year, Publication_1.doi AS custom_4, Publication_1.editors AS secondary_author,
    </p>
    <p>
                                    Publication_1.publisher, Publication_1.[publisher-url] AS url, Publication_1.Type AS reference_type, Publication_1.[place-of-publication] AS place_published,
    </p>
    <p>
                                    Publication_1.publisher AS Expr1, Publication_1.types AS library, ISNULL(eprints_1.URL, ISNULL(pubmed_1.URL, ISNULL(doi_table_1.URL, NULL)))
    </p>
    <p>
                                    AS publication_url
    </p>
    <p>
           FROM            dbo.[User Publication Preferences] INNER JOIN
    </p>
    <p>
                                    dbo.Publication AS Publication_1 ON dbo.[User Publication Preferences].[Publication ID] = Publication_1.ID INNER JOIN
    </p>
    <p>
                                    dbo.[User] ON dbo.[User Publication Preferences].[User ID] = dbo.[User].ID LEFT OUTER JOIN
    </p>
    <p>
                                    eprints AS eprints_1 ON eprints_1.[Publication ID] = Publication_1.ID LEFT OUTER JOIN
    </p>
    <p>
                                    pubmed AS pubmed_1 ON pubmed_1.[Publication ID] = Publication_1.ID LEFT OUTER JOIN
    </p>
    <p>
                                    doi_table AS doi_table_1 ON doi_table_1.[Publication ID] = Publication_1.ID
    </p>
    <p>
           WHERE        (dbo.[User Publication Preferences].Favourite = 1)
    </p>
    <p>
           ORDER BY user_id
    </p>
    <p>
      GO
    </p>

    - Revised View: preferred or recent

<p>
      USE [elements-lshtm1-reporting]
    </p>
    <p>
      GO
    </p>
    <p>
    </p>
    <p>
      /****** Object:  View [local].[profile_publications_selected_recent_preferred]    Script Date: 16/09/2019 15:41:46 ******/
    </p>
    <p>
      SET ANSI_NULLS ON
    </p>
    <p>
      GO
    </p>
    <p>
    </p>
    <p>
      SET QUOTED_IDENTIFIER ON
    </p>
    <p>
      GO
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
      CREATE VIEW [local].[profile_publications_selected_recent_preferred]
    </p>
    <p>
      AS
    </p>
    <p>
      WITH
    </p>
    <p>
    </p>
    <p>
      -- create pubmed URL if available
    </p>
    <p>
      pubmed AS (SELECT        [Publication ID], MAX([Data Source Proprietary ID]) AS pmid, { fn CONCAT('http://www.ncbi.nlm.nih.gov/pubmed/', MAX([Data Source Proprietary ID]))
    </p>
    <p>
                                                                       } AS URL
    </p>
    <p>
                                              FROM            dbo.[Publication Record]
    </p>
    <p>
                                              WHERE        ([Data Source] = N'Pubmed')
    </p>
    <p>
                                              GROUP BY [Publication ID]),
    </p>
    <p>
      -- create eprints URL if there is a full-text file available
    </p>
    <p>
      eprints AS
    </p>
    <p>
          (SELECT        [Publication ID], MAX([Data Source Proprietary ID]) AS eprintid, { fn CONCAT('https://researchonline.lshtm.ac.uk/', MAX([Data Source Proprietary ID]))
    </p>
    <p>
                                      } AS URL
    </p>
    <p>
            FROM            dbo.[Publication Record] AS [Publication Record_1]
    </p>
    <p>
            WHERE        ([Data Source] = N'Eprints') AND ([c-eprints-full-text-status] IN ('public', 'restricted'))
    </p>
    <p>
            GROUP BY [Publication ID]),
    </p>
    <p>
    </p>
    <p>
      -- create doi URL
    </p>
    <p>
      doi_table AS
    </p>
    <p>
          (SELECT        ID AS [Publication ID], doi, { fn CONCAT('http://dx.doi.org/', doi) } AS URL
    </p>
    <p>
            FROM            dbo.Publication
    </p>
    <p>
            WHERE        (doi IS NOT NULL))
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
      -- select all authors who have not selected any favourites
    </p>
    <p>
      ,noselect as (SELECT distinct u.ID  as [User ID]
    </p>
    <p>
      from [User] u LEFT JOIN [User Publication Preferences] upp on upp.[User ID] = u.ID
    </p>
    <p>
      and upp.Favourite = 1
    </p>
    <p>
      where upp.[User ID]  is NULL
    </p>
    <p>
      and u.[Is Current Staff] = 1)
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
      -- Select all publications/users/date by authors who have not selected any favourites
    </p>
    <p>
      ,noselectpubs as
    </p>
    <p>
      (SELECT distinct [Publication].ID as [Publication ID]
    </p>
    <p>
      , pur.[User ID],
    </p>
    <p>
      coalesce(pur.[Reporting Date 1],Publication.[Reporting Date 1],[Publication].[publication-date]) as date
    </p>
    <p>
      from [Publication]  inner join [Publication User Relationship] pur on [Publication].[ID] = pur.[Publication ID]
    </p>
    <p>
      where pur.[User ID] in (select * from noselect)
    </p>
    <p>
      and [Publication].types  not like '%errat%'
    </p>
    <p>
      and [Publication].types  not like '%corr%'
    </p>
    <p>
      )
    </p>
    <p>
      ,
    </p>
    <p>
    </p>
    <p>
      -- select n most recent for authors who have not selected any favourites
    </p>
    <p>
      noselectrecent as (select nsp.* from (SELECT nsp.* , row_number() over (partition  by [User ID]  order by date desc) seqnum
    </p>
    <p>
            from noselectpubs nsp
    </p>
    <p>
           ) nsp
    </p>
    <p>
      where seqnum &lt;=8
    </p>
    <p>
      ),
    </p>
    <p>
    </p>
    <p>
      preferred as (
    </p>
    <p>
      select  
    </p>
    <p>
      pur.[User ID]
    </p>
    <p>
      ,pur.[Publication ID]
    </p>
    <p>
      ,coalesce(upp.[Preferred Record ID], p.[Publication Record ID] ) userPrefID
    </p>
    <p>
      ,IIF(upp.[Preferred Record ID] is not null,'preferred','default') as userPref
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
      from
    </p>
    <p>
    </p>
    <p>
      Publication p
    </p>
    <p>
           inner join
    </p>
    <p>
           [Publication User Relationship] pur on p.ID = pur.[Publication ID]
    </p>
    <p>
      inner join
    </p>
    <p>
      [User] u on u.ID=pur.[User ID]
    </p>
    <p>
      left join
    </p>
    <p>
           [User Publication Preferences] upp on pur.[User ID] = upp.[User ID] and pur.[Publication ID]=upp.[Publication ID]
    </p>
    <p>
      where u.[Is Current Staff] = 1
    </p>
    <p>
    </p>
    <p>
      )
    </p>
    <p>
      --,prefpr as (select * from [Publication Record] where ID in (select userPrefID from preferred))
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
          SELECT      
    </p>
    <p>
      Distinct
    </p>
    <p>
      -- iif(nsp.seqnum is not Null,'recent','selected') as status,
    </p>
    <p>
      -- nsp.seqnum,
    </p>
    <p>
      -- pr.[Data Source],
    </p>
    <p>
      -- pref.userPref,
    </p>
    <p>
      -- pref.userPrefID,
    </p>
    <p>
      -- pur.[Publication ID],
    </p>
    <p>
      u.[Employee Number] AS staff_id,   -- historic, probably redundant, but gateway JSON template expects it
    </p>
    <p>
      u.Username AS user_id,             -- login ID as key to Gateway record
    </p>
    <p>
      pr.authors AS author,
    </p>
    <p>
      pr.title,
    </p>
    <p>
                                  pr.volume,
    </p>
    <p>
      pr.issue AS number,
    </p>
    <p>
      pr.[pagination Begin] AS pages,  
    </p>
    <p>
      isnull(pr.journal,pr.[parent-title] )AS secondary_title,
    </p>
    <p>
        LEFT(p.[Reporting Date 1], 4) AS year,
    </p>
    <p>
        p.doi AS custom_4,
    </p>
    <p>
        p.editors AS secondary_author,
    </p>
    <p>
                                    p.publisher,
    </p>
    <p>
        p.[publisher-url] AS url,
    </p>
    <p>
        p.Type AS reference_type,
    </p>
    <p>
        pr.[place-of-publication] AS place_published,
    </p>
    <p>
                                    p.publisher AS Expr1,         -- not used but not sure if it will break something if it is removed
    </p>
    <p>
        p.types AS library        -- 
    </p>
    <p>
      , ISNULL(e.URL, ISNULL(pm.URL, ISNULL(doi_table.URL, NULL))) AS publication_url
    </p>
    <p>
           FROM [Publication User Relationship] pur
    </p>
    <p>
      INNER JOIN
    </p>
    <p>
                                    Publication AS p
    </p>
    <p>
      ON pur.[Publication ID] = p.ID
    </p>
    <p>
      INNER JOIN
    </p>
    <p>
        preferred pref ON
    </p>
    <p>
      pref.[User ID]=pur.[User ID]
    </p>
    <p>
      and pref.[Publication ID]=pur.[Publication ID]
    </p>
    <p>
      inner join
    </p>
    <p>
      [Publication Record] pr on
    </p>
    <p>
      pr.ID = pref.userPrefID  and
    </p>
    <p>
      pr.[Publication ID]=p.ID
    </p>
    <p>
      inner join
    </p>
    <p>
                                    dbo.[User] u ON
    </p>
    <p>
      pur.[User ID] = u.ID
    </p>
    <p>
      and pref.[User ID] =  u.ID
    </p>
    <p>
    </p>
    <p>
        LEFT OUTER JOIN
    </p>
    <p>
                                   eprints AS e ON e.[Publication ID] = p.ID LEFT OUTER JOIN
    </p>
    <p>
                                    pubmed AS pm ON pm.[Publication ID] = p.ID LEFT OUTER JOIN
    </p>
    <p>
                                    doi_table  ON doi_table.[Publication ID] = p.ID LEFT OUTER JOIN
    </p>
    <p>
        [User Publication Preferences] upp on
    </p>
    <p>
      (
    </p>
    <p>
      upp.[Publication ID] = p.ID and
    </p>
    <p>
      upp.[User ID]=pur.[User ID] and
    </p>
    <p>
      upp.[User ID] = u.ID
    </p>
    <p>
    </p>
    <p>
      ) lEFT OUTER JOIN
    </p>
    <p>
    </p>
    <p>
        noselectrecent nsp on (nsp.[Publication ID] = pur.[Publication ID] and nsp.[User ID] = pur.[User ID])
    </p>
    <p>
           WHERE        ((upp.Favourite = 1) or nsp.seqnum is not null)
    </p>
    <p>
      and pur.[Privacy Level] &lt;&gt;'Private'
    </p>
    <p>
    </p>
    <p>
      and u.[Is Current Staff] = 1
    </p>
    <p>
    </p>
    <p>
          -- ORDER BY user_id
    </p>
    <p>
      -- ,seqnum
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
      GO
    </p>
    <p>
    </p>

  - Core profile
    - Preferred Name

<p>
      Enable in System Admin - Global Settings
    </p>
    <p>
      User setting in Menu - My Account -Account Settings
    </p>

  - Professional Activities
    - Configuration of Types
  - Feed to Gateway
    - Publications

<p>
      Publications feed live on or about 14th June 2019
    </p>
    <p>
      Based on on view [elements-lshtm1-reporting].[local].[profile_publications]
    </p>
    <p>
      Revised version with most recent publications for those who have not selected favourites. Went Live Nov 2019
    </p>

  - New Gateway profiles feed 2022

<p>
      Intended to
    </p>
    <ul>
      <li>
        replace the legacy feed, so that Gateway database can be retired, and all profile data be drawn from Elements.  
      </li>
      <li>
        Attempt to replicate existing feed exactly so that minimal changes needed to Drupal/Domain7 layer
      </li>
    </ul>

    - Implementation

<ul>
      <li>
        Built as a single SQL stored procedure
      </li>
      <li>
        Output using FOR JSON
      </li>
      <li>
        https://lshtm-my.sharepoint.com/:u:/g/personal/eadmarei_lshtm_ac_uk/EUmHhJD8PKpIk7K3IXpRV4UBMED0NKsVjWdss2ZTIMNmDQ?e=7VnDj9
      </li>
      <li>
        Awaiting feed wrapper from Web Programming team (Aug 2022)
      </li>
    </ul>

  - Discovery Module

<p>
      Perpetual License purchased July 2022, no further License fee will ever be charged. 
    </p>

    - Filters

<p>
      Tag &amp; Search:
    </p>
    <ul>
      <li>
        Single Label scheme: c-lshtm-discovery
      </li>
      <li>
        Content drawn from existing label schemes
        <ul>
          <li>
            Research Areas
          </li>
          <li>
            Diseases and Health Conditions
          </li>
          <li>
            Disciplines
          </li>
          <li>
            Counries
          </li>
          <li>
            Regions
          </li>
        </ul>
      </li>
      <li>
        Plus Research Centres
      </li>
      <li>
        Script to populate c-lshtm-discovery with labels:  https://lshtm-my.sharepoint.com/:u:/g/personal/eadmarei_lshtm_ac_uk/EZ1OR1i-HelAjI9jUWrl7vUB8BQ-er8VJda-vajzHLJOdQ?e=HDriCq
      </li>
      <li>
        Script to populate c-lshtm-discovery with Centres https://lshtm-my.sharepoint.com/:u:/g/personal/eadmarei_lshtm_ac_uk/EdlQvk1ppa5Dosl9ZpdMlzUBuWcnyNkuiZXbv96z60gE4Q?e=VE7Opb
      </li>
    </ul>

    - Naming

<p>
      The naming of the Discovery profile pages needs to be accessible/guessable to the legacy profiles on School website, so that link can be made
    </p>
    <ul>
      <li>
        Use of login ID would be simple, as per existing link to Eprints - no development required by Domain7
      </li>
      <li>
        Elements default based on &lt;userID&gt;/&lt;forename&gt;-&lt;surname&gt;  but which names? HR.forename, HR.known-as, user-preferred-firstname, uesr-preferredLastName
      </li>
      <li>
        ELements names come from HR
      </li>
      <li>
        Gateway names come from IDM, I think
      </li>
      <li>
      </li>
    </ul>

    - Scope

<p>
      Default inclusion would be those
    </p>
    <ul>
      <li>
        Academic Staff with live HR feed
      </li>
      <li>
        PSP staff with live HR Feed
      </li>
      <li>
        Current registered RD students
      </li>
      <li>
        Active local accounts e.g. Honoraries, Emeritus
      </li>
    </ul>
    <p>
      Gateway feed item has several datestamps:
    </p>
    <ul>
      <li>
        Created
      </li>
      <li>
        Modified
      </li>
      <li>
        Expire     (modified + 12m)
      </li>
      <li>
        Purge      (modified + 18m)
      </li>
      <li>
        Valid        (modified + 24m)
      </li>
    </ul>
    <p>
      Valid appears to be the active date, having no values beyond today in the feed
    </p>

- Users
  - HR feed

<p>
      Greg's feed documentation: https://lshtm-my.sharepoint.com/:w:/g/personal/eadmarei_lshtm_ac_uk/EYrJ6vpCldFMss3aR1Wl59UBxgvwpjdqRjrX1L9SFkFfRw?e=ZHJsSz
    </p>

    - Overview
      - Legacy users

<p>
      Users who had left LSHTM payroll at the time the system was first implemented but were linked to publications in Research Online.  A legacy HR feed file was uploaded as a one off. Some RD students were in that file and may be reactivated when the SITS feed is implemented.
    </p>

      - ResourceLink query

<p>
      Ask Greg or Shamina - see link above to Greg's documentation
    </p>

      - FTP of CSV file

<p>
      Contact Shamina re: nightly upload of HR Feed.
    </p>

      - Change threshold

<p>
      If more than a set number of records are added or removed in one update, the update will terminate and an alert email will be sent to elements@lshtm.ac.uk.
    </p>
    <p>
      Threshold is set at
    </p>
    <ul>
      <li>
        https://elements.lshtm.ac.uk/users.html
      </li>
    </ul>

    - Logging 

<ul>
      <li>
        https://elements.lshtm.ac.uk/users.html
      </li>
    </ul>

    - User Groups

<p>
      https://elements.lshtm.ac.uk/groups.html
    </p>
    <p>
      https://support.symplectic.co.uk/support/solutions/articles/6000049839-managing-user-groups
    </p>

      - Primary Group

<p>
      All users are members of a single primary group
    </p>
    <ul>
      <li>
        Primary Group Descriptor: 'LSHTM'  (what appears in the HR feed)
      </li>
      <li>
        Name:                                   'London School of Hygiene and Tropical Medicine'.     (What appears in the tree) 
      </li>
    </ul>
    <p>
      This is set by the HR Feed.  This could be changed by creating more granular primary groups and altering the HR Feed query to output the Deptcode in the Primary group column (currently it is a string literal 'LSHTM' .
    </p>
    <p>
      The root of the group tree is the Organisation: LSHTM - Not to be confused with the Primary group LSHTM, which carries most of the group-centred configuration.  This is the only Primary Group.  This was a design decision, not to have separate Primary groups for each Faculty or dept.  If you wanted to change this you would have to rebuild the whole group tree from scratch and recreate all the Depts and faculties from scratch, although as they were now primary groups it would be simpler than recreating all the auto-groups with their WHERE clauses.
    </p>
    <p>
      There is a difference of one between the user count for  the organisation container LSHTM (All users) and the primary group 'London School of...'.  That one is the Symplectic company sysadmin account.
    </p>

      - Faculties/Depts

<p>
      Faculties are manual groups with no explicit members
    </p>
    <p>
      Depts are Auto-groups based on Dept code in HR Feed: 
    </p>
    <ul>
      <li>
        WHERE [Generic22] = 'EPID' 
      </li>
    </ul>
    <p>
    </p>

    - Custom local Fields

<ul>
      <li>
        https://elements.lshtm.ac.uk/users.html
      </li>
      <li>
        https://elements.lshtm.ac.uk/genericuserfields.html
      </li>
    </ul>

  - Local Users

<ul>
      <li>
        Honorary or Emeritus user accounts can be re-activated by switching the account type to local, if they have ceased to appear in the HR Feed after leaving or retiring
      </li>
      <li>
        Duplicate accounts can be deleted by first switching them to Local, saving, then going to the bottom of the edit page where there is a delete option.  Be absolutely sure you are deleting the right one.
      </li>
    </ul>

  - Inactive users
- REF/Assessment Module

<ul>
      <li>
        https://support.symplectic.co.uk/support/solutions/folders/6000228717
      </li>
    </ul>

  - LSHTM Mock REF
    - Stages
      - Lists
        - Items
          - Supporting Information
            - Author Position
            - Contribution to Study
            - Contribution to Write-up
          - Attachments

<p>
      Not initially enabled, but might later
    </p>

        - 
        - 
      - Selection
      - Peer Review
      - Peer Review Scoring
      - Final Review
    - Users
      - User Groups
        - Professors > 0.2 FTE
        - REF Others
        - MRC Units
    - Managers
    - Reviewers
      - Allocation of Reviewers

<p>
      Details recorded in Email andy reid to Hannah Whiteman: Sun 09/12/2018 12:09  with attached code files and SQL table specs.
    </p>
    <p>
    </p>
    <p class="MsoNormal">
      TO WHOM etc<o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal">
      <o p="#DEFAULT">
       </o>
    </p>
    <p class="MsoNormal">
      This is not intended to be read, it’s more for my reference when I come back to it in a couple of weeks’ time and can’t remember how I did it.  <o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal">
      <o p="#DEFAULT">
       </o>
    </p>
    <p class="MsoNormal">
      NB for anyone trying to run this in my absence, this setup runs on Andy’s desktop machine, though there is enough info here to reproduce the system by installing XAMPP for windows to c:\xampp2018 on any machine.  Password files are not included here, but can be found on Andy’s machine by following references in the code.<o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal">
      <o p="#DEFAULT">
       </o>
    </p>
    <p class="MsoNormal">
      Herewith the algorithm for allocating Users to Reviewers in the Mock REF. <o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal">
      <o p="#DEFAULT">
       </o>
    </p>
    <p class="MsoListParagraph" style="text-indent: -18.0pt">
      1)<font size="7.0pt" face="Times New Roman">      </font>Build the groups of Reviewers from spreadsheet attached <o p="#DEFAULT"></o>
    </p>
    <p class="MsoListParagraph">
      <o p="#DEFAULT">
       </o>
    </p>
    <p class="MsoListParagraph">
      <img width="219" height="421" src="file:///C:/Users/EADMAREI/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg" v="#DEFAULT" shapes="Picture_x0020_1" style="height: 4.385in; width: 2.281in">
      <o p="#DEFAULT">
      </o>
    </p>
    <p class="MsoListParagraph">
      <o p="#DEFAULT">
       </o>
    </p>
    <p class="MsoListParagraph" style="text-indent: -18.0pt">
      2)<font size="7.0pt" face="Times New Roman">      </font>Build the table of reviewers from those groups<o p="#DEFAULT"></o>
    </p>
    <p class="MsoListParagraph" style="margin-left: 72.0pt; text-indent: -18.0pt">
      a.<font size="7.0pt" face="Times New Roman">       </font><a href="http://localhost/REF2021/scoring/build_table_revpool.php?UOA=1">http://localhost/REF2021/scoring/build_table_revpool.php?UOA=1</a>  <o p="#DEFAULT"></o>
    </p>
    <p class="MsoListParagraph" style="margin-left: 72.0pt; text-indent: -18.0pt">
      b.<font size="7.0pt" face="Times New Roman">       </font><a href="http://localhost/REF2021/scoring/build_table_revpool.php?UOA=2">http://localhost/REF2021/scoring/build_table_revpool.php?UOA=2</a>  <o p="#DEFAULT"></o>
    </p>
    <p class="MsoListParagraph" style="text-indent: -18.0pt">
      3)<font size="7.0pt" face="Times New Roman">      </font> Build the userpool table <o p="#DEFAULT"></o>
    </p>
    <p class="MsoListParagraph" style="margin-left: 72.0pt; text-indent: -18.0pt">
      a.<font size="7.0pt" face="Times New Roman">       </font><a href="http://localhost/REF2021/scoring/build_table_userpool.php">http://localhost/REF2021/scoring/build_table_userpool.php</a><o p="#DEFAULT"></o>
    </p>
    <p class="MsoListParagraph" style="margin-left: 72.0pt">
      <o p="#DEFAULT">
       </o>
    </p>
    <p class="MsoListParagraph" style="text-indent: -18.0pt">
      4)<font size="7.0pt" face="Times New Roman">      </font>Build the table of co-authorship relationships.  This has to be done a department at a time or it times out.  These need to be re-run if a new reviewer is added to a dept, as it only looks for authors co-authoring with the current groups of Reviewers . Also rerun periodically to pick up new users and publications.  Slow,. But can probably run concurrently without problem<o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal" style="margin-left: 54.0pt; text-indent: 18.0pt">
      <a href="http://localhost/REF2021/scoring/build_table_coauth.php?group=PMB&amp;UOA=1">http://localhost/REF2021/scoring/build_table_coauth.php?group=PMB&amp;UOA=1</a>  <o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal" style="margin-left: 72.0pt">
      <a href="http://localhost/REF2021/scoring/build_table_coauth.php?group=IID&amp;UOA=1">http://localhost/REF2021/scoring/build_table_coauth.php?group=IID&amp;UOA=1</a>  <o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal" style="margin-left: 72.0pt">
      <a href="http://localhost/REF2021/scoring/build_table_coauth.php?group=CRD2">http://localhost/REF2021/scoring/build_table_coauth.php?group=CRD2</a> <o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal" style="margin-left: 72.0pt">
      <a href="http://localhost/REF2021/scoring/build_table_coauth.php?group=DCV2">http://localhost/REF2021/scoring/build_table_coauth.php?group=DCV2</a> <o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal" style="margin-left: 72.0pt">
      <o p="#DEFAULT">
       </o>
    </p>
    <p class="MsoNormal" style="margin-left: 72.0pt">
      <a href="http://localhost/REF2021/scoring/build_table_coauth.php?group=IDE">http://localhost/REF2021/scoring/build_table_coauth.php?group=IDE</a> <o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal" style="margin-left: 72.0pt">
      <a href="http://localhost/REF2021/scoring/build_table_coauth.php?group=DPH">http://localhost/REF2021/scoring/build_table_coauth.php?group=DPH</a> <o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal" style="margin-left: 72.0pt">
      <a href="http://localhost/REF2021/scoring/build_table_coauth.php?group=MSD">http://localhost/REF2021/scoring/build_table_coauth.php?group=MSD</a> <o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal" style="margin-left: 72.0pt">
      <a href="http://localhost/REF2021/scoring/build_table_coauth.php?group=NCD">http://localhost/REF2021/scoring/build_table_coauth.php?group=NCD</a> <o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal" style="margin-left: 72.0pt">
      <o p="#DEFAULT">
       </o>
    </p>
    <p class="MsoNormal" style="margin-left: 72.0pt">
      <a href="http://localhost/REF2021/scoring/build_table_coauth.php?group=GHD">http://localhost/REF2021/scoring/build_table_coauth.php?group=GHD</a><o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal" style="margin-left: 72.0pt">
      <a href="http://localhost/REF2021/scoring/build_table_coauth.php?group=PHE">http://localhost/REF2021/scoring/build_table_coauth.php?group=PHE</a> <o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal" style="margin-left: 72.0pt">
      <a href="http://localhost/REF2021/scoring/build_table_coauth.php?group=HSR">http://localhost/REF2021/scoring/build_table_coauth.php?group=HSR</a> <o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal">
      <o p="#DEFAULT">
       </o>
    </p>
    <p class="MsoNormal">
      <o p="#DEFAULT">
       </o>
    </p>
    <p class="MsoNormal">
      And FINALLY… <o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal">
      <a href="http://localhost/REF2021/scoring/allocate_scorers1.php?UOA=1">http://localhost/REF2021/scoring/allocate_scorers1.php?UOA=1</a><o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal">
      <a href="http://localhost/REF2021/scoring/allocate_scorers1.php?UOA=2">http://localhost/REF2021/scoring/allocate_scorers1.php?UOA=2</a> <o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal">
      <o p="#DEFAULT">
       </o>
    </p>
    <h2 style="margin-top: 0cm; margin-right: 0cm; margin-bottom: .0001pt; margin-left: 0cm; background-color: #FBFBFB; background-image: null; background-repeat: repeat; background-attachment: scroll; background-position: null">
      <o p="#DEFAULT">
       </o>
    </h2>
    <p class="MsoNormal">
      <o p="#DEFAULT">
       </o>
    </p>
    <p class="MsoNormal">
      The resulting  CSV files are in Z:/  as UOAx.csv -  Examples attached, but there are not the final versions  (Z: is my local secure drive for HR data – you won’t be able to get into it, but change the last line of allocate_scorers1.php to change the destination.  <o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal">
      <o p="#DEFAULT">
       </o>
    </p>
    <p class="MsoNormal" style="text-indent: 36.0pt">
      file_put_contents("Z:/UOA${UOA}.csv",$CSV);<o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal">
      <o p="#DEFAULT">
       </o>
    </p>
    <h2 style="margin-top: 0cm; margin-right: 0cm; margin-bottom: .0001pt; margin-left: 0cm; background-color: #FBFBFB; background-image: null; background-repeat: repeat; background-attachment: scroll; background-position: null">
      <font size="11.0pt">Then use those files to assign the reviewers to users in Elements – Module Admin – Assessment – Exercise Definitions – LSHTM Mock REF – stages – Peer Review Scoring – nnn Reviewers –</font> <font size="10.0pt" face="Helvetica,sans-serif" color="#21242B">1. Who is being reviewed? </font><font size="10.0pt">Select Names</font> <font size="10.0pt" face="Helvetica,sans-serif" color="#21242B">2. And who are the reviewers?<o p="#DEFAULT"></o></font>
    </h2>
    <h4 style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 3.75pt; margin-left: 0cm; line-height: 12.0pt; background-color: white; background-image: null; background-repeat: repeat; background-attachment: scroll; background-position: null; font-style: inherit; color: black">
      <font size="10.5pt" face="inherit" color="#21242B">Select name(s):<o p="#DEFAULT"></o></font>
    </h4>
    <p class="MsoNormal">
      <o p="#DEFAULT">
       </o>
    </p>
    <p class="MsoNormal">
      Technical details of the webserver setup on andy’s machine are beyond the scope of this; it’s just a standard XAMPP install, but in c://xampp2018 because I had earlier versions.   Z: is my local secure drive for HR data – you won’t be able to get into it, but change the last line of allocate_scorers1.php to change the destination.  <o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal">
      <o p="#DEFAULT">
       </o>
    </p>
    <p class="MsoNormal" style="text-indent: 36.0pt">
      file_put_contents("Z:/UOA${UOA}.csv",$CSV);<o p="#DEFAULT"></o>
    </p>
    <p class="MsoNormal">
      <o p="#DEFAULT">
       </o>
    </p>

    - Units of Assessment
- User Support
  - Elements Help Page

<p>
      https://elements.lshtm.ac.uk/modulesettings.html?msid=4
    </p>

  - Quick Start Guide

<p>
      Updates can only be uploaded by Symplectic staff. Raise a support ticket via https://support.symplectic.co.uk/support/tickets
    </p>

  - Login Announcement

<p>
      https://elements.lshtm.ac.uk/loginannouncement.html
    </p>

  - ServiceDesk
  - Elements@lshtm.ac.uk

<p>
      Access:
    </p>
    <ul>
      <li>
        Andy Reid
      </li>
      <li>
        Dominic Walker
      </li>
      <li>
        Hannah Whiteman
      </li>
      <li>
        Alex Anderson
      </li>
    </ul>

  - Elements Support site

<p>
      Most of the Elements support is directed at admins, but there are some user-directed pages. Users need to create a login for support
    </p>
    <p>
      site, which is whitelisted to lshtm.ac.uk domain
    </p>
    <ul>
      <li>
        https://support.symplectic.co.uk/support/home
      </li>
    </ul>

  - YouTube videos
<!-- freeplane2md: Converted from maps/Elements Support.mm at 2025-10-14T15:22:22+01:00 -->
