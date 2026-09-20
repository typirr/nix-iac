{ pkgs, ... }:{
 services.searx = {
   enable = true;
   package = pkgs.searxng;  
   settings = {
     server.port = 8080;
   };
 };
}
