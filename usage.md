# 使用方法

0. 安装 Node.JS

1. 获得一个 YOU.COM 账户并且订阅，登录。

2. 打开 F12（DevTools），找到 “Network（网络）”、刷新一下页面，找到“you.com”这个项目（或者“instrumentation”这个项目）

3. 点进去，往下滑找到 "Cookie"，完整的复制后面的内容。

4. 下载或Clone本项目代码，解压

5. 编辑 `config.example.mjs` 文件，把上面的 Cookie 粘贴进去，如果有多个则按如下格式填入。然后另存为把文件名改为 `config.mjs`

```
export const config = {
    "sessions": [
        {
            "cookie": "cookie1"
        },
        {
            "cookie": "cookie2"
        },
        {
            "cookie": "cookie3"
        }
    ]
}
```

7. （可选）如果需要，您可以仿照第6步在`start.bat`中设定一个名为 "PASSWORD" 的环境变量，并将其用作密码。如果没有定义该环境变量，程序将接受所有传入的请求，而不进行任何身份验证

    （可选）如果需要，可以设置代理。

    （可选）如果需要，可以修改使用的模型。但是仍然建议使用opus，因为其他未经测试。

    （可选）如果需要，可以启用自定义会话模式（`USE_CUSTOM_MODE`设置为`true`）。可以缩短原系统消息长度、禁用联网、减缓等待时间，可能有助于破限。但有可能导致更容易出现 unusual query volume。

8. 启动 start.bat

9. 酒馆中选择 Claude，反向代理地址填 http://127.0.0.1:8080/v1 **反代密码必须填, 同时打开流式传输**，随便什么都可以（除非你在第7步设置了PASSWORD）。

10. 开始使用。如果失败了/没有结果/403/Warning 就多重试几次。

# 使用代理

可以使用本地的socks5或http(s)代理。只需在 start.bat 中设置 `https_proxy` 环境变量。

比如，如要使用 Clash 的默认本地代理，则应设置为 `set https_proxy=http://127.0.0.1:7890`

欲知详细代理格式，请查阅 https://www.npmjs.com/package/proxy-from-env

# VPS 部署

请使用项目中的 Dockerfile，不建议使用其他方式部署。

# 修改模型

Claude系列模型直接在酒馆中选择即可使用，修改`AI_MODEL`环境变量可以切换Claude以外的模型，支持的模型名字如下 (请参考官网获取最新模型):

```
gpt_4o
gpt_4_turbo
gpt_4
claude_3_5_sonnet
claude_3_opus
claude_3_sonnet
claude_3_haiku
claude_2
llama3
gemini_pro
gemini_1_5_pro
databricks_dbrx_instruct
command_r
command_r_plus
zephyr
```

## 注意事项

如果浏览器弹出人机验证窗口，请在30秒内完成。


# Usage

0. Install Node.JS

1. Get a you.com account and subscribe, log in.

2. Open F12 (DevTools), find “Network”, refresh the page, and find “you.com” (or "instrumentation") entry.

3. Click on it, scroll down and find “Cookie:”, and copy the entire contents.

4. Download or Clone the code of this project and unzip it.

5. Edit `config.example.mjs` as follow。And save the file as `config.mjs`

```
export const config = {
    "sessions": [
        {
            "cookie": "cookie1"
        },
        {
            "cookie": "cookie2"
        },
        {
            "cookie": "cookie3"
        }
    ]
}
```

7. (Optional) you can set an environment variable named `PASSWORD` in `start.bat`, similar to Step 6, and use it as the password. If this environment variable is not defined, the program will accept all incoming requests without performing any authentication.
   
   (Optional) You can set the proxy in start.bat. See below.

   (Optional) You may change the model to use, but only claude_3_opus is tested.

   (Optional) You may turn on the custom chat mode by setting `USE_CUSTOM_MODE` env to `true`

8. Start start.bat

9. Select Claude in the Tavern and put http://127.0.0.1:8080/v1 as the address of the reverse proxy. **Use any random string for password, also turn on Streaming** (unless you set PASSWORD in step 7).

10. Enjoy it. If it fails/no result/403/Warning, try again.

# Use custom proxy

Use the `https_proxy` env to set custom proxy. Refer to https://www.npmjs.com/package/proxy-from-env for detail.

# Deploy on Linux

Docker is highly recommended, please use the Dockerfile.

# Change model

Change `AI_MODEL` env to switch between models.

Supported model names (refer to you.com website for latest models):

```
gpt_4o
gpt_4_turbo
gpt_4
claude_3_5_sonnet
claude_3_opus
claude_3_sonnet
claude_3_haiku
claude_2
llama3
gemini_pro
gemini_1_5_pro
databricks_dbrx_instruct
command_r
command_r_plus
zephyr
```

## Caution

If you get a CloudFlare Challenge, solve it in 30 seconds.
