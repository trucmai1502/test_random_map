#region Wrapping map

if (x >= room_width + 1) x = 1;
if (x <= -1) x = room_width - 1;
if (y >= room_height + 1) y = 1;
if (y <= -1) y = room_height -1 ;

#endregion
