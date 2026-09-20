{ pkgs, ... }:{
 services.searx = {
   enable = true;
   package = pkgs.searxng;  
   settings = {
     server.port = 8080;
     server.bind_address = "0.0.0.0";
   };
 };
}
