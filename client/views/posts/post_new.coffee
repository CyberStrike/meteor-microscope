
Template.postNew.events
  "submit form": (e, template)->
    e.preventDefault()

    post =
      url: $(e.target).find('[name=url]').val(),
      title: $(e.target).find('[name=title]').val(),
      message: $(e.target).find('[name=message]').val()

    post._id = Posts.insert(post)

    Router.go('postPage', post)