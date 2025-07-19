# 网站部署指南

## 快速部署到 Vercel

### 方法一：通过 Vercel CLI（推荐）

1. **安装 Vercel CLI**
```bash
npm install -g vercel
```

2. **在项目目录中运行部署命令**
```bash
cd d:\Desktop\UI
vercel
```

3. **按照提示操作**
- 首次使用需要登录 Vercel 账户
- 选择项目设置（通常选择默认即可）
- 等待部署完成

### 方法二：通过 GitHub + Vercel（推荐用于持续部署）

1. **将代码上传到 GitHub**
   - 在 GitHub 创建新仓库
   - 将项目代码推送到仓库

2. **连接 Vercel**
   - 访问 [vercel.com](https://vercel.com)
   - 使用 GitHub 登录
   - 导入您的 GitHub 仓库
   - 点击部署

### 方法三：使用其他平台

#### Netlify
1. 访问 [netlify.com](https://netlify.com)
2. 拖拽整个项目文件夹到部署区域
3. 等待部署完成

#### GitHub Pages
1. 将代码推送到 GitHub
2. 在仓库设置中启用 GitHub Pages
3. 选择部署分支

## 部署后的配置

### 1. 更新 Supabase 设置
部署完成后，需要在 Supabase 控制台更新以下设置：

1. 登录 [supabase.com](https://supabase.com)
2. 进入您的项目
3. 转到 Authentication > Settings
4. 在 "Site URL" 中添加您的部署域名
5. 在 "Redirect URLs" 中添加：
   - `https://your-domain.com/auth.html`
   - `https://your-domain.com/`

### 2. 测试功能
部署完成后，请测试以下功能：
- [ ] 页面加载正常
- [ ] 用户注册功能
- [ ] 用户登录功能
- [ ] 密码重置功能
- [ ] 响应式设计

## 常见问题解决

### 问题1：页面显示空白
**解决方案**：检查浏览器控制台错误，通常是路径问题

### 问题2：认证功能不工作
**解决方案**：确保 Supabase 中的 Site URL 配置正确

### 问题3：样式显示异常
**解决方案**：检查 CSS 文件路径是否正确

## 域名配置（可选）

如果您有自己的域名：
1. 在域名提供商处配置 DNS
2. 在部署平台添加自定义域名
3. 等待 SSL 证书自动配置

## 成本说明

- **Vercel**: 免费计划足够个人使用
- **Netlify**: 免费计划包含 100GB 带宽
- **GitHub Pages**: 完全免费
- **Supabase**: 免费计划包含基本功能

部署完成后，您将获得一个公网可访问的 URL，可以在任何设备上访问您的网站！