{{ config(materialized='table') }}

select *
from {{ source('airbyte', '_airbyte_raw_deals')}}