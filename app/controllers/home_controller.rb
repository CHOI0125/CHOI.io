class HomeController < ApplicationController
  def index
    unless user_signed_in?
     redirect_to "/users/sign_in"
    end
  end
  
  def new
        # 사용자가 데이터를 입력할 화면
        # 자동으로 같은 화면,view를 불러서 사용자에게 보여준다.
  end
  def create
        # controller에서 입력 받은 데이터를 실제 db에 저장할 엑션
        # 와 난 진짜 벡은 아닌가봐 프론트가 좋아여
        @home = Home.new #Post라는 모델에서 하나 새로운 로우를 만든다.
        @home.title = params[:input_title] #input_title이라는 이름을가진 데이터를 title에 저장한다.
        @home.content = params[:input_content] #input content 라는 이름을 가진 데이터를 content에 저장한다.
        @home.image = params[:image]   
        @home.save #반드시 저장해야 한다. 
        redirect_to"/home/index" 
        #redirect_to "/posts/show/#{@post.id}"
  end
  def list #전체 글을 보여줄 수 있는 화면
        @homes=Home.all #다수니까 s를 붙인다. Post라는 데이터 베이스 안에 있는 전부를 보여준다.
        
  end
  def show #한개의 글만 보여줄 수 있는 화면
        @home = Home.find(params[:home_id])
        @comments = Comment.where(home_id: params[:home_id])
  end
  def destroy #삭제 기능
        @home = Home.find(params[:home_id])
        @home.destroy
        redirect_to "/home/index"
  end
    
  def edit #실제 포스트를 수정할 수 있는 화면
        @home = Home.find(params[:post_id])
  end
    
  def update # 수정이 실제로 반영될 수 있는 액션
        @home = Home.find(params[:post_id])
        @home.title = params['input_title'] #input_title이라는 이름을가진 데이터를 title에 저장한다.
        @home.content = params['input_content'] #input content 라는 이름을 가진 데이터를 content에 저장한다.
        @home.save #반드시 저장해야 한다. 
        redirect_to "/home/show/#{@home.id}"
  end
end
