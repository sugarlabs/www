import re
import html2text
h = html2text.HTML2Text()

with open('press.xml') as f:
     press_xml = f.read()

for container in re.findall('<pressrelease sortdate=".+?">(.+?)</pressrelease>', press_xml, re.MULTILINE | re.DOTALL):
    date = re.search('<date>(.+?)</date>', container).group(1)
    for pr in re.findall('<language id=".+?">(.+?)</language>', container, re.MULTILINE | re.DOTALL):
        pr = pr.replace('<paragraph>', '<p>').replace('</paragraph>', '</p>').replace('<link url="', '<a href="').replace('</link>', '</a>').replace('<line-break', '<br').replace('<attachment url="', '<p><a href="').replace('</attachment>', '</a></p>')
        title = re.search('<title>(.+?)</title>', pr).group(1)
        pr = re.sub('<title>(.+?)</title>', '', pr)
        pr = '\n'.join((x.strip() for x in pr.splitlines()))

        rdate = raw_input(date + ' like YEAR-MO-DA:  ').strip()
        name = 'out/{}-{}.md'.format(rdate, title.replace(' ', '-'))
        d = u'---\nlayout: post\ntitle: "{}"\ndate: {}\n---\n{}'.format(title.decode('utf8'), rdate, h.handle(pr.decode('utf8')))
        try:
            with open(name, 'w') as f:
                f.write(d.encode('utf8'))
        except IOError:
            print 'Name too long:', name
            name = raw_input('New name: ')
            with open(name, 'w') as f:
                f.write(d.encode('utf8'))
