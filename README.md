# Clippings

**Clippings** can parse notes and highlights in your Kindle clippings.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'clippings'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install clippings

## Usage

```ruby
require 'clippings'
clippings = Clippings::Parse.new("My Clippings.txt")
notes = clippings.parseForNote
notes.each do |title, note|
    print title, note[:author], note[:fragment]
end
```
## Example
**test.txt**
```
==========
HTTP权威指南 (图灵程序设计丛书) ([美]David Gourley Brian Totty Marjorie Sayer Sailu Reddy Aushu Aggarwal)
- 您在位置 #425-426的标注 | 添加于 2017年6月16日星期五 下午8:21:59

下报文是如何通过传输控制协议（Transmission Control Protocol，TCP）连接从一个地方搬移到另一个地方去的。
==========
﻿HTTP权威指南 (图灵程序设计丛书) ([美]David Gourley Brian Totty Marjorie Sayer Sailu Reddy Aushu Aggarwal)
- 您在位置 #802 的笔记 | 添加于 2017年6月16日星期五 下午9:02:31

解析相对url 的算法
==========
The Well-Grounded Rubyist, Second Edition (David A. Black)
- 您在位置 #7107-7107的标注 | 添加于 2017年9月5日星期二 上午10:13:28

Ranges have begin and end methods,
==========
The Well-Grounded Rubyist, Second Edition (David A. Black)
- 您在位置 #7193-7193的标注 | 添加于 2017年9月5日星期二 上午10:28:42

To remove an object, use delete:
==========
```

**Code**
```ruby
require 'clippings'
clippings = Clippings::Parse.new("test.txt")
notes = clippings.parseForNote
p notes
```

**Output**
```
{
    "HTTP权威指南 (图灵程序设计丛书)"=>
        {
            :title=>"HTTP权威指南 (图灵程序设计丛书)", 
            :author=>"[美]David Gourley Brian Totty Marjorie Sayer Sailu Reddy Aushu Aggarwal", 
            :fragment=>
                [
                    {
                        :content=>"HTTP 是个应用层协议\r\n", 
                        :type=>"标注", 
                        :date=>" 2017年6月16日星期五 下午8:22:18"
                    }, 
                    {
                        :content=>"解析相对url 的算法\r\n", 
                        :type=>"笔记", 
                        :date=>" 2017年6月16日星期五 下午9:02:31"
                    }, 
                    {   
                        :content=>"RFC 2396 中\r\n", 
                        :type=>"标注", 
                        :date=>" 2017年6月16日星期五 下午9:02:31"
                    }
                ]
        }, 
    "The Well-Grounded Rubyist, Second Edition"=>
        {
            :title=>"The Well-Grounded Rubyist, Second Edition", 
            :author=>"David A. Black", 
            :fragment=>
                [
                    {
                        :content=>"Ranges have begin and end methods,\r\n",
                        :type=>"标注", 
                        :date=>" 2017年9月5日星期二 上午10:13:28"
                    }, 
                    {
                        :content=>"To remove an object, use delete:\r\n", 
                        :type=>"标注", 
                        :date=>" 2017年9月5日星期二 上午10:28:42"
                    }
                ]
        }
}
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/badtudou/clippings.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
