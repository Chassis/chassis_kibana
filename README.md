# Chassis Kibana

A Chassis extension that installs [Kibana](https://www.elastic.co/products/kibana).

## Activation
Ensure you have a Chassis instance set up locally then clone this extension.

```
# In your Chassis dir:
git clone https://github.com/Chassis/chassis_kibana.git
```

Then you'll need to reprovision
```
cd ..
vagrant provision
```

Alternatively you can add the extension to one of your yaml config files. e.g.
```
# Extensions
#
# Install a list of extensions automatically
extensions:
    - chassis/chassis_kibana
```

Then you'll need to reprovision

```
cd ..
vagrant provision
```

# Setup

1. If you're using a default Chassis setup you will need to set the ElasticSearch host setting to: `http://vagrant.local:9200` and save and sync the site.
1. Visit [http://vagrant.local:5601/](http://vagrant.local:5601/). You'll then be asked to configure an index pattern. ![index pattern](https://bronsons-captured.s3.amazonaws.com/Kibana_2018-08-19_20-16-19.png)
1. Change your index pattern to `vagrantlocal*` ![index pattern](https://bronsons-captured.s3.amazonaws.com/Kibana_2018-08-19_20-20-10.png) and click 'Create'.
1. You'll see something ![like this](https://bronsons-captured.s3.amazonaws.com/Kibana_2018-08-19_20-21-34.png)
