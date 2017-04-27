# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts '建立8个账号'
u = User.new
u.email = 'admin@test.com'
u.password = '123456'
u.password_confirmation = '123456'
u.is_admin = true
u.save
u = User.new
u.email = 'test1@test.com'
u.password = '123456'
u.password_confirmation = '123456'
u.save
u = User.new
u.email = 'test2@test.com'
u.password = '123456'
u.password_confirmation = '123456'
u.save
u = User.new
u.email = 'test3@test.com'
u.password = '123456'
u.password_confirmation = '123456'
u.save
u = User.new
u.email = 'test4@test.com'
u.password = '123456'
u.password_confirmation = '123456'
u.save
u = User.new
u.email = 'test5@test.com'
u.password = '123456'
u.password_confirmation = '123456'
u.save
u = User.new
u.email = 'test6@test.com'
u.password = '123456'
u.password_confirmation = '123456'
u.save
u = User.new
u.email = 'test7@test.com'
u.password = '123456'
u.password_confirmation = '123456'
u.save

puts '建立8个course'

c = Course.new
c.title = '新生大学'
c.description = '持续学习，不断积累，获取新生. 新生大学是以知识分享，共同成长为目标的社群群体，情非得已目前提供了社群运营必要的技术基础设施，包含了写作分享，无上限群聊加直播，社群成员即时交流，社群交流圈等基础服务。'
c.save
c = Course.new
c.title = '极速读书会'
c.description = '极速读书方法，提炼原书观点精粹，过滤庞杂信息，整理你呈现全书要点。
只需短短30分钟，就能读完一本几千字的好书。30分钟，获取世界先进的管理方法；30分钟，看完一本思维锻炼手册；30分钟，以全新的思维审视世界；30分钟，获得新生。'
c.save
c = Course.new
c.title = '解密大数据'
c.description = '本社群是Tiger为了顺应大数据时代降临，方便大家入门和深入学习数据而创办的服务。
解密大数据社群旨在为难以入门数据分析的朋友们提供学习和成长的平台，为此我们集合了中美两国的数据大咖（从北美名校博士到一流数据科学家，遍布硅谷和BAT），倾心打造了解密大数据系列精品课程（目前设有三门课：商业数据分析/机器学习/爬虫），提供完整的从数据小白到分析达人的落地方案。'
c.save
c = Course.new
c.title = '不亦悦乎'
c.description = '“不亦悦乎”，埃尔特出品，致力于打造全优教育产品，为学习型新家庭服务。如果没有“互联网”，谁敢想象，足不出户就能让自己的孩子享受到最优质的教育？如果没有“不亦悦乎”，谁敢相信，全国顶尖教师和享誉知识界的著名学者，能够携手为孩子打造一套人文课程？2017年2曰3日，时至立春，阳和起蛰，万物复苏。不亦悦乎隆重推出首期春季课程：联手13位教育大咖，大学者教小孩子，面向10岁以上的孩子和为人父母的你，精心打造全系列人文通识课！'
c.save
c = Course.new
c.title = '三节课'
c.description = '互联网人的在线大学。你在三节课能学到什么？如果你是在校大学生，这里有从0开始的，全面且深度的成长路径。如果你是产品或运营新人，这里有专业的课程指导和同行的学习伙伴。如果你从事产品或运营2、3年了，这里有产品设计和运营操盘的实战练习。'
c.save
c = Course.new
c.title = '得到订阅专栏 李笑来《通往财富自由之路》'
c.description = '赚钱是所有人都必需的技能，可它偏偏是一种学校里不教的技能，是绝大多数人终其一生都没有习得、或没有学得足够好的技能。其实，大多数人不是没有机会，没有努力，而是选错了道路，用错了力气而已。在获取财富这个领域里，李笑来可算是个老司机，并且恰好还是个乐于分享的老司机。他坚信，在通往财富自由这条路上，人人都有至少一次机会。'
c.save
c = Course.new
c.title = '《硅谷来信》得到订阅吴军专栏'
c.description = '美国最杰出的商业哲学家吉米·罗恩（Jim Rohn）曾经有一个经典的论断——“你就是你平常花最多时间相处的五个人的平均值”。和优秀的人亲密接触，是提升自己的快捷方法。还有比这更快捷的方法吗？有。那就是和你亲密接触的优秀者，每天还在和更多优秀的人朝夕相处。“吴军·硅谷来信”订阅专栏，给你提供一个提高朋友圈质量的机会。在这里，你将有一年的时间，和一位优秀人物，以及围绕在他身边的众多顶尖科学家、商界领袖和文化精英朝夕相处，去熟悉他们的思维方式，掌握一套深入洞察世事和人生的独特方法，进而寻找到成功的轨迹。'
c.save
c = Course.new
c.title = '总学馆'
c.description = '总学馆是我在2016年下半年创办的互联网教育公司，专注于网络时代的教育模式开发。不同于目前流行的职业教育、心灵鸡汤课程，总学馆要提供的是与人的幸福感、智识及德性密切相关的人文社科课程。这一类课程，对吾国吾民，实必不可少，然而在当下互联网这波内容创业里，尚属空白。 -郭玉闪'
c.save

puts '关注所有课程'

follow_course = for i in 1..8 do
  u = User.find(i)
  for c in 1..8 do
    u.followed_courses << Course.find(c)
  end
end

puts '建立40个events'

Event_demo = [['求战友','我们一起聚会吧','1','1','2017-04-29','北京','陈可辛','chenkexin'],['线上微信交流群','沟通学习心得','2','2','2017-05-29','上海','李嘉诚','chenjia'],['心得交流','真的学到了不少，交流一下','3','3','2017-06-29','大连','橙子','bigorangee'],['互相学习','你是否有和我一样的困惑呢？','4','4','2017-07-29','深圳','任达华','huage'],['找同城伙伴','志同道合的人你在哪','5','5','2017-08-29','线上','梁朝伟','15611231123'],['一起进步吧','每天进步一点点','6','6','2017-09-29','广州','么么哒','lalala'],['结伴前行','相信我，你并不孤独','7','7','2017-09-29','成都','李将来','future me'],['拒绝平庸','相信未来，相信长期，每天进步一点点','8','8','2017-09-29','杭州',' jerry','Jerry']]

create_events = for i in 1..40 do
events_test=Event_demo[rand(0..7)]
a=events_test[0]
events_test=Event_demo[rand(0..7)]
b=events_test[1]
events_test=Event_demo[rand(0..7)]
c=events_test[2]
events_test=Event_demo[rand(0..7)]
d=events_test[3]
events_test=Event_demo[rand(0..7)]
e=events_test[4]
events_test=Event_demo[rand(0..7)]
f=events_test[5]
events_test=Event_demo[rand(0..7)]
g=events_test[6]
h=events_test[7]
Event.create!([title:a,description:b,course_id:c,user_id:d,schedule:e,city:f,contact_name:g,contact_number:h])
end

puts '建立400个posts'

Post_demo = [['报名','1'],['已加楼主微信','2'],['求老司机带','3'],['终于找到组织了','4'],['报名，开心','5'],['一定参加！','6'],['哈哈哈，必到必到','7'],['终于有伙伴了，好棒！','8']]
create_posts = for i in 1..400 do
  event_number=rand(1..40)
  posts_test=Post_demo[rand(0..7)]
  a=posts_test[0]
  posts_test=Post_demo[rand(0..7)]
  b=posts_test[1]
  Post.create!([content:a,event_id:event_number,user_id:b])
end
