import React, { useEffect, useState } from "react"
import Table from 'react-bootstrap/Table'
import { Container } from "react-bootstrap"
import Wheel from "./Wheel"
// parent

function RestaurantsList () {
    const [restaurantsArr, setRestaurants] = useState([])

    const getRestaurants = () => {
        fetch("http://localhost:3000/restaurants")
            .then(response => response.json())
            .then(data => {
                setRestaurants(data)

            })
    }

    useEffect(() => {
        getRestaurants()

    }, [])

    const restaurants = restaurantsArr.map((restaurant) => {

        let WebsiteLink = <a href={restaurant.website_URL}>{restaurant.name}</a>
        let MenuLink = <a href={restaurant.menu_img}>Menu</a>

        return (
            <tr key={restaurant.id}>
                <td >{WebsiteLink}</td>
                <td>{MenuLink}</td>
                <td>{restaurant.category}</td>
            </tr>
        )
    })

    return (
        <>
        <Wheel restaurants={restaurants}/>
            <Container id="Home" className="page-container" style={{ paddingTop: '0px' }}>
                <Table striped hover style={{ minWidth: "960" }}>

                    <tr>
                        <th>Name</th>
                        <th>Menu</th>
                        <th>Category</th>
                    </tr>
                    <tbody>
                        {restaurants}
                    </tbody>

                </Table>
            </Container>
        </>
    )

}
export default RestaurantsList;