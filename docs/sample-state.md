```js
{
  session: {
    currentUser: {
      id: 1
      username: "sam",
      image_url: "/assets/default_sam.png",
      pins: [],
      boards: [],
      followers: [],
      following: []
    }
  }

  user: {
    id: 2
    username: "jeremy",
    image_url: "/assets/default_sam.png",
    pins: [],
    boards: [],
    followers: [],
    following: []
  }

  pins: {
    4: {
      title: "Punny cow captions",
      description: "Have ya herd of one?",
      image_url: "www.cowpuns.com/1"
      user: {},
      board: {}
      comments"(bonus)": {}
    }
  }

  boards: {
    2: {
      title: "Photography",
      description: "Just go shoot, everyday be capturing",
      user: {},
      pins: [1, 4, 16]
    }
  }

  follows: {
    followers: {
      users: []
    },
    following: {
      users: []
    }
  }
}
```
