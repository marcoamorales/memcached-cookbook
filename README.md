memcached Cookbook
==================
Installs, setups, and starts memcache as a daemon


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

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.

Authors: Marco A Morales
