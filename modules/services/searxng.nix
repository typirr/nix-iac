{ pkgs, ... }:{
 services.searx = {
   enable = true;
   package = pkgs.searxng;  
 };
}
