FROM google/cloud-sdk:latest

RUN apt update
RUN apt install streamlink -y
RUN apt install cron -y

WORKDIR 'cron'

#COPY . .
# Add crontab file in the cron directory
ADD crontab /etc/cron.d/simple-cron


# Add shell script and grant execution rights
ADD job.sh /cron/job.sh
ADD job2.sh /cron/job2.sh
ADD job3.sh /cron/job3.sh
RUN chmod +x /cron/job.sh
RUN chmod +x /cron/job2.sh
RUN chmod +x /cron/job3.sh

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/simple-cron

# Apply cron job
RUN crontab /etc/cron.d/simple-cron

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

# Run the command on container startup
CMD ["cron", "-f"]

#RUN /cron/job.sh
#RUN /cron/job2.sh
#RUN /cron/job3.sh

