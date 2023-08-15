{{ config(alias='scored_reviews') }}

select * from {{ ref('steam_scored_reviews') }}