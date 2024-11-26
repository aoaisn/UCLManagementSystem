<template>
  <div class="page">
    <el-row type="flex" justify="center" align="middle" class="container">
      <el-col :lg="14" :xl="10">
        <el-row class="panel">
          <el-col :span="24">
            <div class="right">
              <div class="title-container">
                <h2>UCL管理システム</h2>
                &nbsp;&nbsp;&nbsp;&nbsp;
              </div>
              <div class="row">
                <el-input
                  v-model="email"
                  placeholder="メール"
                  size="large"
                  clearable
                >
                  <template v-slot:append>
                    <el-button
                      :disabled="isDisabled"
                      @click="getVerificationCode"
                      type="primary"
                    >
                      {{ buttonText }}
                    </el-button>
                  </template>
                </el-input>
              </div>
              <div class="row">
                <el-input
                  v-model="code"
                  placeholder="確認コード"
                  size="large"
                  clearable
                ></el-input>
              </div>
              <div class="row">
                <el-radio-group v-model="choose">
                  <el-radio :label="0">人材管理</el-radio>
                  <el-radio :label="1">フォーム管理</el-radio>
                </el-radio-group>
              </div>
              <div class="row">
                <el-button
                  type="primary"
                  class="btn"
                  size="large"
                  @click="login"
                >
                  システムログイン
                </el-button>
              </div>
            </div>
          </el-col>
        </el-row>
      </el-col>
    </el-row>
  </div>
</template>

<script>
export default {
  data() {
    return {
      email: "",
      code: "",
      lang: "zh-CN",
      isDisabled: false,
      countdown: 0,
      timer: null,
      choose: 0,
    };
  },
  computed: {
    buttonText() {
      return this.countdown > 0 ? `${this.countdown}秒` : "取得確認コード";
    },
  },
  methods: {
    getVerificationCode() {
      let that = this;
      const emailPattern = /^([a-zA-Z0-9_\-]+)@[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;
      if (this.email == null || this.email == "") {
        that.$message.error("邮箱不能为空");
        return;
      }
      let data = {
        email: that.email,
        systemCode: that.choose,
      };
      that.$http("/user/emailCode", "POST", data, true, function (resp) {
        if (resp.code === 200) {
          that.$message.success("確認コードがメールに送信されました");
          that.isDisabled = true;
          that.countdown = 60;
          // 启动倒计时
          that.timer = setInterval(() => {
            if (that.countdown > 0) {
              that.countdown--;
            } else {
              that.isDisabled = false;
              clearInterval(that.timer);
            }
          }, 1000);
        } else {
          return;
        }
      });
    },
    login() {
      let that = this;
      let data = {
        email: that.email,
        code: that.code,
        lang: that.lang,
        systemCode: that.choose,
      };
      if (data.email == null || data.email == "") {
        that.$message.error("メールを空にすることはできません");
        return;
      } else if (data.code == null || data.code == "") {
        that.$message.error("認証コードを入力する必要があります");
        return;
      }
      that.$http("/login", "POST", data, true, function (resp) {
        if (resp.code === 200) {
          localStorage.setItem("token", resp.token);
          localStorage.setItem("permissions", JSON.stringify(resp.permissions));

          that.$message.success("ログイン成功");
          that.$router.push({ name: "Home" });
        } else {
          that.$message.error(`ログインに失敗しました: ${resp.msg}`);
        }
      });
    },
  },
};
</script>
<style lang="less" scoped="scoped">
@import url("login.less");
</style>

