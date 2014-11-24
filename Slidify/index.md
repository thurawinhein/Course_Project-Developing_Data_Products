---
title     : Life Expectancy at Birth of Different Country
subtitle  : Course Project For Developing Data Products
author    : Thu Ra Win Hein
output    : html_document
job       : Software Developer
knit      : slidify::knit2slides

framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      #
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---

## Introduction and Motivation
**Life Expectancy at Birth (LEB)** is the expected (in the statistical sense) number of years of life remaining at birth. There are great variations in life expectancy between different parts of the world, mostly caused by differences in 

> * Economic circumstances
> * Public health
> * Medical care 
> * Industrial pollution

The impact of AIDS is particularly notable on life expectancy in many African countries. The difference in life expectancy between men and women is also obvious. Therefore, we build this **Shiny App** to show the LEB of different country and gender.

---

## Shiny App: LEB of Different Country

<div style='text-align: center;'>
    <img src='assets/img/Pic_Data.png'>
</div> 
[LEB of Different Country App Hosted by shinyapps.io](http://thurawinhein.shinyapps.io/ShinyApp) 

---

## Features

Enter the gender and country you intrested in and get informed!


<div id = 'chart1' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart1",
"width":            800,
"height":            400,
"credits": {
 "href": null,
"text": null 
},
"exporting": {
 "enabled": false 
},
"title": {
 "text": null 
},
"yAxis": [
 {
 "title": {
 "text": "Life Expectancy at Birth Value" 
} 
} 
],
"series": [
 {
 "data": [
 [
           1970,
          74.7 
],
[
           1990,
          78.8 
],
[
           2000,
          79.3 
],
[
           2005,
          79.9 
],
[
           2008,
          80.5 
],
[
           2009,
          80.6 
],
[
           2010,
            81 
],
[
           2011,
          81.1 
],
[
           2012,
          81.2 
] 
],
"name": "female",
"type": "line",
"marker": {
 "radius":              3 
} 
},
{
 "data": [
 [
           1970,
          67.1 
],
[
           1990,
          71.8 
],
[
           2000,
          74.1 
],
[
           2005,
          74.9 
],
[
           2008,
          75.5 
],
[
           2009,
          75.7 
],
[
           2010,
          76.2 
],
[
           2011,
          76.3 
],
[
           2012,
          76.4 
] 
],
"name": "male",
"type": "line",
"marker": {
 "radius":              3 
} 
} 
],
"xAxis": [
 {
 "title": {
 "text": "Year" 
} 
} 
],
"subtitle": {
 "text": null 
},
"id": "chart1",
"chart": {
 "renderTo": "chart1" 
} 
});
        });
    })(jQuery);
</script>

*Plot: LEB trend by gender in USA* 
[Github Repository](https://github.com/thurawinhein/Course_Project-Developing_Data_Products)

---

## Conclusion

- Writing the application + these slides took me around 3 hours.
  That's pretty excellent for making such a huge work available (displayable,
  testable) by third parties.  A wonder, in fact.

- With these R technologies, I really feel I stand on the shoulders of giants.



