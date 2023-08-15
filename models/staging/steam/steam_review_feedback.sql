with
source as (select * from {{ ref('steam_scored_reviews') }}),
final as (
    select 
        review_id,
        value::varchar as negative_category
    from source, lateral flatten(input => negative_feedback)
)

select * from final