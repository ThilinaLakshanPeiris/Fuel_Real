from django.urls import path
from test_api.views import STCMachinesDistributionDetail, STCMachinesDistributionList, UserList, UserDetail,DepotList, DepotDetail, RegionList, RegionDetail, UserLevelList,\
    UserLevelDetail,VehicleDetailList,VehicleCategoryDetail,InsuranceCompanyDetail,IncomingFuelDetail,\
    FuelTypeDetail ,RegionDistributionDetail,MainStockDetail,MainStockList,ClosingTableDetail,\
    VehicleDetailDetail, VehicleCategoryList,InsuranceCompanyList,FuelTypeList,IncomingFuelList,InstituteList,ContractorList,\
    InstituteDetail,ContractorDetail,ClosingTableList,RegionDistributionList ,RequisitionList ,RequisitionDetail,PumpMethodList,\
    PumpMethodDetail,MyObtainTokenPairView,RegisterView,ChangePasswordView,UpdateProfileView,\
    LogoutView,LogoutAllView,DesignationList,DesignationDetail,EmpDetail,EmpList,TransactionDetail,TransactionList,\
    OtherDistributionList,OtherDistributionDetail,STCVehicleDistributionDetail,STCVehicleDistributionList,FulUserUn,UpdateRequisitionView,\
    ContractorDistributionDetail,ContractorDistributionList,DefaultFuelPriceList,DefaultFuelPriceDetail

from rest_framework_simplejwt.views import TokenRefreshView


urlpatterns = [
      
    path('depot/', DepotDetail.as_view()),
    path('depot/<int:pk>/', DepotList.as_view()),

    path('userun/', FulUserUn.as_view()),
    path('user/', UserDetail.as_view()),
    path('user/<int:pk>/', UserList.as_view()),

    path('region/', RegionDetail.as_view()),
    path('region/<int:pk>/', RegionList.as_view()),

    path('emp/', EmpDetail.as_view()),
    path('emp/<int:pk>/', EmpList.as_view()),

    path('desgination/',DesignationDetail.as_view()),
    path('desgination/<int:pk>/', DesignationList.as_view()),

    path('userlevel/', UserLevelDetail.as_view()),
    path('userlevel/<int:pk>/', UserLevelList.as_view()),
    
    path('vehicles/', VehicleDetailDetail.as_view()),
    path('vehicles/<int:pk>/', VehicleDetailList.as_view()),

    path('vehiclesCategory/', VehicleCategoryDetail.as_view()),
    path('vehiclesCategory/<int:pk>/', VehicleCategoryList.as_view()),

    path('insuranceCompany/',InsuranceCompanyDetail.as_view()),
    path('insuranceCompany/<int:pk>/', InsuranceCompanyList.as_view()),

    path('incomeFuel/',IncomingFuelDetail.as_view()),
    path('incomeFuel/<int:pk>/', IncomingFuelList.as_view()),

    path('requisition/',RequisitionDetail.as_view()),
    path('requisition/<int:pk>/', RequisitionList.as_view()),
     
    path('fuelType/',FuelTypeDetail.as_view()), 
    path('fuelType/<int:pk>/', FuelTypeList.as_view()),

    path('pumpMethod/',PumpMethodDetail.as_view()), 
    path('pumpMethod/<int:pk>/', PumpMethodList.as_view()),   
    
    path('stock/',MainStockDetail.as_view()),
    path('stock/<int:pk>/', MainStockList.as_view()),

    path('transaction/',TransactionDetail.as_view()),
    path('transaction/<int:pk>/', TransactionList.as_view()),

    path('institute/',InstituteDetail.as_view()),
    path('institute/<int:pk>/', InstituteList.as_view()), 

    path('contractor/',ContractorDetail.as_view()),
    path('contractor/<int:pk>/', ContractorList.as_view()),

    path('otherDistribution/',OtherDistributionDetail.as_view()),
    path('otherDistribution/<int:pk>/', OtherDistributionList.as_view()), 

    path('contractorDistribution/',ContractorDistributionDetail.as_view()),
    path('contractorDistribution/<int:pk>/', ContractorDistributionList.as_view()),

    path('stcDistribution/',STCVehicleDistributionDetail.as_view()),
    path('stcDistribution/<int:pk>/', STCVehicleDistributionList.as_view()), 
    
    path('MachineDistribution/',STCMachinesDistributionDetail.as_view()),
    path('MachineDistribution/<int:pk>/', STCMachinesDistributionList.as_view()), 

    path('closing/',ClosingTableDetail.as_view()),
    path('closing/<int:pk>/', ClosingTableList.as_view()), 

    path('defaultPrice/',DefaultFuelPriceDetail.as_view()),
    path('defaultPrice/<int:pk>/', DefaultFuelPriceList.as_view()),

    path('distribution/',RegionDistributionDetail.as_view()),
    path('distribution/<int:pk>/',RegionDistributionList.as_view()),

    path('login/', MyObtainTokenPairView.as_view(), name='token_obtain_pair'),
    path('login/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('register/', RegisterView.as_view(), name='auth_register'),
    path('change_password/<int:pk>/', ChangePasswordView.as_view(), name='auth_change_password'),
    path('update_profile/<int:pk>/', UpdateProfileView.as_view(), name='auth_update_profile'),
    path('logout/', LogoutView.as_view(), name='auth_logout'),
    path('logout_all/', LogoutAllView.as_view(), name='auth_logout_all'),
    path('updateRequisition/<int:pk>/',UpdateRequisitionView.as_view(), name='auth_update_requisition'),
]
