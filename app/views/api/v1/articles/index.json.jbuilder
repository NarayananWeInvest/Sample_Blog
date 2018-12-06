json.articles @articles.each do |article|
	json.title article.title
	json.author article.author
	json.publication "springer"
end