package com.zx.medicineSale.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class VerifyCodeController {
    private int width = 60;         
    private int height = 20;         
    // 验证码字符数  
    private int codeCount = 4;         
    private int x = 0;         
    // 验证码字符大小
    private int fontHeight;         
    private int codeY;         
    char[] codeSequence = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',         
            'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W',         
            'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
            'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p',
            'q','r','s','t','u','v','w','x','y','z' };         
    /**       
     * 验证码初始化
     */        
    public void initxuan() throws ServletException {         
        //获取web.xml中的初始信息     
        String strWidth ="80";            
        String strHeight ="30";         
        String strCodeCount = "4";                 
        try {         
            if (strWidth != null && strWidth.length() != 0) {         
                width = Integer.parseInt(strWidth);         
            }         
            if (strHeight != null && strHeight.length() != 0) {         
                height = Integer.parseInt(strHeight);         
            }
            if (strCodeCount != null && strCodeCount.length() != 0) {         
                codeCount = Integer.parseInt(strCodeCount);         
            }         
        } catch (NumberFormatException e) {         
        }         
        x = width / (codeCount + 1);         
        fontHeight = height - 4;         
        codeY = height-6; 
    }   
    @RequestMapping(value="verifyCode.do")
    public String verifyCode(HttpServletRequest req, HttpServletResponse resp)         
            throws ServletException, java.io.IOException { 
        initxuan();
        BufferedImage buffImg = new BufferedImage(width, height,         
                BufferedImage.TYPE_INT_RGB);         
        Graphics2D g = buffImg.createGraphics();         
        Random random = new Random();         
        g.setColor(Color.WHITE);         
        g.fillRect(0, 0, width, height);//画出个白色的矩形
        Font font = new Font("黑体", Font.PLAIN, fontHeight); 
        g.setFont(font);         
        g.setColor(Color.BLACK);         
        g.drawRect(0, 0, width - 1, height - 1);//画个黑色的矩形边框    
        //随机产生20条干扰线
        g.setColor(Color.gray);         
        for (int i = 0; i < 120; i++) {         
            int x = random.nextInt(width);         
            int y = random.nextInt(height);         
            int xl = random.nextInt(3);         
            int yl = random.nextInt(3);         
            g.drawLine(x, y, x + xl, y + yl);         
        }         
        //用于保存随机产生的验证码字符串，用于验证      
        StringBuffer randomCode = new StringBuffer();         
        int red = 0, green = 0, blue = 0;         
        for (int i = 0; i < codeCount; i++) {         
            String strRand = String.valueOf(codeSequence[random.nextInt(codeSequence.length)]);         
            red = random.nextInt(255);         
            green = random.nextInt(255);         
            blue = random.nextInt(255);         
            g.setColor(new Color(red, green, blue));         
            g.drawString(strRand, (i + 1) * x, codeY);         
            randomCode.append(strRand);         
        }         
        // 将验证码变为字符串存进session，用于验证
        HttpSession session = req.getSession();         
        session.setAttribute("validateCode", randomCode.toString());         
        // 禁止图片缓存      
        resp.setHeader("Pragma", "no-cache");         
        resp.setHeader("Cache-Control", "no-cache");         
        resp.setDateHeader("Expires", 0);         
        resp.setContentType("image/jpeg");         
        // 输出图片     
        ServletOutputStream sos = resp.getOutputStream();         
        ImageIO.write(buffImg, "jpeg", sos);         
        sos.close(); 
        return null;
    }         
}
