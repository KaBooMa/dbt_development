{{ config(alias='legendaries') }}

select *
from {{ ref('pokemon_details') }}
where legendary