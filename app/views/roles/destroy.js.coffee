# Fade out the role and then drop it from the DOM.
$('#role_<%= @role.id %>').fadeOut 500, ->
  $(this).remove()
