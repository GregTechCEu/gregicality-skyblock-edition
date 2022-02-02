import crafttweaker.item.IItemStack;

//Hide Electric sieve category
//mods.jei.JEI.hideCategory("gregtech:electric_sieve");

//Fix Steam Macerator and rock breaker
recipes.remove(<gregtech:machine:9>);
recipes.addShaped("Steam Macerator", <gregtech:machine:9>,
 [[<minecraft:flint>,<gregtech:fluid_pipe_small:260>,<gregtech:meta_tool_head_buzz_saw:335>],
  [<gregtech:fluid_pipe_small:260>,<gregtech:steam_casing>,<gregtech:fluid_pipe_small:260>],
  [<minecraft:piston>,<gregtech:fluid_pipe_small:260>,<minecraft:piston>]]);
recipes.remove(<gregtech:machine:19>);
recipes.addShaped("Steam Rock Breaker", <gregtech:machine:19>,
 [[<minecraft:piston>,<gregtech:fluid_pipe_small:260>,<minecraft:piston>],
  [<gregtech:fluid_pipe_small:260>,<gregtech:steam_casing>,<gregtech:fluid_pipe_small:260>],
  [<minecraft:flint>,<gregtech:fluid_pipe_small:260>,<gregtech:meta_tool_head_buzz_saw:335>]]);

//Fix LV Macerator
recipes.remove(<gregtech:machine:65>);
recipes.addShaped("LV Macerator", <gregtech:machine:65>,
 [[<metaitem:electric.piston.lv>,<metaitem:electric.motor.lv>,<gregtech:meta_tool_head_buzz_saw:324>],
  [<gregtech:cable_single:112>,<gregtech:cable_single:112>,<gregtech:machine:986>],
  [<metaitem:circuit.electronic>,<metaitem:circuit.electronic>,<gregtech:cable_single:112>]]);

//makes GT warning signs chiselable
mods.chisel.Carving.addGroup("gregtech_warning_sign");
mods.chisel.Carving.addVariation("gregtech_warning_sign", <gregtech:warning_sign:0>);

val gregtech_warning_sign = <gregtech:warning_sign>.definition;

for i in 1 to 10{
recipes.remove(gregtech_warning_sign.makeStack(i));
mods.chisel.Carving.addVariation("gregtech_warning_sign", gregtech_warning_sign.makeStack(i));
}