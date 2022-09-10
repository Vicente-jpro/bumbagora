require 'rails_helper'

RSpec.describe Job, type: :model do

  describe "Job" do
    let(:job) {create(:job)}


    it "has a title." do 
      expect(job.title).to eq("Ruby on Rails")
      puts "Value of job -> #{job}"
    end

    it "has a job type." do 
      expect(job.type_job).to eq("Remota")
    end

    it "has a salary." do 
      expect(job.salary).to eq(500)
    end

    it "has a category." do 
      expect(job.category.name).to eq("Programming")
    end

    it "has a user." do 
      expect(job.user.username).to eq("Vicente Simao")
    end

    it "has one applayer" do 
      expect(job.applayers).to eq(1)
    end
  end



    # id { 1 }
    # title { "Ruby on Rails" }
    # type_job { "Remota" }
    # description {  }
    # salary { 1 }
    # category_id { 1 }
    # created_at { "2022-06-24 08:21:07" }
    # updated_at { "2022-06-24 08:21:07" }
    # user_id { 1 }
    # applayers { 1 }
    # number_days { 1 }

    #   t.string "title"
    # t.string "type_job", default: "Presencial", null: false
    # t.text "description", default: "Jesus também chamado Jesus de Nazaré foi um pregador e líder religioso judeu do primeiro século.[11] Ele é a figura central do cristianismo e aquele que os ensinamentos de maior parte das denominações cristãs, além dos judeus messiânicos, consideram ser o Filho de Deus. O cristianismo e o judaísmo messiânico consideram Jesus como o Messias aguardado no Antigo Testamento e referem-se a ele como Jesus Cristo, um nome também usado fora do contexto cristão."
    # t.integer "salary"
    # t.integer "category_id", null: false
    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false
    # t.integer "user_id", default: 1, null: false
    # t.integer "applayers", default: 0
    # t.integer "number_days", default: 34
    # t.index ["category_id"], name: "index_jobs_on_category_id"
    # t.index ["user_id"], name: "index_jobs_on_user_id"
  
end
