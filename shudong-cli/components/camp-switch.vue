<!--
	Description: switch button
	Author: lyz
	Date:
	Version:
-->

<template>
	<view>
		<view class="switch">

			<view class="switch-left" :class="{ chosen : status == 0}" @tap="changeStatus(0)">
				{{anonymity}}
			</view>

			<view class="switch-right" :class="{ chosen : status != 0}" @tap="changeStatus(1)">
				{{nickname}}
			</view>
			<view class="bg-of-switch" :style="{left: (status == 0 ? (bgSwitchLeft + '%') : (bgSwitchRight + '%'))}"></view>
		</view>
		<!-- 提示框 -->
		<uni-popup type="top" ref="popTip" :maskClass="{'position': 'fixed',
		'bottom': 0,'top': 0,'left': 0,'right': 0,'backgroundColor': 'rgba(255, 255, 255, 0)'}">
			<view style="border-bottom-right-radius:15px;border-bottom-left-radius:15px;padding: 20px;
			display: flex;justify-content: center; flex-direction: column;height:60px;align-items: center;background: rgba(0,0,0,0.8);">
				<view style="margin-bottom: 10px;color:white;">看来客官有选择困难呀</view>
				<view style="color:white;">小树洞觉得您还是匿名吧</view>
			</view>
		</uni-popup>
	</view>
</template>

<script>
	import Poster from './poster.vue'
	export default {
		components: {
			Poster
		},
		data() {
			return {
				status: 0,
				bgSwitchLeft: 0,
				bgSwitchRight: 40,
				nickname: "",
				anonymity: "匿名",
				nicknameInfo: [
					"一颗胡萝卜",
					"一颗大白菜",
					"俩袋鼠",
					"一包薯片",
					"鸡肉卷",
					"两只小青蛙",
					"诺丁鸭鸭",
					"黄焖鸡变态辣",
					"不吃香菜",
					"多吃肉肉",
					"鸵鸟不会飞",
					"不想努力了",
					"红烧牛肉面",
					"一只毛毛虫",
					"图书馆的椅子",
					"一包辣条",
					"诺丁鸭不是鸭",
					"小悉尼的蚊子",
					"长毛的饮水机",
					"垫子上的猫",
					"一块饼干的故事",
					"镜子里的另一个我",
					"漫画书的超人",
					"纸飞机的旅行",
					"棉花糖的云",
					"香蕉船的舵手",
					"甜甜圈的梦想",
					"沙发上的猫咪"
				],
				count: 0 //随机名字最多随机6次 count用来计数
			};
		},
		mounted() {},
		methods: {
			/**
			 * @onChange status 有效值 0/1
			 */
			changeStatus(status) {
				if (this.count == 12) {
					this.$refs.popTip.open();
					this.count++;
				}
				if (this.status != status && this.count < 12) {
					this.status = status;
					if (this.status == 0) {
						this.nickname = "";
						this.anonymity = "匿名";
					} else {
						this.nickname = this.nicknameInfo[Math.floor(Math.random() * 27)];
						this.anonymity = "";
					}
					this.$emit("onChange", (status == 0 ? this.anonymity : this.nickname));
					this.count++;
				}
			}
		}
	}
</script>

<style>
	.switch {
		background: #352844;
		border-radius: 75px;
		width: 70%;
		float: right;
		line-height: 30px;
		display: flex;
		vertical-align: middle;
		position: absolute;
		left: 15%;
		justify-content: space-between;
	}

	.switch-right,
	.switch-left {
		color: #ececec;
		letter-spacing: 2upx;
		font-size: 1px;
		font-weight: 400;
		line-height: 30px;
		display: inline-block;
		align-items: center;
		justify-content: center;
		display: flex;
		z-index: 30;
		height: 30px;
		width: 50%;
		text-align: center;
		transition: padding-left 200ms,
			padding-right 200ms,
			font-size 400ms,
			font-weight 200ms,
			color 200ms;
		transition-delay: 0ms;
	}

	.bg-of-switch {
		height: 30px;
		width: 60%;
		background-color: #453959;
		border-radius: 75px;
		box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.16);
		z-index: 20;
		position: absolute;
		left: 0px;
		top: 0px;
		transition: left 500ms ease;
	}

	.chosen {
		font-weight: bold;
		font-size: 12px;
		color: #FFFFFF;
		opacity: 0.8;
		letter-spacing: 2upx;
		width: 50%;
		display: flex;
		justify-content: center;
		align-items: center;
		transition: padding-left 300ms,
			padding-right 300ms,
			font-size 400ms,
			font-weight 300ms,
			color 300ms;
		transition-delay: 100ms;
	}
</style>
