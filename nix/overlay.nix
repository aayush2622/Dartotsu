# Call `final.callPackage` only inside attribute values. Doing it while this
# attrset is being built (or touching `final.lib` here) re-enters the overlay
# fixpoint. `prev.lib` is only used to name the attributes.
final: prev:
let
  channels = builtins.fromJSON (builtins.readFile ../channels.json);
in
prev.lib.mapAttrs' (channel: spec: {
  name = if channel == "stable" then "dartotsu" else "dartotsu-${channel}";
  value = (final.callPackage ./package.nix { }) ({ inherit channel; } // spec);
}) channels
