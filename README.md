memcached Cookbook
==================
Installs and setups and starts memcache as a daemon


Requirements
------------
This cookbook has no requirements.


Attributes
----------

#### memcached::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['port']</tt></td>
    <td>Decimal</td>
    <td>Port on which memcached will be listening</td>
    <td><tt>11211</tt></td>
  </tr>
  <tr>
    <td><tt>['memory_decimal_percentage']</tt></td>
    <td>Decimal</td>
    <td>Decimal percentage of the maximum amount of memory that memcache can use on the server</td>
    <td><tt>0.75</tt></td>
  </tr>
  <tr>
    <td><tt>['max_connections']</tt></td>
    <td>Decimal</td>
    <td>The maximum amounts of connections memcache can support</td>
    <td><tt>1024</tt></td>
  </tr>
</table>

Usage
-----
Just include `memcached` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[memcached]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Marco A Morales
