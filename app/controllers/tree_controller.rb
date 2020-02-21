class TreeController < ApplicationController 
    set :views, "app/views/trees"

    get "/trees" do 
        @trees = Tree.all 
        erb :index
    end
    
    get "/trees/new" do 
        @users = User.all
        erb :new
    end

    get "/trees/:id" do
        # @users = User.all
        @tree = current_tree
        erb :show

    end

    get "/trees/:id/edit" do 
        @tree = current_tree
        erb :edit
    end

    post "/trees" do 
        # binding.pry
        @tree = Tree.create(params[:tree])

        # if params[:tree] && params[:tree].length > 0 
        #     params[:tree].each do |id|
        #         ut = UserTree.find(id)
        #         ut.update(tree_id: tree.id)
        #     end
        # end

        if params[:users] && params[:users].length > 0 
            params[:age].delete("")
            params[:cost].delete("")

            i = 0

            while i < params[:user].length do 
                UserTree.create(cost: params[:cost][i], age: params[:age][i], user_id: params[:users][i], tree_id: @tree.id)
                 i += 1
            end
        end
        # binding.pry

        if params[:user][:name] != ""
            user = User.create(params[:user])
            UserTree.create(cost: params[:user_tree][:cost], age: params[:user_tree][:age], user_id: user.id, tree_id: @tree.id)

        end
        redirect "/trees/#{@tree.id}"
    end

    patch "/trees/:id" do
        @tree = current_tree
        @tree.update(params[:tree])
        redirect "/trees/#{@tree.id}"
    end

    delete "/trees/:id" do
        @tree = current_tree
        @tree.destroy
        redirect "/trees"
    end
    
    def current_tree
        Tree.find(params[:id])
    end
end