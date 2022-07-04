drop schema if exists management;
create schema management;
use management;

drop table if exists t_user;
create table t_user
(
    id                  bigint auto_increment
        primary key,
    account             varchar(20)                                           not null comment '账户',
    password            varchar(255)                                          not null comment '密码',
    salt                varchar(255)                                          not null comment '盐',
    user_name           varchar(20)                                           null comment '用户名',
    phone               varchar(100)                                          null comment '手机号',
    role_id             bigint                                                not null comment '角色Id',
    enabled_state       enum ('OFF','ON')           default 'ON'              not null comment '开启状态 ',
    profiles_picture_id bigint                                                null comment '头像Id',
    created_time        datetime                    default CURRENT_TIMESTAMP not null comment '创建时间',
    updated_time        datetime                                              null comment '更新时间',
    last_login_time     datetime                                              null comment '最后登录时间',
    delete_state        enum ('UN_DELETE','DELETE') default 'UN_DELETE'       not null comment '删除状态'
)
    comment '用户表' collate = utf8_unicode_ci;

INSERT INTO t_user (id, account, password, salt, user_name, phone, role_id,
                    enabled_state, created_time, updated_time, last_login_time, delete_state)
VALUES (1, '12911855304', '5b7fbbb254c4698f8cc21f53dbbf7ed6ce44c79fec468ec308b9b6e726d6276f', '7bb244443f7e9e85',
        'test', null, 1,
        'ON', '2021-09-13 17:32:25', null, null, 'UN_DELETE');