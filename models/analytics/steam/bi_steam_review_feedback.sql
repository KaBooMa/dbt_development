{{ config(alias='review_feedback') }}

select * from {{ ref('steam_review_feedback') }}