
# テーブル設計

## users テーブル

| Colum            | Type    | Options     |
| ---------------- | ------- | ----------- |
| name             | string  | null: false |
| email            | string  | null: false |
| password         | string  | null: false |
| user_url         | string  |             |
| introduction     | text    |             |
| area_id          | integer |             |
| Voice_quality_id | integer |             |
| condition_id     | integer |             |
| act_id           | integer |             |
| act2_id          | integer |             |
| act3_id          | integer |             |
| act4_id          | integer |             |
| act5_id          | integer |             |


### Association

- has_many :scripts 
- has_many :group_users
- has_many :group, through: group_users
- has_many :messages

## scripts テーブル

| Colum                 | Type     | Options     |
| --------------------- | -------- | ----------- |
| scripts_name          | string   | null: false |
| scripts_url           | string   | null: false |
| scripts_introduction  | text     |             |
| scripts_length_id     | integer  | null: false |
| Genre_id              | integer  | null: false |
| ending_id             | integer  |             |

### Association

- belongs_to :user

## groups テーブル
| Colum       | Type   | Options     |
| ------------| ------ | ----------- |
| group_name  | string | null: false |

- has_many :users
- has_many :messages

## groups_users  テーブル
| Colum | Type       | Options                        |
| ----- | ---------- | ------------------------------ |
| user  | references | null: false, foreign_key: true |
| group | references | null: false, foreign_key: true |

### Association

- belongs_to :group
- belongs_to :user

## messages
| Colum   | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| group   | references | null: false, foreign_key: true |

### Association

- belongs_to :group
- belongs_to :user

