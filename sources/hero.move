module hero::hero {
    use std::string::{Self, String};
    
    public struct Hero has key, store {
        // TODO: Add the fields for the Hero
        id: UID,
        name: String,
        power: u64,
        image_url: String,
    }

    #[allow(lint(self_transfer))]
    public entry fun create_hero(name: String, image_url: String, power: u64,  ctx: &mut TxContext) {
        // TODO: Create the Hero object
        let hero = Hero {
            id: object::new(ctx),
            name,
            power,
            image_url,
        };

        // TODO: Transfer the Hero object to the sender
        transfer::public_transfer(hero, ctx.sender());
    }

    public entry fun transfer_hero(hero: Hero, to: address) {
        transfer::public_transfer(hero, to);
    } 
        

}