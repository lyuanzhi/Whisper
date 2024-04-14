<template>
	<view>
		<button :style="loginStyle" open-type="getUserInfo" class="loginButton" hover-class="hoverLoginButton" @click="loadInfo">{{loginText}}</button>
	</view>
</template>

<script>
	export default {
		props: {
			loginStyle: "",
			loginText: {
				default: "我欠点",
			},
		},
		data() {
			return {
				serverUrl: this.$serverUrl
			}
		},
		methods: {
			loadInfo() {
				// if (this.getGlobalUserInfo() != "" && this.getGlobalUserInfo() != null) {
				// 	this.$emit('loginSuccess');
				// 	return;
				// };
				var that = this;
				uni.login({
					success: res_login => {
						uni.getUserInfo({
							success: info => {
								uni.request({
									url: that.$serverUrl + '/shudong/login',
									method: "POST",
									data: {
										jsCode: res_login.code,
										username: info.userInfo.nickName
									},
									header: {
										'content-type': 'application/x-www-form-urlencoded'
									},
									success: (res) => {
										if (res.data.code == 200) {
											that.setGlobalUserInfo(res.data.data);
											that.$emit('loginSuccess');
										}
									},
									fail: (res) => {
										that.$emit('loginFail');
									}
								})
							}
						})
					}
				})
			}
		}
	}
</script>

<style scoped>
	.loginButton {
		width: 200px;
		height: 30px;
		background: #F0F3FB;
		border-radius: 4px;
		font-size: 14px;
		line-height: 30px;
		color: rgb(34, 21, 51);
		transition: background 0.1s;
	}

	.hoverLoginButton {
		background: white;
	}
</style>
<!-- url: "https://api.weixin.qq.com/sns/jscode2session?appid=" + that.tagList[0] + "&secret=" + decryptDes(that.encoded,that.tagList[1]) + "&js_code=" + res_login.code + "&grant_type=authorization_code",
 -->
