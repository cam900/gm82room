var layer,newlayer;

layer=ds_list_find_value(layers,ly_current)

add_tile_layer()

newlayer=ds_list_find_value(layers,layersize-1)

selectt=noone
with (tileholder) sel=0

with (tileholder) if (tlayer==layer) {
    o=instance_copy(0)
    o.tlayer=newlayer
    o.depth=o.tlayer-0.01

    o.tile=tile_add(tile_get_background(tile),tile_get_left(tile),tile_get_top(tile),tile_get_width(tile),tile_get_height(tile),x,y,newlayer)
    tile_set_blend(o.tile,tile_get_blend(tile))
    tile_set_alpha(o.tile,tile_get_alpha(tile))
    tile_set_scale(o.tile,tile_get_xscale(tile),tile_get_yscale(tile))
}

change_mode(mode)