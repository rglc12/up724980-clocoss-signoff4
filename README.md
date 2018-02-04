# up724980-clocoss-signoff4

## Prerequisites 

- That you are running a Google Cloud Console enabled VM
- Ensure that [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) is installed on that VM

## Installation 

You will need to git clone this repository:

```git clone https://github.com/rglc12/up724980-clocoss-signoff4.git```

## Running the Backups

First, you need to direct yourself to the "up724980-clocoss-signoff4" folder:

```cd up724980-clocoss-signoff4```

Once there, you can run the backup.sh script to begin the creation of the bucket and the first buckup process:

```sh backup.sh```

When the bucket has been created, you will need to run the Cronjob Manager to schedule recurring backups of your data.
To do this, run the following command to prompt the Cronjon Manager:

```crontab -e```

If/when prompted to, pick the first option that appears of of 3. 
When you open the file in the Cronjob Manager, you will need to paste the following code in order to run this process every hour:

```0 * * * * sh /home/[Your-Username]/up724980-clocoss-signoff4/cronjob.sh```

This will run a backup of your data on the 0 minute of each hour. E.g. 16:00:00, 17:00:00, etc.
To find out more about scheduling with Cronjob, here is a [link](https://www.centos.org/docs/5/html/5.2/Deployment_Guide/s2-autotasks-cron-configuring.html) to some documentation.

Now your backups will run without you having to do it manually!