<template>
   <div class="bgimg">
    <div class="login-box">
      <el-form :model="ruleForm" status-icon :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm" >
        <span class="login-title">欢迎登录</span>
        <el-form-item label="账户" prop="username">
          <el-input v-model.number="ruleForm.username"></el-input>
        </el-form-item>
        <el-form-item label="密码" prop="password">
          <el-input type="password" v-model="ruleForm.password" autocomplete="off"></el-input>
        </el-form-item>

        <el-form-item>
          <el-button type="primary" @click="submitForm('ruleForm')">提交</el-button>
          <el-button @click="resetForm('ruleForm')">重置</el-button>
        </el-form-item>
      </el-form>
    </div>  
 </div>
   
</template>


<script>


 export default {

  data() {
            return {
                ruleForm: {
                   username:'',
                   password:''
                },
                rules: {},
                tableData: [],
                search1: '',
                search2: '',
                dialogAdd: false,
                dialogUpdate: false,
                pageSize: 5,
                currentPage: 1,
                total: 0,
                disablePage: false,
                multipleSelection: []
            };
        },
  created() {
    let postData = this.qs.stringify({
                userName: this.search1,
                userSex: this.search2
            });
  },

  methods: {
    //表单提交
    submitForm() {
      if (this.ruleForm.username == null || this.ruleForm.password == null ) {
                    this.$alert('用户信息不完整请检查', '温馨提示', {
                        confirmButtonText: '确定'
                    });
                    return;
                }
      let postData = this.qs.stringify({
                    username: this.ruleForm.username,//用户 Id
                    password: this.ruleForm.password,//证件类型
                    
                });
      this.axios({
                    method: 'post',
                    url: '/ssm_project/login/doLogin',
                    data: postData
                }).then(response => {
                  this.$router.push({ path: "/UserHome" });

                    // this.handlePageChange();
                    // this.getRowCount();
                    // this.$message({
                    //     type: 'success',
                    //     message: '已编辑!'
                    // });
                    // this.emptyUserData();
                    //console.log(response);
                }).catch(error => {
                    console.log(error);
                });

    },
    //重置
    resetForm (formName) {
      this.$refs[formName].resetFields()
    }
  },
  // mounted () {
  //   startAnimation()
  // }
}
</script>

<style>
  .bgimg {
            /* 前三行让整合div固定在屏幕的最上方和最左方 */
            position: fixed;
            top: 0;
            left: 0;
            /* 让整个div跟屏幕大小一样，min-width是为了在让屏幕宽度变小后图片停止缩放 */
            width: 100%;
            height: 100%;
            min-width: 1000px;
            /* 让div在整个HTML页面中各个层级的下方 */
            z-index: -10;
            /* 针对IE6 */
            zoom: 1;
            /* 图片平铺，不重复 */
            background-repeat: no-repeat;
            background-image: url("../assets/login_bg.png");
            /* 接下来三行让图片随屏幕大小同步缩放，但是有部分可能会被裁切，不过不至于会露白 */
            background-size: cover;
            -webkit-background-size: cover;
            -o-background-size: cover;
            /* 图片的位置，居中，靠左对齐 */
            background-position: center 0;
        }
  .login-box {
        border: 1px solid #DCDFE6;
        width: 350px;
        margin: 180px auto;
        background-image: url("../assets/login_bg.png");
        padding: 35px 35px 15px 35px;
        border-radius: 5px;
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
        box-shadow: 0 0 25px palegreen;
    }
    .login-title {
        text-align: center;
        margin: 0 auto 40px auto;
        color: #66CD00;
        font-size: 30px;
        font-weight: bold;
    }



 
</style>


