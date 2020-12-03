
import { fetchData } from './modules/DataMiner.js';
import CarComponent from "./modules/car-component.js";

(() => {
    let vue_vm = new Vue({
        data: {
            isShown: false,
            collection: [],
            currentCarData: {
            },
        }, 
        created: function(){
            console.log("Vue is mounted!");
            fetchData("./includes/index.php")
            .then(data => {
                data.forEach(car => this.collection.push(car));
                this.currentCarData = data[1];
            })
            .catch(err => console.error(err));
        },
        updated: function(){
            console.log("Vue just updated the DOM");
        },
        methods: {
            logClicked(){
                console.log("clicked on a carname");
            },
            clickHeader(){
                console.log("clicked on the header");
            },
            showCarData(target){
                console.log("clicked to view bio data about", target.video);
                this.currentCarData = target;
            },
        },
        components: {
            "car-card": CarComponent
        }
    }).$mount("#app"); //also connects Vue to your wrapper in HTML 

})();