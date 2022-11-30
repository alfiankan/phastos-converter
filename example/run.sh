curl --location --request POST 'http://localhost:5000/process' \
--form 'metadata="{\\\"version\\\":\\\"1.0.0\\\",\\\"tasks\\\":[{\\\"name\\\":\\\"myvideo.movto.mp4\\\",\\\"tenant\\\":\\\"shared\\\",\\\"processor\\\":{\\\"name\\\":\\\"ffmepg-mov-mp4\\\",\\\"configs\\\":[{\\\"scaling\\\":\\\"50%\\\"}]},\\\"exporter\\\":{\\\"name\\\":\\\"temp\\\"}}]}"' \
--form 'file=@"/Users/alfiankan/development/phastos-converter/example/phastos-sample.mov"'
