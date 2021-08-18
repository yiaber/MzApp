//加载 express模块
const express = require("express");
//加载 MySQL 模块
const mysql = require("mysql");
// 加载 bodyParser 模块
const bodyParser = require("body-parser");
const { query } = require("express");

// 创建MySQL连接池
const pool = mysql.createPool({
  host: "127.0.0.1",
  port: 3306,
  user: "root",
  password: "",
  database: "mz",
  connectionLimit: 20,
  charset: "utf8",
});

// 创建服务器对象
const app = express();
app.use(
  bodyParser.urlencoded({
    extended: false,
  })
);
app.use(express.static("./public"));

/**用户注册  */
app.post("/registar", (req, res) => {
  let phone = req.body.phone;
  let pwd = req.body.upwd;
  // 以name为条件查询数据库。保证数据的唯一性
  let sql = "select count(phone)AS count from mz_user where phone=?";
  pool.query(sql, [phone], (errer, result) => {
    if (errer) throw errer;
    let count = result[0].count;
    if (count == 0) {
      // 将用户的信息插入到数据表
      sql = "insert mz_user(phone,pwd) values(?,?)";
      pool.query(sql, [phone, pwd], (errer, result) => {
        if (errer) throw errer;
        res.send({ msg: "ok", code: 200 });
      });
    } else {
      res.send({ mgs: "user exists", code: 201 });
    }
  });
});

/** 用户登录 */
app.post("/login", (req, res) => {
  //获取用户输入的信息
  let phone = req.body.phone;
  let pwd = req.body.upwd;
  let sql = "select phone,pwd from mz_user where phone=? AND pwd=?";
  pool.query(sql, [phone, pwd], (errer, result) => {
    if (errer) throw errer;
    if (result.length == 0) {
      res.send({ msg: "账户密码正确，登录成功", code: 201 });
    } else {
      res.send({ msg: "账户密码正确，登录成功", code: 200, result: result[0] });
    }
  });
});

//查询所有类别
app.get("/laptop_family", (req, res) => {
  let sql = "select*from mz_laptop_family";
  pool.query(sql, (errer, result) => {
    if (errer) throw errer;
    res.send({ res: result });
  });
});
// 轮播图
app.get("/index_swipe", (req, res) => {
  let sql = "select*from mz_index_swipe";
  pool.query(sql, (errer, result) => {
    if (errer) throw errer;
    res.send({ res: result });
  });
});
// 查询手机类
app.get("/phone", (req, res) => {
  let sql = "select*from mz_phone";
  pool.query(sql, (errer, result) => {
    if (errer) throw errer;
    res.send({ res: result });
  });
});
//查询手机配件商品
app.get("/accessories", (req, res) => {
  let sql = "select*from mz_accessories";
  pool.query(sql, (errer, result) => {
    if (errer) throw errer;
    res.send({ res: result });
  });
});

// 搜索商品
app.get("/search", (req, res) => {
  let fname = `%${req.query.fname}%`;
  let details = [];
  pool.query(
    "select * from mz_phone where name like ?",
    [fname],
    (errer, result) => {
      if (errer) throw errer;
      // details.push.apply(result);
      details = [...result];
      pool.query(
        "select * from mz_accessories where name like ?",
        [fname],
        (err, results) => {
          if (err) throw err;
          details = [...details, ...results];
          console.log(details);
          // result.push(results)
          // details.push(results);
          // console.log(results);
          res.send(details);
        }
      );
    }
  );
});
// 指定服务器对象监听的端口号
app.listen(3000, () => {
  console.log("服务器正常运行中....");
});
