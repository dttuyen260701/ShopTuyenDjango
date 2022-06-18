# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class App(models.Model):
    slide_1 = models.TextField()
    slide_2 = models.TextField()
    slide_3 = models.TextField()
    slide_4 = models.TextField()
    offer_day = models.IntegerField()
    app_logo = models.TextField()
    phone = models.CharField(max_length=10)
    email = models.CharField(max_length=100)
    dia_chi = models.CharField(max_length=100)
    phuong = models.CharField(max_length=100)
    quan = models.CharField(max_length=100)
    thanhpho = models.CharField(max_length=100)
    quocgia = models.CharField(max_length=100)

    def __str__(self):
        return "Offer day: " + str(self.offer_day)

    class Meta:
        managed = False
        db_table = 'app'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    def __str__(self):
        return self.last_name + ' ' + self.first_name + "- email: " + self.email

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Chitietdonhang(models.Model):
    iddonhang = models.ForeignKey('Donhang', models.DO_NOTHING, db_column='iddonhang')
    idsanpham = models.ForeignKey('Sanpham', models.DO_NOTHING, db_column='idsanpham')
    soluong = models.IntegerField()
    gia = models.FloatField()

    def __str__(self):
        return 'Đơn hàng:' + str(self.iddonhang) + '- sản phẩm:' + str(self.idsanpham) + "-" + str(self.soluong)

    class Meta:
        managed = False
        db_table = 'chitietdonhang'


class Contact(models.Model):
    firstname = models.CharField(max_length=100)
    lastname = models.CharField(max_length=100)
    email = models.CharField(max_length=100)
    subject = models.CharField(max_length=200)
    message = models.TextField()

    def __str__(self):
        return self.email + ": " + self.subject
    class Meta:
        managed = False
        db_table = 'contact'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Donhang(models.Model):
    idkhachhang = models.ForeignKey(AuthUser, models.DO_NOTHING, db_column='idkhachhang')
    ship = models.FloatField()
    tong = models.FloatField()
    pay_method = models.IntegerField()
    diachi = models.CharField(max_length=100)
    phone = models.CharField(max_length=10)
    date = models.CharField(max_length=100)
    status = models.IntegerField()
    
    def __str__(self):
        return "KH: " + str(self.idkhachhang.first_name) + "-Tong: " + str(self.tong)
    class Meta:
        managed = False
        db_table = 'donhang'

class Faq(models.Model):
    cauhoi = models.TextField()
    rep = models.TextField()

    def __str__(self):
        return "Cau Hoi: " + str(self.cauhoi)

    class Meta:
        managed = False
        db_table = 'faq'

class Loaisanpham(models.Model):
    tenloaisanpham = models.CharField(max_length=200)
    hinhanhsanpham = models.CharField(max_length=200)
    phanloai = models.IntegerField()
    mota = models.CharField(max_length=100)

    def __str__(self):
        return self.tenloaisanpham

    class Meta:
        managed = False
        db_table = 'loaisanpham'


class Sanpham(models.Model):
    tensanpham = models.CharField(max_length=200)
    giasanpham = models.IntegerField()
    hinhanhsanpham = models.CharField(max_length=200)
    motasanpham = models.CharField(max_length=10000)
    idloaisanpham = models.ForeignKey(Loaisanpham, models.DO_NOTHING, db_column='idloaisanpham')
    sale = models.IntegerField()
    moi = models.IntegerField()
    type = models.IntegerField()

    def __str__(self):
        return self.tensanpham + "- Giá: " + str(self.giasanpham)

    class Meta:
        managed = False
        db_table = 'sanpham'
