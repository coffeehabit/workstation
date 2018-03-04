{% if grains['os'] = 'debian' %}
  include:
    syncstation.repos.syncthing

  blueman-applet:
    pkg.installed
    
  nm-applet:
    pkg.installed
{% endif %}

openvpn:
  pkg.installed
  
#Copy VPN profiles:
#  file.recurse

syncthing:
  pkg.installed
