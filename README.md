# Chassis Kibana

This is work in progress and won't work without a lot of manual hacking! 😱

## Known Issues
1. This requires the [Bionic Beaver](https://github.com/Chassis/Chassis/tree/531-bionic-beaver-support) branch of Chassis to get the latest version of Puppet.
2. You'll need [Chassis-Elasticsearch](https://github.com/Chassis/Chassis-Elasticsearch) as a dependency however the new version of Puppet on Bionic Beaver won't provision this extension because it contains a hyphen. You'll need to rename any folder names or classes to use underscores e.g. `chassis-elasticsearch` to `chassis_elasticsearch`.
3. If you have any other Chassis extensions that use hyphens then you'll need to rename those from hyphens to underscores as well.
4. There will need to be some hacking of this section of [preprovision.sh](https://github.com/Chassis/Chassis/blob/531-bionic-beaver-support/puppet/preprovision.sh#L66-L70) something like the following is too aggressive:
	```
	# Symlink extension Puppet files into place
	for file in /vagrant/extensions/*/modules/*/manifests/init.pp; do
		extension=$(basename $(dirname $(dirname $file)))
		ln -f -s "$file" "/vagrant/puppet/manifests/$extension.pp"
	done
	```
	This unfortunately symlinks any git submodules an extension has added into the `modules` folder of their extensions as well so those symlinks need to be manually removed for this to work.
5. [Chassis-Elasticsearch](https://github.com/Chassis/Chassis-Elasticsearch) will need a submodule update for `java`. If you've renamed the extension correctly to `chassis_elasticsearch` you can run:
```
cd /extensions/chassis_elasticsearch/modules/java; git checkout master; git pull;
```
5. You'll need a plugin such as [ElasticPress](https://wordpress.org/plugins/elasticpress/) and if you're using a default Chassis setup you will need to set the ElasticSearch host setting to: `http://vagrant.local:9200` and save and sync the site.
6. If you've got this far then you should be able to visit [http://vagrant.local:5601/](http://vagrant.local:5601/). You'll then be asked to configure an ![index pattern](https://bronsons-captured.s3.amazonaws.com/Kibana_2018-08-19_20-16-19.png)
7. Change your ![index pattern](https://bronsons-captured.s3.amazonaws.com/Kibana_2018-08-19_20-20-10.png) and click 'Create'.
8. If you've managed to hack everything thus far you'll see something ![like this](https://bronsons-captured.s3.amazonaws.com/Kibana_2018-08-19_20-21-34.png)
9. We'll definitely automate a lot of this kinda stuff once Chassis core moves to Bionic Beaver in the future and we'll make sure things are backwards compatible!
