# README

## users

| Column             | Type        | Option                   |
|--------------------|-------------|--------------------------|
| email              | string      | null:false, unique: true |
| encrypted_password | string      | null:false               |

### Association

- has_many :posts
- has_many :reviews
- has_one :profiles

## posts

| Column | Type       | Option                       |
|--------|------------|------------------------------|
| title  | string     | null:false                   |
| text   | text       |                              |
| user   | references | null:false,foreign_key: true |


### Association
- belongs_to :user
- has_many :reviews


## profiles

| Column             | Type        | Option                       |
|--------------------|-------------|------------------------------|
| nickname           | string      | null:false                   |
| first_name         | string      | null:false                   |
| family_name        | string      | null:false                   |
| phone_number       | integer     | null:false                   |
| birthday           | date        | null:false                   |
| introduction       | string      |                              |
| user               | references  | null:false,foreign_key: true |

### Association

- belongs_to :user










<!-- 
| name                | string     | null:false                   |
| explanation         | text       | null:false                   |
| category_id         | integer    | null:false                   | 
| condition_id        | integer    | null:false                   |

| postage_type_id     | integer    | null:false                   |
| prefecture_id       | integer    | null:false                   |
| preparation_day_id  | integer    | null:false                   |
| price               | integer    | null:false                   |


## shoppings

| Column         | Type       | Option                       |
|----------------|------------|------------------------------|
| postal_code    | string     | null:false                   |
| prefecture_id  | integer    | null:false                   |
| city           | string     | null:false                   |
| address        | string     | null:false                   |
| building_name  | string     |                              |
| phone_number   | string     | null:false                   |
| purchase       | references | null:false,foreign_key: true |

### Association
- belongs_to :purchase -->