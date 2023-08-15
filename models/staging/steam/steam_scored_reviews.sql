with
source as (select * from {{ source('raw_public', 'scored_reviews')}}),
final as (
    select
        review_id,
        title,
        year,
        user_review,
        PARSE_JSON(negative_feedback)::ARRAY as negative_feedback
    from source
)

select * from final