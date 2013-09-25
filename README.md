paginator
=========
Simple paginator

Usage
```
require 'paginator

pages = Paginator::Pager.new([1,2,3,4,5,6,7,8,9,10], 2)
pages.page(2) # [3,4]
```
