{{ config(alias='details') }}

select * from {{ ref('pokemon_details') }}