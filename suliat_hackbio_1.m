name = ['Suliat Abike Jimoh'];
email = ['suliatjimoh@gmail.com'];
slackusername = ['@Sulijimoh'];
biostack = ['genomics'];
twitter_username = ['sulistical'];
diff = [sum(slackusername ~= twitter_username)];
disp([name; email; slackusername; biostack; twitter_username;])
hamming_distace = diff