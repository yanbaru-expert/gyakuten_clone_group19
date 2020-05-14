require "import.rb"

namespace  :import_csv do
  desc "AWSテキストデータをインポートするタスク"

    task aws_texts: :environment do

      list = Import.csv_data(path:"db/csv_data/aws_texts.csv")
      
      puts "AWSテキストインポート開始"

      # 例外処理
      begin
        AwsText.create!(list)
        puts "インポート完了"
      rescue ActiveModel::UnknownAttributeError => invalid
        puts "インポートに失敗：UnknownAttributeError"
      end
    end

end