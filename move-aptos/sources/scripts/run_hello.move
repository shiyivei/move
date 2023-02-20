// scripts/run_hello.move
script {
    use MyAddr::HelloWorld;
    use std::debug;

    fun main() {
        let five = HelloWorld::gimme_five();
        debug::print<u8>(&five);

        let a:u8;
        a = 10;

        let _ = 10u128;

        debug::print<u8>(&a);

        if (a < 10) {};
          if (a < 10u8) {}; 

          let a = false;

        if (a) {
            debug::print<u8>(&0);
        } else {
            debug::print<u8>(&99);
        };

        let b = 1;

        assert!(b == 100,1000);
    }
}
