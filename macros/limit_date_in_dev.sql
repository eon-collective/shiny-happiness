{%macro limit_date_in_dev(col_name, dev_dates_of_data=3)%}
{%if target.name == 'dev'%}
   where {{col_name}}>= dateadd('day', -{{developement_dates}}, current_timestamp)
{%endif%}
{%endmacro%}