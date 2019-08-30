# Chassis Kibana

This is work in progress and won't work without a lot of manual hacking! 😱

## Known Issues
1. This requires the [Bionic Beaver](https://github.com/Chassis/Chassis/tree/531-bionic-beaver-support) branch of Chassis to get the latest version of Puppet.
1. This requires the [Bionic Beaver Chassis_Elasticsearch](https://github.com/Chassis/Chassis_Elasticsearch/pull/14) branch of Chassis Elasticsearch.
1. You'll need a plugin such as [ElasticPress](https://wordpress.org/plugins/elasticpress/) and if you're using a default Chassis setup you will need to set the ElasticSearch host setting to: `http://vagrant.local:9200` and save and sync the site.
1. If you've got this far then you should be able to visit [http://vagrant.local:5601/](http://vagrant.local:5601/). You'll then be asked to configure an index pattern. ![index pattern](https://bronsons-captured.s3.amazonaws.com/Kibana_2018-08-19_20-16-19.png)
1. Change your index pattern to `vagrantlocal*` ![index pattern](https://bronsons-captured.s3.amazonaws.com/Kibana_2018-08-19_20-20-10.png) and click 'Create'.
1. If you've managed to hack everything thus far you'll see something ![like this](https://bronsons-captured.s3.amazonaws.com/Kibana_2018-08-19_20-21-34.png)
1. We'll definitely automate a lot of this kinda stuff once Chassis core moves to Bionic Beaver in the future and we'll make sure things are backwards compatible!
