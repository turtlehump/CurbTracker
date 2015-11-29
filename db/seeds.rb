starts = Start.create(
  [
    {name: "Home", description: "only setting address", address: "16731 Magneson Loop, Los Gatos CA"},
    {name: "Home2", description: "only setting lat/long", latitude: 37.233878, longitude: -121.96236},
    {name: "Home3", description: "mismatch between address and lat/long", address: "16731 Magneson Loop, Los Gatos CA", latitude: 50, longitude: 50},
    {name: "Mitchs House", description: "only setting address", address: "102 Blossom Way, Scotts Valley CA"},
    {name: "Mitchs House2", description: "only setting lat/long", latitude: 37.05551, longitude: -121.99193},
    {name: "Mitchs House2", description: "mismatch between address and lat/long", address: "102 Blossom Way, Scotts Valley CA", latitude: 50, longitude: 50}
  ]
)
