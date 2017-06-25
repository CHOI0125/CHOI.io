class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :title #title이라는 테이블을 string을 사용해서 생성합니다.
      t.text :content

      t.timestamps null: false
    end
  end
end
