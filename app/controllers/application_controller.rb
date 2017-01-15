class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    query = <<-SQL
      select k.keyword, sum(ri.count)
      from (rankings r join ranking_items ri on r.id = ri.ranking_id)
      join keywords k on ri.keyword_id = k.id
      where r.id in(select id from rankings order by id desc limit 30)
      group by k.id,ri.count order by sum(ri.count) desc limit 30;
    SQL

    @hash = ActiveRecord::Base.connection.select_all(query)

    p @hash
  end
end
