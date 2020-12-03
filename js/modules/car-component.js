export default {
    
        props: ["car"],

        name: "TheCarCard",

        //data needs to be a function inside a component
        data: function(){
            return{
                isShown: false
            }
        },

        template: 
        `<li>
            <img :src="'images/' + car.thumbnail" alt="car image">
            <p> {{ car.name }} </p>

            <div @click="logClicked" class="remove_prof">Show info</div>
            <div class="display" v-bind:class="{'displayInfo' : isShown}"> {{ car.description }}</div>
            </li>`,
        mounted: function() {
            console.log('loaded a car card');
        },

        methods: {
            logClicked() {
                console.log(`fired from inside ${this.car.name} the component`);
                this.$emit("showmydata", this.car);
                this.isShown = this.isShown ? false :true;
                console.log(this.isShown);
            }
        }

        
        
}