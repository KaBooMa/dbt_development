{{ config(alias='legendaries') }}

select * from {{ ref('pokemon_legendaries') }}