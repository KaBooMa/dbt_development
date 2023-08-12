{{ config(alias='details') }}

with
pokemon as (select * from {{ source('raw_pokemon', 'pokemon') }}),

renamed as (
    select 
        "#" as pk_pokemon,
        Name,
        "TYPE 1" as type_1,
        "TYPE 2" as type_2,
        total,
        hp,
        attack,
        defense,
        "SP. ATK" as sp_atk,
        "SP. DEF" as sp_def,
        speed,
        generation,
        legendary
    from pokemon
)

select * from renamed