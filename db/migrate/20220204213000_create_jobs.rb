class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :type_job, null: false, default: "Presencial"
      t.text :description, default: "Jesus também chamado Jesus de Nazaré foi um pregador e líder religioso judeu do primeiro século.[11] Ele é a figura central do cristianismo e aquele que os ensinamentos de maior parte das denominações cristãs, além dos judeus messiânicos, consideram ser o Filho de Deus. O cristianismo e o judaísmo messiânico consideram Jesus como o Messias aguardado no Antigo Testamento e referem-se a ele como Jesus Cristo, um nome também usado fora do contexto cristão."
      t.integer :salary
      t.string :expiry_date
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
