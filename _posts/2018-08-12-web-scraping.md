---
layout: post
title: "Web Scraping Notes"
date: 2018-08-12
category: programming
tag: web scraping, data science
---
Web scraping is the extraction or harvesting of data  from websites and storing it various format (e.g database, json, spreadsheet, text files).

**Popular Python Web Scraping Libraries**

1. [**requests**](http://docs.python-requests.org/en/latest/user/quickstart/#more-complicated-post-requests): allow you to access web pages in its raw form
2. [**BeautifulSoup**](https://www.crummy.com/software/BeautifulSoup/bs4/doc/): a parsing library using different parser (e.g. html,lxml,xml)
3. [**lxml**](https://lxml.de/): production-quality HTML and XML parsing library
4. [**selenium**](https://www.seleniumhq.org/): automate browsers control 
5. [**scrapy**](https://scrapy.org/): a complete spider that can crawl through entire websites in a systematic way
6. [**mechanicalsoup**](http://mechanicalsoup.readthedocs.io/en/stable/): built around beautifulsoup, but if you need to check a few boxes or enter some text and you don't want to build your own crawler for such task this one does such tasks

**Others**: 

1. [**feedparser**](https://pythonhosted.org/feedparser/): helpful if you are working on an xml, atom feeds, or RSS.
2. [**lassie**](https://github.com/michaelhelmick/lassie): retrieve basic content like a description, title, keywords, or a list of images from a webpage
3. [**robobrowser**](https://github.com/jmcarp/robobrowser): browsing the web without a standalone web browser, can fetch a page, click on links and buttons, and fill out and submit forms

**Popular data scraping tools**

1. octoparse
2. parsehub
3. contengrabber
4. mozenda
5. scrapinghub
6. webharvy
7. google chrome (scraper)


## Open-Source Tools

### 1. Requests 

- Response content
- Binary response content
- JSON response content
- Raw response content

### 2. BeautifulSoup

BeautifulSoup transforms a complex HTML document into a complex tree of python objects. You'll deal only with four kinds of this objects. 

1. **Tag**: 
   it corresponds to an XML or HTML tag in the original document 
   Important topic to explore: 
   1.1 Navigating the tree
   1.2 Searching the tree
2. **NavigableString**: 
  A string corresponds to a bit of text within a tag. Beautiful Soup uses the NavigableString class to contain these bits of text:
3. **BeautifulSoup**:
  The BeautifulSoup object itself represents the document as a whole. For most purposes, you can treat it as a Tag object. This means it supports most of the methods described in Navigating the tree and Searching the tree.
4. **Comment**:
  Tag, NavigableString, and BeautifulSoup cover almost everything you’ll see in an HTML or XML file, but there are a few leftover bits. The only one you’ll probably ever need to worry about is the comment. The Comment object is just a special type of NavigableString. 

###  3. lxml: 
### 4. selenium:  
### 5. scrapy:  
### 6. mechanicalsoup

## Others

### 1. feedparser: 

- arxivsanity ()

### 2. lassie: 
### 3. robobrowser: 

## Applications

- [x] *Cryptocurrency price scraping*  **(BeautifulSoup)**

- [x] *Lotto winning numbers scraping* **(BeautifulSoup)**

- [x] *Map automation download* **(BeautifulSoup)**

- [ ] *Website list scrapping* **(BeautifulSoup)**

   - [ ] medium list of top publishers
   - [ ] cryptocurrency capitalization list

 - [ ] *Filling google sign-up form* **(selenium)**

 - [x]  *Arxiv paper download* **(feedparser)**

 - [ ] *Tripadvisor Hotel Reviews* (Philippines Area) **(scrapy)**

   