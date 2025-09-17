func getDrinkList()->[any ProductProps]{
    let drinkList: [any ProductProps] = [
        DrinkClass(_name: "칵테일", _price: 7000, _image: "cocktail"),
        DrinkClass(_name: "위스키", _price: 10000, _image: "cocktail"),
        DrinkClass(_name: "맥주", _price: 4000, _image: "cocktail")
    ];
    return drinkList;
}

func getFoodList()->[any ProductProps]{
    let foodList: [any ProductProps] = [
        FoodClass(_name: "피자", _price: 7000, _image: "food"),
        FoodClass(_name: "견과류", _price: 10000, _image: "food"),
        FoodClass(_name: "치즈플래터", _price: 4000, _image: "food")
    ];
    return foodList;
}
