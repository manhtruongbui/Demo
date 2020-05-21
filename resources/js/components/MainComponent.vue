<template>
  <div class="container">
    <!-- <div class="form-demo">
      <form action="form/forminput" method="POST" class="form-input">
        <div class="title">
          <label>Title Form Demo</label>
        </div>
        <div class="form-group">
          <div class="form-item">
            <label class="title-item">Type_id</label>
            <input type="text" name="templates_type_id" class="form-content" placeholder="Input..." />
          </div>
          <div class="form-item">
            <label class="title-item">url_image</label>
            <input type="text" name="image_front_url" class="form-content" placeholder="Input..." />
          </div>
          <div class="form-item">
            <label class="title-item">url_temp</label>
            <input
              type="text"
              name="tenplate_border_url"
              class="form-content"
              placeholder="Input..."
            />
          </div>
          <div class="form-item">
            <label class="title-item">Name</label>
            <input type="text" name="name" class="form-content" placeholder="Input..." value />
          </div>
          <div class="form-item">
            <label class="title-item">Thumbnail</label>
            <input type="text" name="thumbnail" class="form-content" placeholder="Input..." />
          </div>
          <div class="form-item">
            <label class="title-item">Description</label>
            <input type="text" name="description" class="form-content" placeholder="Input..." />
          </div>
          <div class="form-item">
            <label class="title-item">Price</label>
            <input type="text" name="price" class="form-content" placeholder="Input..." value />
          </div>
          <div class="form-item">
            <label class="title-item">Height</label>
            <input type="text" name="height" class="form-content" placeholder="Input..." />
          </div>
          <div class="form-item">
            <label class="title-item">Width</label>
            <input type="text" name="width" class="form-content" placeholder="Input..." />
          </div>
          <div class="form-item">
            <label class="title-item">Comment</label>
            <input type="text" name="comment_text" class="form-content" placeholder="Input..." />
          </div>
        </div>
        <button type="submit">Submit</button>
      </form>
    </div>-->
    <div class="columns is-mobile">
      <div class="column is-10 is-offset-1">
        <div class="formm">
          <form action="#" @submit="checkForm" method="post" novalidate="true" class="form">
            <div class="field">
              <label for class="title">Name</label>
              <div class="control">
                <input type="text" class="input" placeholder="..." v-model="messager_input" />
                <div v-if="errors.length">
                  <ul>
                    <li v-for="error in errors" :key="error.id">
                      <p class="help is-danger">{{ error }}</p>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </form>
        </div>
        <div class="buttons is-centered">
          <router-link to="/">
            <button type="submit" class="button is-danger" @click="submitform">Submit</button>
          </router-link>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "MainComponent",
  data() {
    return {
      messager_input: null,
      errors: [],
    };
  },
  methods: {
    checkForm: function(e) {
      this.errors = [];
      if (!this.name) {
        this.errors.push("Name required");
      }
      if (!this.price) {
        this.price.push("Price required");
      } else if (!this.vali(this.price)) {
        this.errors.push("Valid price required");
      }
      if(!this.errors.length){
        return true;
      }
      e.preventDefault();
    },
    vali: function (price) {
      
    },
    submitform() {}
  }
};
</script>
<style scoped>
.formm {
  width: 100%;
  margin: 35px auto;
  padding: 15px;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  border: 1px solid #dd0017;
  border-radius: 5px;
}
.form{
  width: 100%;
}
.formm .field {
  display: flex;
  flex-wrap: wrap;
  width: 50%;
  padding: 5px;
  margin-bottom: 0 !important;
}
.field .title {
  width: 25%;
  font-size: 14px;
  margin: 2px !important;
  padding: 5px;
}
.control {
  width: 70%;
}
.help {
  font-size: 12px;
}
.buttons {
  width: 100%;
  margin: 10px auto;
}
</style>