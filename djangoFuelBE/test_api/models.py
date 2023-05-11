from django.db import models
from django.contrib.auth.models import User


class Region(models.Model):
    region_id      = models.AutoField(primary_key=True)
    region_txt     = models.CharField(max_length=200, default=None, blank=True, null=True)
    region_code    = models.CharField(max_length=10, default=None, blank=True, null=True)
    region_status  = models.IntegerField(default=None, blank=True, null=True)
    def __str__(self):
        #return self.region_txt,self.region_code,self.region_id
        #return '%s %s'%(self.region_txt,self.region_code)
        return '{} {} {} '.format(self.region_txt,self.region_code,self.region_id)

class Depot(models.Model):
    depot_id              = models.AutoField(primary_key=True)
    depot_txt             = models.CharField(max_length=100, default=None, blank=True, null=True)
    deport_tel            = models.CharField(max_length=100, default=None, blank=True, null=True)
    deport_code           = models.CharField(max_length=100, default=None, blank=True, null=True)
    deport_image_location = models.CharField(max_length=500, default=None, blank=True, null=True)
    priority              = models.BooleanField(default=True)
    sortid                = models.BooleanField(default=True)
    depo_location         =models.CharField(max_length=100, default=None, blank=True, null=True)
    region_id             = models.ForeignKey(Region, to_field='region_id', related_name="users_region_set" , on_delete=models.CASCADE)

    def __str__(self):
        #return self.depot_txt
        return '{} {}  '.format(self.depot_txt,self.deport_code)

class UserLevel(models.Model):
    level_id              = models.AutoField(primary_key=True)
    level_name            = models.CharField(max_length=100, default=None, blank=True, null=True)
    avalableUserLevel     = models.BooleanField(default=True)
    
    def __str__(self):
        return self.level_name

class FuelUser(models.Model):
    User            = models.OneToOneField(User, on_delete=models.CASCADE)
    fuel_user_id    = models.AutoField(primary_key=True)
    account_status 	= models.BooleanField(default=True)
    last_login_time	= models.DateTimeField(auto_now=True) 
    contact_no      = models.IntegerField( default=None, blank=True, null=True)
    region_id       = models.ForeignKey(Region, to_field='region_id',   related_name="region_id_list" ,  on_delete=models.CASCADE) 
    depot_id        = models.ForeignKey(Depot,  to_field='depot_id',    related_name="deport_id_list" ,  on_delete=models.CASCADE) 
    level_id        = models.ForeignKey(UserLevel, to_field='level_id', related_name="users_level_list", on_delete=models.CASCADE) 

    def __str__(self):
        #return self.User.username,self.account_status
        return '{} {}  '.format(self.User,self.account_status)


class Designation(models.Model):
    des_id       = models.AutoField(primary_key=True)
    des_text     = models.CharField(max_length=200, default=None, blank=True, null=True)
    des_status   = models.BooleanField(default=True)

    def __str__(self):
        return self.des_text    

class Emp(models.Model):
    emp_id    = models.AutoField(primary_key=True)
    emp_name  = models.CharField(max_length=100)
    epf_no    = models.CharField(max_length=100, default=None, blank=True, null=True)
    des_id    = models.ForeignKey(Designation, to_field='des_id', related_name="des" , on_delete=models.CASCADE)

    def __str__(self):
        #return self.emp_name
        return '{} {}  '.format(self.emp_name,self.des_id)


class InsuranceCompany(models.Model):
    insurance_company_id   = models.AutoField(primary_key=True)
    insurance_company_name = models.CharField(max_length=200, default=None, blank=True, null=True)
   
    def __str__(self):
        return self.insurance_company_name

class VehicleCategory(models.Model):
    cat_id    = models.AutoField(primary_key=True)
    cat_name  = models.CharField(max_length=200, default=None, blank=True, null=True)
   
    def __str__(self):
        return self.cat_name

class FuelType(models.Model):
    pump_type_id = models.AutoField(primary_key=True)
    pump_text    = models.CharField(max_length=200, default=None, blank=True, null=True)
    def __str__(self):
        return self.pump_text

class PumpMethod(models.Model):
    pump_method_id = models.AutoField(primary_key=True)
    pump_method_type = models.CharField(max_length=200, default=None, blank=True, null=True)
        
    def __str__(self):
        return self.pump_method_type

class VehicleDetail(models.Model):
    vehicle_id              = models.AutoField(primary_key=True)
    vehicle_reg_no          = models.CharField(max_length=100, default=None, blank=True, null=True)
    vehicle_make            = models.CharField(max_length=100, default=None, blank=True, null=True)
    vehicle_model           = models.CharField(max_length=100, default=None, blank=True, null=True)
    year_of_manufacture     = models.IntegerField(default=None, blank=True, null=True)
    vehicle_engine_no       = models.CharField(max_length=100,default=None, blank=True, null=True)
    vehicle_chassi_no       = models.CharField(max_length=100, default=None, blank=True, null=True)
    year_of_reg             = models.DateField()
    price                   = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    engine_capacity         = models.CharField(max_length=100, default=None, blank=True, null=True)
    transmission            = models.CharField(max_length=100, default=None, blank=True, null=True)
    renewal_date            = models.DateField( default=None, blank=True, null=True)
    renewal_month           = models.IntegerField( default=None, blank=True, null=True)
    renewal_day             = models.IntegerField( default=None, blank=True, null=True)
    qr_code                 = models.CharField(max_length=200, default=None, blank=True, null=True)
    insurance_company_id    = models.ForeignKey(InsuranceCompany, to_field='insurance_company_id', related_name="_insurance_company_id", default=None, blank=True, null=True,on_delete=models.CASCADE)
    cat_id                  = models.ForeignKey(VehicleCategory, to_field='cat_id', related_name="cat_id_list", on_delete=models.CASCADE)
    region_id               = models.ForeignKey(Region, to_field='region_id',   related_name="FK_region_id_list" ,  on_delete=models.CASCADE) 
    depot_id                = models.ForeignKey(Depot,  to_field='depot_id',    related_name="Fk_depot_id_list" , default=None, blank=True, null=True,on_delete=models.CASCADE) 
    pump_type_id            = models.ForeignKey( FuelType,  to_field='pump_type_id',    related_name="pump_id_list" ,  on_delete=models.CASCADE)
    
   
   # objects = models.Manager()
    def __str__(self):
        #return self.vehicle_reg_no
        #return '{} {} {}'.format(self.vehicle_reg_no, self.renewal_month, self.renewal_day)
        return '%s %s'%(self.vehicle_reg_no,self.renewal_month) 

class IncomingFuel(models.Model):
    
   incoming_fuel_id         = models.AutoField(primary_key=True)
   incoming_fuel_date       = models.DateField()
   incoming_fuel_enter_date = models.DateField(auto_now=True)
   incoming_fuel_qty        = models.FloatField(default=None, blank=True, null=True)
   unit_price               = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
   amount                   = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
   total                    = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
   transport_cost           = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
   receive_location         = models.CharField(max_length=100, default=None, blank=True, null=True)
   supplier_name            = models.CharField(max_length=200, default=None, blank=True, null=True)
   invoice_no               = models.CharField(max_length=200, default=None, blank=True, null=True)
   grn_no                   = models.CharField(max_length=200, default=None, blank=True, null=True)
   grn_enter_date           = models.DateField(default=None, blank=True, null=True)
   received_officer         = models.CharField(max_length=200, default=None, blank=True, null=True)
   region_id                = models.ForeignKey(Region, to_field='region_id',   related_name="region_id_in" ,  on_delete=models.CASCADE) 
   depot_id                 = models.ForeignKey(Depot,  to_field='depot_id',    related_name="depot_id_in" ,  on_delete=models.CASCADE) 
   emp_id                   = models.IntegerField( default=None, blank=True, null=True)
   pump_type_id             = models.ForeignKey(FuelType,  to_field='pump_type_id',    related_name="pump_id_in" ,  on_delete=models.CASCADE)
   en_reg_id                = models.IntegerField( default=None, blank=True, null=True)
   en_dep_id                = models.IntegerField( default=None, blank=True, null=True)


         
   def __str__(self):
       return '{} {} {} '.format(self.supplier_name,self.incoming_fuel_date,self.total)



class Requisition(models.Model):
    req_id                  = models.AutoField(primary_key=True)
    req_no                  = models.IntegerField( default=None, blank=True, null=True)
    req_person_name         = models.CharField(max_length=200, default=None, blank=True, null=True)
    req_person_designation  = models.CharField(max_length=200, default=None, blank=True, null=True)
    req_date                = models.DateField()
    req_qty                 = models.FloatField(default=None, blank=True, null=True)
    pump_qty                = models.IntegerField( default=None, blank=True, null=True)
    region_id               = models.ForeignKey(Region, to_field='region_id',   related_name="region_id_req" ,  on_delete=models.CASCADE) 
    depot_id                = models.ForeignKey(Depot,  to_field='depot_id',    related_name="depot_id_req" ,  on_delete=models.CASCADE) 
    emp_id                  = models.IntegerField( default=None, blank=True, null=True)
    pump_type_id            = models.ForeignKey(FuelType,  to_field='pump_type_id', related_name="pump_id_req" , on_delete=models.CASCADE)
    status                  = models.BooleanField(default=True)
    def __str__(self):
        return '{} {} {} '.format(self.req_person_name,self.req_date,self.req_qty)

class Institute(models.Model):
    institute_no             = models.AutoField(primary_key=True)
    institute_text           = models.CharField(max_length=200, default=None, blank=True, null=True)
    contact_person_name      = models.CharField(max_length=200, default=None, blank=True, null=True)
    contact_person_phone_no  = models.IntegerField( default=None, blank=True, null=True)
    address                  = models.CharField(max_length=200, default=None, blank=True, null=True)
    
    def __str__(self):
        return '{} {} {} '.format(self.institute_text,self.contact_person_name,self.contact_person_phone_no)

class Contractor(models.Model):
    contractor_no             = models.AutoField(primary_key=True)
    contractor_text           = models.CharField(max_length=200, default=None, blank=True, null=True)
    contact_person_name      = models.CharField(max_length=200, default=None, blank=True, null=True)
    contact_person_phone_no  = models.IntegerField( default=None, blank=True, null=True)
    address                  = models.CharField(max_length=200, default=None, blank=True, null=True)
    
    def __str__(self):
        return '{} {} {} '.format(self.contractor_text,self.contact_person_name,self.contact_person_phone_no)

class OtherDistribution(models.Model):
    other_id            = models.AutoField(primary_key=True)
    issue_order_no      = models.FloatField(default=None, blank=True, null=True)
    other_qty           = models.FloatField(default=None, blank=True, null=True)
    other_rate          = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    enter_date          = models.DateField(auto_now=True)
    req_by              = models.CharField(max_length=200, default=None, blank=True, null=True)
    req_date            = models.DateField()
    issued_by           = models.CharField(max_length=200, default=None, blank=True, null=True)
    handling_charge     = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    handling_rate       = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    other_amount        = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    vehicle_no          = models.CharField(max_length=200, default=None, blank=True, null=True)
    institute_no        = models.ForeignKey(Institute,  to_field='institute_no',    related_name="institute_no_other" , default=None, blank=True, null=True,on_delete=models.CASCADE) 
    pump_type_id        = models.ForeignKey( FuelType,  to_field='pump_type_id',    related_name="pump_id_other" ,  on_delete=models.CASCADE) 
    emp_id              = models.IntegerField( default=None, blank=True, null=True)
    en_reg_id           = models.ForeignKey(Region, to_field='region_id',   related_name="region_id_other" ,  on_delete=models.CASCADE) 
    en_dep_id           = models.ForeignKey(Depot,  to_field='depot_id',    related_name="depot_id_other" ,  on_delete=models.CASCADE) 
    #pump_method_id     = models.ForeignKey( Pump_method,  to_field='pump_method_id',    related_name="pump_method_id_other" ,  on_delete=models.CASCADE) 
   

    
    
    def __str__(self):
        return '{} {}  '.format(self.req_date,self.other_qty)


class ContractorDistribution(models.Model):
    contractor_id       = models.AutoField(primary_key=True)
    issue_order_no      = models.FloatField(default=None, blank=True, null=True)
    contractor_qty      = models.FloatField(default=None, blank=True, null=True)
    contractor_rate     = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    enter_date          = models.DateField(auto_now=True)
    req_by              = models.CharField(max_length=200, default=None, blank=True, null=True)
    req_date            = models.DateField()
    issued_by           = models.CharField(max_length=200, default=None, blank=True, null=True)
    handling_charge     = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    handling_rate       = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    contractor_amount   = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    vehicle_no          = models.CharField(max_length=200, default=None, blank=True, null=True)
    contractor_no       = models.ForeignKey(Contractor,  to_field='contractor_no',    related_name="contractor_no_contractor" , default=None, blank=True, null=True,on_delete=models.CASCADE) 
    pump_type_id        = models.ForeignKey( FuelType,  to_field='pump_type_id',    related_name="pump_id_contractor" ,  on_delete=models.CASCADE) 
    emp_id              = models.IntegerField( default=None, blank=True, null=True)
    en_reg_id           = models.ForeignKey(Region, to_field='region_id',   related_name="region_id_con" ,  on_delete=models.CASCADE) 
    en_dep_id           = models.ForeignKey(Depot,  to_field='depot_id',    related_name="depot_id_con" ,  on_delete=models.CASCADE)

    def __str__(self):
        return '{} {}  '.format(self.req_date,self.contractor_qty)
 

class STCVehicleDistribution(models.Model):
    stc_id                  = models.AutoField(primary_key=True)
    issue_order_no          = models.CharField(max_length=200, default=None, blank=True, null=True)
    stc_dis_qty             = models.FloatField(default=None, blank=True, null=True)
    stc_rate                = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    stc_enter_date          = models.DateField(auto_now=True)
    stc_req_by              = models.CharField(max_length=200, default=None, blank=True, null=True)
    stc_req_date            = models.DateField()
    stc_approve_by          = models.CharField(max_length=200, default=None, blank=True, null=True)
    stc_issued_by           = models.CharField(max_length=200, default=None, blank=True, null=True)
    stc_other_amount        = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    vehicle_id              = models.ForeignKey(VehicleDetail,  to_field='vehicle_id',    related_name="vehicle_id_stc" ,  on_delete=models.CASCADE)
    region_id               = models.ForeignKey(Region, to_field='region_id',   related_name="region_id_stc" , on_delete=models.CASCADE) 
    depot_id                = models.ForeignKey(Depot, to_field='depot_id',    related_name="dept_id_stc" , default=None, blank=True, null=True,on_delete=models.CASCADE) 
    institute_no            = models.ForeignKey(Institute,  to_field='institute_no',    related_name="institute_no_stc" , default=None, blank=True, null=True,on_delete=models.CASCADE) 
    pump_type_id            = models.ForeignKey(FuelType,  to_field='pump_type_id',    related_name="pump_id_stc" ,  on_delete=models.CASCADE) 
    emp_id                  = models.IntegerField( default=None, blank=True, null=True) 
    en_reg_id               = models.ForeignKey(Region, to_field='region_id',   related_name="region_id_stc_en" , on_delete=models.CASCADE) 
    en_dep_id               = models.ForeignKey(Depot, to_field='depot_id',    related_name="dept_id_stc_en" , default=None, blank=True, null=True,on_delete=models.CASCADE) 
    def __str__(self):
        return '{} {}  '.format(self.stc_req_date,self.stc_dis_qty)

class RegionDistribution(models.Model):
    distribution_id           = models.AutoField(primary_key=True)
    distribution_date         = models.DateField()
    distribution_qty          = models.FloatField(default=None, blank=True, null=True)
    distribution_unit_price   = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    issue_order_no            = models.CharField(max_length=200, default=None, blank=True, null=True)
    barrel_count              = models.IntegerField( default=None, blank=True, null=True)
    issue_officer_name        = models.CharField(max_length=200, default=None, blank=True, null=True)
    issue_officer_designation = models.CharField(max_length=200, default=None, blank=True, null=True)
    amount                    = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    region_id                 = models.ForeignKey(Region, to_field='region_id',   related_name="FK_region_id_dis" , on_delete=models.CASCADE) 
    depot_id                  = models.ForeignKey(Depot,  to_field='depot_id',    related_name="depot_id_dis" ,  on_delete=models.CASCADE) 
    pump_type_id              = models.ForeignKey(FuelType,  to_field='pump_type_id',    related_name="pump_id_dis" ,  on_delete=models.CASCADE) 
    req_id                    = models.ForeignKey(Requisition,  to_field='req_id', related_name="reqa" ,  on_delete=models.CASCADE) 
    issue_officer_location    = models.ForeignKey(Depot,  to_field='depot_id', related_name="dep" ,  on_delete=models.CASCADE)
    en_reg_id                 = models.ForeignKey(Region, to_field='region_id',   related_name="region_id_dis_en" , on_delete=models.CASCADE) 
    en_dep_id                 = models.ForeignKey(Depot,  to_field='depot_id',    related_name="depot_id_dis_en" ,  on_delete=models.CASCADE) 
    
    def __str__(self):
        #return self.distribution_date
        return '{} {} '.format(self.distribution_date,self.distribution_id)
        
class MainStock(models.Model):
    stock_id           = models.AutoField(primary_key=True)
    available_stock    = models.FloatField(default=None, blank=True, null=True)
    region_id          = models.ForeignKey(Region, to_field='region_id',   related_name="region_id_stock" ,  on_delete=models.CASCADE)
    depot_id           = models.ForeignKey(Depot,  to_field='depot_id',    related_name="depot_id_stock" ,  on_delete=models.CASCADE)
    user_id            = models.IntegerField(default=None, blank=True, null=True)
    pump_type_id       = models.ForeignKey(FuelType,  to_field='pump_type_id',   related_name="pump_id_stock" ,  on_delete=models.CASCADE) 
    enter_date         = models.DateField(auto_now=True)
  
    

    def __str__(self):
        #return self.available_stock
        #return '{} {} } '.format(self.available_stock,self.region_id)
        return '{} {}  '.format(self.available_stock,self.region_id,self.depot_id,self.pump_type_id)
    
  

class  Transaction(models.Model):
    transaction_id      = models.AutoField(primary_key=True)
    invoice_no          = models.CharField(max_length=200, default=None, blank=True, null=True)
    ref_id              = models.CharField(max_length=200, default=None, blank=True, null=True)
    fuel_amount         = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    transaction_type    = models.CharField(max_length=200, default=None, blank=True, null=True)
    remain_type         = models.CharField(max_length=200, default=None, blank=True, null=True)
    enter_date          = models.DateField(auto_now=True)
    transaction_date    = models.DateField()
    transaction_rate    = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    region_id           = models.ForeignKey(Region, to_field='region_id',   related_name="region_id_trans" ,  on_delete=models.CASCADE)
    depot_id            = models.ForeignKey(Depot,  to_field='depot_id',    related_name="depot_id_trans" ,  on_delete=models.CASCADE) 
    user_id             = models.IntegerField(default=None, blank=True, null=True)
    pump_type_id        = models.ForeignKey(FuelType,  to_field='pump_type_id',    related_name="pump_id_trans" ,  on_delete=models.CASCADE)
    qty                 = models.DecimalField(decimal_places=2,max_digits=8,default=None, blank=True, null=True)
    transport_cost      = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    total               = models.DecimalField(decimal_places=2,max_digits=15,default=None, blank=True, null=True)
    def __str__(self):
        return self.ref_id 

class  ClosingTable(models.Model):
    closing_id        = models.AutoField(primary_key=True)
    closing_balance   = models.FloatField(default=None, blank=True, null=True)
    month             = models.IntegerField( default=None, blank=True, null=True)
    region_id         = models.ForeignKey(Region, to_field='region_id',   related_name="region_id_closing" ,  on_delete=models.CASCADE) 
    
    def __str__(self):
        return '{} {}  '.format(self.closing_balance,self.month)

class DefaultFuelPrice(models.Model):
    default_id        = models.AutoField(primary_key=True)
    default_price     = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    last_update_date  = models.DateField()
    status            =models.IntegerField(default=None, blank=True, null=True)
    pump_type_id      = models.ForeignKey(FuelType,  to_field='pump_type_id',   related_name="pump_id_default" ,  on_delete=models.CASCADE)
   
    def __str__(self):
        return '{} {}  '.format(self.last_update_date,self.default_id)
    
# this is the stc machine django part , this will connect to the vue STC Machines under Distribution
class STCMachineDistribution(models.Model):
    machine_id                  = models.AutoField(primary_key=True)
    issue_order_no              = models.CharField(max_length=200, default=None, blank=True, null=True)
    machine_no                  = models.CharField(max_length=200, default=None, blank=True, null=True)
    machine_dis_qty             = models.FloatField(default=None, blank=True, null=True)
    machine_rate                = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    machine_enter_date          = models.DateField(auto_now=True)
    machine_req_date            = models.DateField()
    machine_req_by              = models.CharField(max_length=200, default=None, blank=True, null=True)
    machine_approve_by          = models.CharField(max_length=200, default=None, blank=True, null=True)
    machine_issued_by           = models.CharField(max_length=200, default=None, blank=True, null=True)
    machine_other_amount        = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    # vehicle_id              = models.ForeignKey(VehicleDetail,  to_field='vehicle_id',    related_name="vehicle_id_stc" ,  on_delete=models.CASCADE)
    region_id               = models.ForeignKey(Region, to_field='region_id',   related_name="region_id_machine" , on_delete=models.CASCADE) 
    depot_id                = models.ForeignKey(Depot, to_field='depot_id',    related_name="dept_id_machine" , default=None, blank=True, null=True,on_delete=models.CASCADE) 
    institute_no            = models.ForeignKey(Institute,  to_field='institute_no',    related_name="institute_no_machine" , default=None, blank=True, null=True,on_delete=models.CASCADE) 
    pump_type_id            = models.ForeignKey(FuelType,  to_field='pump_type_id',    related_name="pump_id_machine" ,  on_delete=models.CASCADE) 
    emp_id                  = models.IntegerField( default=None, blank=True, null=True) 
    en_reg_id               = models.ForeignKey(Region, to_field='region_id',   related_name="region_id_machine_en" , on_delete=models.CASCADE) 
    en_dep_id               = models.ForeignKey(Depot, to_field='depot_id',    related_name="dept_id_machine_en" , default=None, blank=True, null=True,on_delete=models.CASCADE) 
    def __str__(self):
        return '{} {}  '.format(self.machine_no,self.machine_dis_qty)
class STCMachinesDistribution(models.Model):
    machine_id                  = models.AutoField(primary_key=True)
    issue_order_no              = models.CharField(max_length=200, default=None, blank=True, null=True)
    machine_no                  = models.CharField(max_length=200, default=None, blank=True, null=True)
    machine_dis_qty             = models.FloatField(default=None, blank=True, null=True)
    machine_rate                = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    machine_enter_date          = models.DateField(auto_now=True)
    machine_req_date            = models.DateField()
    machine_req_by              = models.CharField(max_length=200, default=None, blank=True, null=True)
    machine_approve_by          = models.CharField(max_length=200, default=None, blank=True, null=True)
    machine_issued_by           = models.CharField(max_length=200, default=None, blank=True, null=True)
    machine_other_amount        = models.DecimalField(decimal_places=2,max_digits=10,default=None, blank=True, null=True)
    # vehicle_id              = models.ForeignKey(VehicleDetail,  to_field='vehicle_id',    related_name="vehicle_id_stc" ,  on_delete=models.CASCADE)
    region_id               = models.ForeignKey(Region, to_field='region_id',   related_name="region_id_machines" , on_delete=models.CASCADE) 
    depot_id                = models.ForeignKey(Depot, to_field='depot_id',    related_name="dept_id_machines" , default=None, blank=True, null=True,on_delete=models.CASCADE) 
    institute_no            = models.ForeignKey(Institute,  to_field='institute_no',    related_name="institute_no_machines" , default=None, blank=True, null=True,on_delete=models.CASCADE) 
    pump_type_id            = models.ForeignKey(FuelType,  to_field='pump_type_id',    related_name="pump_id_machines" ,  on_delete=models.CASCADE) 
    emp_id                  = models.IntegerField( default=None, blank=True, null=True) 
    en_reg_id               = models.ForeignKey(Region, to_field='region_id',   related_name="region_id_machines_en" , on_delete=models.CASCADE) 
    en_dep_id               = models.ForeignKey(Depot, to_field='depot_id',    related_name="dept_id_machines_en" , default=None, blank=True, null=True,on_delete=models.CASCADE) 
    def __str__(self):
        return '{} {}  '.format(self.machine_no,self.machine_dis_qty)