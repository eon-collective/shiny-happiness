{% snapshot mock_orders %}

{% set new_schema = target.schema + '_snapshot' %}

{{
    config(
      target_database='the_office',
      target_schema=new_schema,
      unique_key='order_id',

      strategy='timestamp',
      updated_at='updated_at'
    )
}}

select * from the_office.{{target.schema}}.mock_orders

{% endsnapshot %}