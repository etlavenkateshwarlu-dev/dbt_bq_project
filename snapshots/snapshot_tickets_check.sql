{% snapshot snapshot_tickets_check %}
{{config(
	target_schema='dbt_snapshots',
    strategy='check',
	unique_key='ticket_id',
	check_cols=['ticket_status']
)}}
select * from {{ ref('tickets')}}
{%endsnapshot%}

