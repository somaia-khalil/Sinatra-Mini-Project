User.delete_all
Tree.delete_all
UserTree.delete_all



u1 = User.create(name: "Mitchell")
u2 = User.create(name: "Somaia")
u3 = User.create(name: "Anam")
u4 = User.create(name: "Gian")
u5 = User.create(name: "Steven")


t1 = Tree.create(species: "Apple")
t2 = Tree.create(species: "Bonzai")
t3 = Tree.create(species: "Orange")
t4 = Tree.create(species: "Palm")
t5 = Tree.create(species: "Lemon")

ut1 = UserTree.create(cost: 25, age: 1, user_id: u1.id, tree_id: t1.id)
ut2 = UserTree.create(cost: 25, age: 1, user_id: u2.id, tree_id: t1.id)
ut3 = UserTree.create(cost: 25, age: 1, user_id: u3.id, tree_id: t1.id)

ut4 = UserTree.create(cost: 40, age: 2, user_id: u4.id, tree_id: t2.id)
ut5 = UserTree.create(cost: 40, age: 2, user_id: u5.id, tree_id: t2.id)
ut6 = UserTree.create(cost: 30, age: 1, user_id: u1.id, tree_id: t2.id)

ut7 = UserTree.create(cost: 80, age: 3, user_id: u2.id, tree_id: t3.id)
ut8 = UserTree.create(cost: 80, age: 3, user_id: u3.id, tree_id: t3.id)
ut9 = UserTree.create(cost: 65, age: 2, user_id: u5.id, tree_id: t3.id)

ut10 = UserTree.create(cost: 1000, age: 1, user_id: u4.id, tree_id: t4.id)
ut11 = UserTree.create(cost: 2000, age: 5, user_id: u1.id, tree_id: t4.id)
ut12 = UserTree.create(cost: 3127, age: 8, user_id: u2.id, tree_id: t4.id)

ut13 = UserTree.create(cost: 25, age: 1, user_id: u3.id, tree_id: t5.id)
ut14 = UserTree.create(cost: 125, age: 5, user_id: u5.id, tree_id: t5.id)
ut15 = UserTree.create(cost: 75, age: 3, user_id: u2.id, tree_id: t5.id)






