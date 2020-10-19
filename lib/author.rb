class Author
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def posts 
    Post.all.collect {|post| post if post.author == self}
  end

  def add_post(post) 
    post.author = self
  end

  def add_post_by_title(post)
    post_name = Post.new(post)
    add_post(post_name)
  end

  def self.post_count
    Post.all.count
  end

end
