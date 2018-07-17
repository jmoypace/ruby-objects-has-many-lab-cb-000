class Author
attr_accessor :name
@@all=[]
def initialize(name)
  @name=name
@@all<<self
end
def self.all
    @@all
  end
def add_post(post)
  post.title=self
end

def add_post_by_title(title)
post=Post.new(title)
post.title=self
end


def posts
Post.all.select {|post| title.author == self}
end

def self.post_count
    Post.all.count
  end
end
