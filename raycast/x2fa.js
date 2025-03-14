#!/Users/xiaohei/.local/share/nvm/v16.20.2/bin/node

// Required parameters:
// @raycast.schemaVersion 1
// @raycast.title X2FA
// @raycast.mode compact

// Optional parameters:
// @raycast.icon 🔑

// Documentation:
// @raycast.description 2FA Code
// @raycast.author pengyu.liu

// 导入 otpauth 库
const OTPAuth = require('otpauth');
const { execSync } = require('child_process');

// 从环境变量或配置文件中获取密钥
// 这里你需要替换为你自己的密钥和账户信息
const SECRET = process.env.OTP_SECRET || '7GPIOEJNZSPGAEB2LPWXIWJ5Q25YEOXITBXH7L2UUMVS7T2FKOT46NWXDHQFFIV2'; // 示例密钥，请替换
const ACCOUNT = process.env.OTP_ACCOUNT || 'pengyu.liu@ewp-group.com';
const ISSUER = process.env.OTP_ISSUER || 'AWS Global';

// 创建 TOTP 对象
const totp = new OTPAuth.TOTP({
  issuer: ISSUER,
  label: ACCOUNT,
  algorithm: 'SHA1',
  digits: 6,
  period: 30,
  secret: OTPAuth.Secret.fromBase32(SECRET)
});

// 生成当前的 TOTP 验证码
const token = totp.generate();

// 计算剩余有效时间（秒）
const now = Math.floor(Date.now() / 1000);
const timeStep = 30; // 默认时间步长为30秒
const timeLeft = timeStep - (now % timeStep);

// 将 token 复制到剪贴板
try {
  execSync(`echo "${token}" | pbcopy`);
  console.log(`${token} (${timeLeft}s) - 已复制到剪贴板`);
} catch (error) {
  console.log(`${token} (${timeLeft}s) - 复制到剪贴板失败: ${error.message}`);
}

