[#ftl]
[@b.head/]
[@b.toolbar title="${option.corporation.name }的报名名单"]bar.addBack();[/@]
[@b.grid items=takers var="taker"]
  [@b.row]
      [@b.col property="rank" title="志愿" width="5%"/]
      [@b.col property="volunteer.std.user.code" title="学号" width="10%"/]
      [@b.col property="volunteer.std.user.name" title="姓名" width="9%"/]
      [@b.col property="volunteer.std.state.grade" title="年级" width="8%"/]
      [@b.col property="volunteer.std.state.department.name" title="院系" width="20%"/]
      [@b.col property="volunteer.std.state.major.name" title="专业" width="20%"]${(taker.volunteer.std.state.major.name)!}[/@]
      [@b.col property="volunteer.gpa"  title="平均绩点" width="7%"/]
      [@b.col property="enrolled"  title="是否录取" width="5%"]${taker.enrolled?string("Y","N")}[/@]
      [@b.col property="updatedAt"  title="报名时间" width="16%"]${taker.updatedAt?string('MM-dd HH:mm:ss')}[/@]
  [/@]
[/@]
[@b.foot/]
