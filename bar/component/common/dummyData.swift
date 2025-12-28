func getDrinkList()->[any ProductProps]{
    let drinkList: [any ProductProps] = [
        DrinkClass(_id:1,_name: "칵테일", _price: 7000, _image: "cocktail"),
        DrinkClass(_id:2,_name: "위스키", _price: 10000, _image: "cocktail"),
        DrinkClass(_id:3,_name: "맥주", _price: 4000, _image: "cocktail")
    ];
    return drinkList;
}

func getFoodList()->[any ProductProps]{
    let foodList: [any ProductProps] = [
        FoodClass(_id:1,_name: "피자", _price: 7000, _image: "food"),
        FoodClass(_id:2,_name: "견과류", _price: 10000, _image: "food"),
        FoodClass(_id:3,_name: "치즈플래터", _price: 4000, _image: "food")
    ];
    return foodList;
}

func getOrderList()->[[OrderClass]]{
    let orderList: [[OrderClass]] = [
        [OrderClass(_menuName: "칵테일", quantity: 2, price: 1000),
        OrderClass(_menuName: "맥주", quantity: 3, price: 10000),
        OrderClass(_menuName: "보드카", quantity: 1, price: 5000),]
        ,[OrderClass(_menuName: "칵테일", quantity: 2, price: 1000),
            OrderClass(_menuName: "맥주", quantity: 3, price: 10000),
            OrderClass(_menuName: "보드카", quantity: 1, price: 5000)]
    ];
    return orderList;
}
