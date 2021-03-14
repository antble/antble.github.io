---
layout: default 
title: Abstract Algebra
field: abs
---




<h1>
    {{page.title | capitalize}} 
</h1>

<hr>
<h2>Useful Online references:</h2>

<div class="section group0">
    {% for data in site.data.label.fieldlist %}
        {% if data.category == page.field %}
            {% assign label = data.label%}
            <div class="col span0_1_of_3">
                <p><b>{{label | upcase }}</b></p>
                <!-- <ul> -->
                    {%for data in site.data.repository[page.field]%}
                        {% if data.label == label %}
                            {% if data.status == "done"%}
                                <label>
                                    <input type="checkbox" checked="checked"><a href="{{data.URL}}" class="done">{{data.title}}</a>
                                    <br>
                                </label>
                            {% elsif data.status == "ongoing" %}
                                <label>
                                    <input type="checkbox"><a href="{{data.URL}}" class="ongoing">{{data.title}}</a>
                                    <br>
                                </label>
                            {% else %}
                                <label>
                                    <input type="checkbox"><a href="{{data.URL}}">{{data.title}}</a>
                                    <br>
                                </label>
                            {% endif %}
                        {% endif %}
                    {% endfor %}    
                <!-- </ul> -->
            </div>
        {% endif %}
    {% endfor %}
</div>

<hr>
<h2>Books</h2>

<div class="section group1">
    {% assign fieldname = page.field %}
    {% assign book_repo = fieldname| append: "_books"%}

    {% for data in site.data.label.fieldlist%} 
        {% if data.category == page.field %}
            <div class="col span1_1_of_3">
                {% assign label = data.label%}
                <p><b>{{label| upcase}}</b></p>
                <ol>
                    {%for book in site.data.repository[book_repo]%}
                        {% assign booklabel = book.label | strip%}
                        {% if label == booklabel%}

                            {% if data.status == "done"%}
                                <label>
                                    <li><b><a href="{{book.URL}}" class="done">{{book.title}} </a> </b> by {{book.authors}} </li>
                                </label>
                            {% elsif data.status == "ongoing" %}
                                <label>
                                    <li><b><a href="{{book.URL}}" class="ongoing">{{book.title}} </a></b>by {{book.authors}} </li>
                                </label>
                            {% else %}
                                <label>
                                    <li><b><a href="{{book.URL}}">{{book.title}} </a></b>by {{book.authors}}</li>
                                </label>
                            {% endif %}
        
                        {% endif %}

                    {% endfor %}    
                </ol>
            </div>
        {% endif %}
       
    {% endfor %}
</div>
<hr>


<br>
<br>
<br>





## Notes
(1) Effective way to learn abstract algebra
- For each concept have an example that you understand well ("examplars")
- this exemplars shouldn't be too simple, but neither should they be too complex 
- As you study the abstract concepts, and the proofs of theorems, follow along with your exemplars to see what those concepts mean and what the details in the proofs say about them.

(2) Reasons why abstract algebra is valuable
- abstract algebra provides muc more practice on various proof technique 
- group theory is very important in math, science and engineering since it is the mathematics of symmetry 
- many games can be understood by viewing them as permutation groups 
- looking at data and making plausible conjecture and generalization can be learned with practice with groups and rings providing the ground to develop this skill
- ability to think abstractly can be develop with the help of abstract algebra

(3) Lessons from learning linear algebra
- an example is worth a thousand definitions 


## REFERENCES:

<div>
<ol>
{%for data in site.data.repository.abs%}
    <li><a href="{{data.URL}}">{{data.title}}</a></li>
{% endfor %}
</ol>
</div>



## Books 
<div>
<ol>
{% for book in site.data.repository.abs_books %}
    <li> {{book.title}} by {{book.authors}} </li>
{% endfor %}
</ol>
</div>
