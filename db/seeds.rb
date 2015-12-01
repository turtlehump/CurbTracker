users = User.create(
  [
    { email: 'sa@sa.com', name: "Mr. Admin", password: "sa", password_confirmation: "sa", admin: true},
    { email: 'a@a.com', name: "Mr. Aardvark", password: "a", password_confirmation: "a"},
    { email: 'b@b.com', name: "Mr. Bear", password: "b", password_confirmation: "b"},
    { email: 'c@c.com', name: "Mr. Cat", password: "c", password_confirmation: "c"},
    { email: 'd@d.com', name: "Mr. Dog", password: "d", password_confirmation: "d"},
    { email: 'e@e.com', name: "Mr. Elephant", password: "e", password_confirmation: "e"},
    { email: 'f@f.com', name: "Mr. Fox", password: "f", password_confirmation: "f"},
    { email: 'g@g.com', name: "Mr. Gopher", password: "g", password_confirmation: "g"},
    { email: 'h@h.com', name: "Mr. Horse", password: "h", password_confirmation: "h"},
    { email: 'i@i.com', name: "Mr. Iguana", password: "i", password_confirmation: "i"},
    { email: 'j@j.com', name: "Mr. Jackrabbit", password: "j", password_confirmation: "j"},
    { email: 'k@k.com', name: "Mr. Kangaroo", password: "k", password_confirmation: "k"},
    { email: 'l@l.com', name: "Mr. Llama", password: "l", password_confirmation: "l"},
    { email: 'm@m.com', name: "Mr. Mouse", password: "m", password_confirmation: "m"},
    { email: 'n@n.com', name: "Mr. Numbat", password: "n", password_confirmation: "n"},
    { email: 'o@o.com', name: "Mr. Opossum", password: "o", password_confirmation: "o"},
    { email: 'p@p.com', name: "Mr. Peacock", password: "p", password_confirmation: "p"},
    { email: 'q@q.com', name: "Mr. Quail", password: "q", password_confirmation: "q"},
    { email: 'r@r.com', name: "Mr. Rabbit", password: "r", password_confirmation: "r"},
    { email: 's@s.com', name: "Mr. Snake", password: "s", password_confirmation: "s"},
    { email: 't@t.com', name: "Mr. Tiger", password: "t", password_confirmation: "t"},
    { email: 'u@u.com', name: "Mr. Urial", password: "u", password_confirmation: "u"},
    { email: 'v@v.com', name: "Mr. Vulture", password: "v", password_confirmation: "v"},
    { email: 'w@w.com', name: "Mr. Wombat", password: "w", password_confirmation: "w"},
    { email: 'x@x.com', name: "Mr. Xerox", password: "x", password_confirmation: "x"},
    { email: 'y@y.com', name: "Mr. Yak", password: "y", password_confirmation: "y"},
    { email: 'z@z.com', name: "Mr. Zebra", password: "z", password_confirmation: "z"},
    { email: 'phil@phil.com', name: "Phil", password: "phil", password_confirmation: "phil"},
  ]
)

starts = Start.create(
  [
    {name: "Home", description: "only setting address", address: "16731 Magneson Loop, Los Gatos CA", user_id: 28},
    {name: "Home2", description: "only setting lat/long", latitude: 37.233878, longitude: -121.96236, user_id: 28},
    {name: "Home3", description: "mismatch between address and lat/long", address: "16731 Magneson Loop, Los Gatos CA", latitude: 50, longitude: 50, user_id: 28},
    {name: "Mitchs House", description: "only setting address", address: "102 Blossom Way, Scotts Valley CA", user_id: 28},
    {name: "Mitchs House2", description: "only setting lat/long", latitude: 37.05551, longitude: -121.99193, user_id: 28},
    {name: "Mitchs House2", description: "mismatch between address and lat/long", address: "102 Blossom Way, Scotts Valley CA", latitude: 50, longitude: 50, user_id: 28}
  ]
)
