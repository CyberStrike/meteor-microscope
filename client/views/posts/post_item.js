Template.postItem.helpers({
  domain: function(){
    a = document.createElement('a');
    a.href = this.url;
    return a.hostname;
  }
});