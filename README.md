# README

tubeTV-alpha

This web-app is an experiment in using Google's Youtube Data API to enable Youtube video functionality and allow for integrated Youtube search functionality.

tubeTV is a web-app allowing users to sign-in/register and create their own custom "Television" with user-defined "channels" reminiscent of traditional TV channels (i.e. ch. 2, ch. 4, ch. 5, etc.).  User channels can be defined in one of several ways:

*A Youtube search-query
*An existing Youtube "channel"
*An existing Youtube video, with Youtube's existing "up-next" feature
*An existing Youtube video playlist

Every account will be created with several pre-existing channels, to give users an example of how channels can be defined.  User's will be free to delete, or modify, these channels, as well as add their own channels.

When a user starts watching a channel, a video will begin playing based on how the channel is defined, and more videos will be queued as the user watches.  When a video ends the next video will start seemlessly, giving the user an experience similar to a traditional TV channel.  

User's will be able to browse their channels at will.  When leaving a channel, the user's place will automatically be saved in the video they were watching.  If the user decides to browse that channel again at a later time, the video they left will begin playing at the time the user left off.

User's can browse channels at will, and create new channels at any time.

Channels can be "reset" at any time, which will queue up the first video in line.
