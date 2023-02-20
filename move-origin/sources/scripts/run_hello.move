// scripts/run_hello.move
script {
    use 0x1::HelloWorld;
    use std::debug;

    fun main() {
        let five = HelloWorld::gimme_five();
        debug::print<u8>(&five);

          // only support u8,u64,u128
        let a = 100u128;

         if (a < 10) {};
         if (a < 10) {}; 
         
         // as convert

         let b = 10u64;
         if ((a as u64) ==  10) {
          debug::print(&b)
         };

         // address

         let _addr: address;

          let _ = 0x2;
         // comments //
         // /**/    

         // expression

         let a = 0x1;
         debug::print(&a);    

         // condition

        let a = true;

        if (a) {
            debug::print<u8>(&0);
        } else {
            debug::print<u8>(&99);
        };
    }
}
