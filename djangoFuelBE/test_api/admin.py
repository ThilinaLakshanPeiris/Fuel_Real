from django.contrib import admin

# Register your models here.

from .models import FuelUser, STCMachinesDistribution,UserLevel, Region,Depot,InsuranceCompany,VehicleCategory,VehicleDetail,\
    IncomingFuel,FuelType,RegionDistribution,MainStock,ClosingTable,Requisition,PumpMethod,Designation,\
    Institute,Emp,Transaction,OtherDistribution,STCVehicleDistribution,DefaultFuelPrice,ContractorDistribution,Contractor

class FuelUserInline(admin.StackedInline):
    model        = FuelUser
    can_delete   = False
    verbose_name = 'Fuel User'


admin.site.register(FuelUser)
admin.site.register(UserLevel)
admin.site.register(Region)
admin.site.register(Depot)
admin.site.register(InsuranceCompany)
admin.site.register(VehicleCategory)
admin.site.register(VehicleDetail)
admin.site.register(IncomingFuel)
admin.site.register(Designation)
admin.site.register(Emp)
admin.site.register(Requisition)
admin.site.register(FuelType)
admin.site.register(PumpMethod)
admin.site.register(RegionDistribution)
admin.site.register(MainStock)
admin.site.register(Transaction)
admin.site.register(OtherDistribution)
admin.site.register(STCVehicleDistribution)
admin.site.register(STCMachinesDistribution)
admin.site.register(Institute)
admin.site.register(ClosingTable)
admin.site.register(Contractor)
admin.site.register(ContractorDistribution)
admin.site.register(DefaultFuelPrice)
