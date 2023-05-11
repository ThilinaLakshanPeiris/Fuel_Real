from rest_framework import generics
from test_api.models import Region,FuelUser, Depot, UserLevel,VehicleDetail,VehicleCategory,InsuranceCompany,\
    IncomingFuel, FuelType,RegionDistribution,MainStock,ClosingTable ,Designation,Requisition,PumpMethod,\
    Institute,Emp,OtherDistribution,Transaction,STCVehicleDistribution,Contractor,ContractorDistribution,DefaultFuelPrice
from test_api.serializers import RegionSerializer, UserSerializer,DepotSerializer, UserLevelSerializer,\
    VehicleDetailSerializer,VehicleCategorySerializer,InsuranceCompanySerializer,IncomingFuelSerializer,\
    FuelTypeSerializer ,RegionDistributionSerializer,MainStockSerializer,ClosingTableSerializer,serializers ,\
    RequisitionSerializer,PumpMethodSerializer,RegisterSerializer,ChangePasswordSerializer,UpdateUserSerializer,\
    DesignationSerializer,InstituteSerializer,EmpSerializer,TransactionSerializer,OtherDistributionSerializer,ContractorDistributionSerializer,\
    STCVehicleDistributionSerializer,UpdateRequisitionSerializer,ContractorSerializer,DefaultFuelPriceSerializer
from rest_framework.permissions import IsAuthenticated
from django.shortcuts import render
from .serializers import MyTokenObtainPairSerializer
from rest_framework.permissions import AllowAny
from rest_framework_simplejwt.views import TokenObtainPairView
from django.contrib.auth.models import User


from rest_framework.views import APIView
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework.response import Response
from rest_framework import status
from rest_framework_simplejwt.token_blacklist.models import \
OutstandingToken, BlacklistedToken
from rest_framework.pagination import LimitOffsetPagination

class DepotDetail(generics.ListCreateAPIView):
    serializer_class = DepotSerializer
    pagination_class = LimitOffsetPagination
    def get_queryset(self):
        querySet = Depot.objects.all()
        region_id = self.request.query_params.get('region')

        if region_id is not None:
            querySet = querySet.filter(region_id = region_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
        return querySet

class DepotList(generics.RetrieveUpdateDestroyAPIView):
     serializer_class = DepotSerializer
     queryset = Depot.objects.all()

class RegionDetail(generics.ListCreateAPIView):
    serializer_class = RegionSerializer
    queryset = Region.objects.all()
    pagination_class = LimitOffsetPagination

class RegionList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = RegionSerializer
    queryset = Region.objects.all()

""" Userlevel view  """
class UserLevelDetail(generics.ListCreateAPIView):
    serializer_class = UserLevelSerializer
    queryset = UserLevel.objects.all()
    pagination_class = LimitOffsetPagination
    
class UserLevelList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = UserLevelSerializer
    queryset = UserLevel.objects.all()

class UserDetail(generics.ListCreateAPIView):
    serializer_class = UserSerializer
    pagination_class = LimitOffsetPagination
    def get_queryset(self):
        querySet = FuelUser.objects.all()
        region_id = self.request.query_params.get('region')
        depot_id  = self.request.query_params.get('depot')
        level_id  = self.request.query_params.get('level')
    

        if region_id is not None and depot_id is None and level_id is None:
            querySet = querySet.filter(region_id = region_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif depot_id is not None and region_id is None and level_id is None:
            querySet = querySet.filter(depot_id = depot_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif level_id is not None and region_id is None and depot_id is None:
            querySet = querySet.filter(level_id = level_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif level_id is not None and region_id is not None and depot_id is None:
            querySet = querySet.filter(level_id = level_id, region_id=region_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif level_id is not None and depot_id is not None and region_id is None:
            querySet = querySet.filter(level_id = level_id,depot_id =depot_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif region_id is not None and depot_id is not None and level_id is None:
            querySet = querySet.filter(region_id = region_id,depot_id =depot_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
                
        elif region_id is not None and depot_id is not None and level_id is not None:
            querySet = querySet.filter(region_id = region_id,depot_id =depot_id, level_id=level_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
                
        return querySet

class UserList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = UserSerializer
    queryset = FuelUser.objects.all()

class VehicleDetailDetail(generics.ListCreateAPIView):
    serializer_class = VehicleDetailSerializer
    pagination_class = LimitOffsetPagination
    def get_queryset(self):
        querySet = VehicleDetail.objects.all()
        region_id = self.request.query_params.get('region')
        cat_id  = self.request.query_params.get('cat')
        depot_id  = self.request.query_params.get('depo')
        insurance_company_id  = self.request.query_params.get('insurance')
        pump_type_id  = self.request.query_params.get('pump')

        if region_id is not None and cat_id is None and depot_id is None and insurance_company_id  is None and pump_type_id  is None:
            querySet = querySet.filter(region_id = region_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
            
        elif cat_id is not None and region_id is None and depot_id is None and insurance_company_id  is None and pump_type_id  is None:
            querySet = querySet.filter(cat_id = cat_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif depot_id is not None and region_id is None and cat_id is None and insurance_company_id  is None and pump_type_id  is None:
            querySet = querySet.filter(depot_id = depot_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif insurance_company_id  is not None and region_id is None and cat_id is None and depot_id is None  and pump_type_id  is None:
            querySet = querySet.filter(insurance_company_id  = insurance_company_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif pump_type_id  is not None and region_id is None and cat_id is None and depot_id is None  and insurance_company_id  is None:
            querySet = querySet.filter(pump_type_id  = pump_type_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif region_id is not None and cat_id is not None and depot_id is None and insurance_company_id  is None and pump_type_id  is None:
             querySet = querySet.filter(region_id = region_id,  cat_id =  cat_id)
             if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif depot_id is not None and insurance_company_id is not None and region_id is None and cat_id is None and pump_type_id  is None :
             querySet = querySet.filter(depot_id= depot_id,insurance_company_id=insurance_company_id)
             if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."}) 

        elif cat_id is not None and depot_id is not None and region_id is None and insurance_company_id  is None and pump_type_id  is None:
             querySet = querySet.filter(cat_id =  cat_id,depot_id= depot_id)
             if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."}) 

        elif region_id is not None and depot_id is not None and cat_id is None and insurance_company_id  is None and pump_type_id  is None:
             querySet = querySet.filter(region_id = region_id,depot_id= depot_id)
             if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."}) 

        elif region_id is not None and insurance_company_id is not None and cat_id is None and depot_id is None and pump_type_id  is None:
             querySet = querySet.filter(region_id = region_id,insurance_company_id=insurance_company_id)
             if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."}) 

        elif cat_id is not None and insurance_company_id is not None and depot_id is None and region_id is None and pump_type_id  is None:
             querySet = querySet.filter(cat_id =  cat_id,insurance_company_id=insurance_company_id)
             if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif region_id is not None and cat_id is not None and depot_id is not None and insurance_company_id  is None and pump_type_id  is None:
             querySet = querySet.filter(region_id = region_id,  cat_id =  cat_id,depot_id= depot_id)
             if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})  

        elif region_id is not None and cat_id is not None and insurance_company_id is not None and depot_id is None and pump_type_id  is None:
             querySet = querySet.filter(region_id = region_id,  cat_id =  cat_id,insurance_company_id=insurance_company_id)
             if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."}) 

        elif depot_id is not None and cat_id is not None and insurance_company_id is not None and region_id is None and pump_type_id  is None:
             querySet = querySet.filter(depot_id = depot_id,  cat_id =  cat_id,insurance_company_id=insurance_company_id)            
             if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif cat_id is not None and depot_id is not None and insurance_company_id is not None and region_id is not None and pump_type_id  is not None:
             querySet = querySet.filter(cat_id =  cat_id, depot_id= depot_id,insurance_company_id=insurance_company_id,region_id = region_id,pump_type_id=pump_type_id)            
             
        return querySet

class VehicleDetailList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = VehicleDetailSerializer
    queryset = VehicleDetail.objects.all()     

class VehicleCategoryDetail(generics.ListCreateAPIView):
    serializer_class = VehicleCategorySerializer
    queryset = VehicleCategory.objects.all()
    pagination_class = LimitOffsetPagination 
    

class VehicleCategoryList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = VehicleCategorySerializer
    queryset = VehicleCategory.objects.all()     


class InsuranceCompanyDetail(generics.ListCreateAPIView):
    serializer_class =  InsuranceCompanySerializer
    queryset = InsuranceCompany.objects.all()
    pagination_class = LimitOffsetPagination
    
class InsuranceCompanyList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = InsuranceCompanySerializer
    queryset = InsuranceCompany.objects.all()            

class IncomingFuelDetail(generics.ListCreateAPIView):
    serializer_class =  IncomingFuelSerializer  
    queryset = IncomingFuel.objects.all()
    pagination_class = LimitOffsetPagination 
    def get_queryset(self):
        querySet = IncomingFuel.objects.all()
        region_id = self.request.query_params.get('region')
        depot_id  = self.request.query_params.get('depot')
        pump_type_id = self.request.query_params.get('fuel')

        if region_id is not None and depot_id  is None  and pump_type_id is None :
            querySet = querySet.filter(region_id = region_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif  depot_id is not None and region_id is None and pump_type_id is None:  
            querySet = querySet.filter( depot_id =  depot_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif  pump_type_id is not None and region_id is None and depot_id  is None:  
            querySet = querySet.filter( pump_type_id = pump_type_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif  region_id is not None and depot_id is not None and pump_type_id is None:  
            querySet = querySet.filter( region_id = region_id, depot_id =  depot_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."}) 

        elif  region_id is not None and depot_id is None and pump_type_id is not None:  
            querySet = querySet.filter( region_id = region_id, pump_type_id = pump_type_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."}) 

        elif  region_id is None and depot_id is not None and pump_type_id is not None:  
            querySet = querySet.filter( depot_id =  depot_id, pump_type_id = pump_type_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."}) 

        elif region_id is not None and depot_id is not None and pump_type_id is not None:
            querySet = querySet.filter( region_id = region_id ,depot_id = depot_id, pump_type_id=pump_type_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
                        
        return querySet

class IncomingFuelList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = IncomingFuelSerializer
    queryset = IncomingFuel.objects.all()
    
class DesignationDetail(generics.ListCreateAPIView):
    serializer_class =  DesignationSerializer  
    queryset = Designation.objects.all()
    pagination_class = LimitOffsetPagination 
    
class DesignationList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = DesignationSerializer
    queryset = Designation.objects.all()

class EmpDetail(generics.ListCreateAPIView):
    serializer_class =  EmpSerializer 
    pagination_class = LimitOffsetPagination 
    def get_queryset(self):
        querySet = Emp.objects.all()
        des_id = self.request.query_params.get('designation')

        if des_id is not None:
            querySet = querySet.filter(des_id = des_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
        return querySet
   
class EmpList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = EmpSerializer
    queryset = Emp.objects.all()

class RequisitionDetail(generics.ListCreateAPIView):
    serializer_class =RequisitionSerializer
    pagination_class = LimitOffsetPagination

    def get_queryset(self):
        querySet = Requisition.objects.all()
        region_id = self.request.query_params.get('region')
        depot_id  = self.request.query_params.get('depot')
        pump_type_id = self.request.query_params.get('fuel')

        if region_id is not None and depot_id  is None and pump_type_id is None :
            querySet = querySet.filter(region_id = region_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif  depot_id is not None and region_id is None and pump_type_id is None:  
            querySet = querySet.filter( depot_id =  depot_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif  pump_type_id is not None and region_id is None and depot_id  is None:  
            querySet = querySet.filter( pump_type_id = pump_type_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif  region_id is not None and depot_id is not None and pump_type_id is None:  
            querySet = querySet.filter( region_id = region_id,depot_id =  depot_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif  depot_id is not None and pump_type_id is  None and region_id is None :  
            querySet = querySet.filter( depot_id =  depot_id,pump_type_id = pump_type_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."}) 

        elif  region_id is not None and pump_type_id is not None and depot_id is  None :  
            querySet = querySet.filter( region_id = region_id,pump_type_id = pump_type_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})  

        elif region_id is not None and depot_id is not  None and pump_type_id is not None:
            querySet = querySet.filter( region_id = region_id ,depot_id = depot_id, pump_type_id=pump_type_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
                        
        return querySet

class RequisitionList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = RequisitionSerializer
    queryset = Requisition.objects.all() 

class FuelTypeDetail(generics.ListCreateAPIView):
    serializer_class =  FuelTypeSerializer
    queryset = FuelType.objects.all()
    pagination_class = LimitOffsetPagination  
    

class FuelTypeList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = FuelTypeSerializer
    queryset = FuelType.objects.all() 

class PumpMethodDetail(generics.ListCreateAPIView):
    serializer_class =  PumpMethodSerializer
    queryset = PumpMethod.objects.all()            
    pagination_class = LimitOffsetPagination

class PumpMethodList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = PumpMethodSerializer
    queryset = PumpMethod.objects.all() 

class RegionDistributionDetail(generics.ListCreateAPIView):
    serializer_class = RegionDistributionSerializer
    pagination_class = LimitOffsetPagination
    def get_queryset(self):
        
        querySet = RegionDistribution.objects.all()
        region_id = self.request.query_params.get('region')
        depot_id  = self.request.query_params.get('depot')
        pump_type_id   = self.request.query_params.get('pump')
        req_id = self.request.query_params.get('req')

        if region_id is not None and depot_id is None and pump_type_id is None and req_id is None:
            querySet = querySet.filter(region_id = region_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif  depot_id is not None and  pump_type_id is None and region_id is None and req_id is None :
            querySet = querySet.filter( depot_id =  depot_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif  pump_type_id is not None and region_id is None and depot_id is None and req_id is None:
            querySet = querySet.filter( pump_type_id = pump_type_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif  req_id is not None and region_id is None and depot_id is None and pump_type_id is None:
            querySet = querySet.filter( req_id = req_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif  region_id is not None and depot_id is not None and pump_type_id is None and req_id is None:
            querySet = querySet.filter( region_id = region_id, depot_id = depot_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif  depot_id is not None and  pump_type_id is not None and region_id is None and req_id is None :
            querySet = querySet.filter( depot_id = depot_id ,pump_type_id =  pump_type_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."}) 

        elif  pump_type_id is not None and region_id is not None and depot_id is None and req_id is None:
            querySet = querySet.filter( pump_type_id = pump_type_id , region_id = region_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif  pump_type_id is not None and region_id is not None and depot_id is not None and req_id is not None:
            querySet = querySet.filter( pump_type_id = pump_type_id , region_id = region_id ,depot_id = depot_id,req_id=req_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
        
        return querySet

class RegionDistributionList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = RegionDistributionSerializer
    queryset = RegionDistribution.objects.all()             

class MainStockDetail(generics.ListCreateAPIView):
    serializer_class =  MainStockSerializer
    pagination_class = LimitOffsetPagination
    def get_queryset(self):
        querySet = MainStock.objects.all()
        region_id = self.request.query_params.get('region')
        depot_id = self.request.query_params.get('depot')
        fuel_type_id = self.request.query_params.get('fuel')

        if region_id is not None and depot_id  is None and fuel_type_id  is None:
            querySet = querySet.filter(region_id = region_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
        elif depot_id is not None and region_id  is None and fuel_type_id  is None:
            querySet = querySet.filter(depot_id = depot_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
        elif fuel_type_id is not None and region_id  is None and depot_id  is None:
            querySet = querySet.filter(pump_type_id = fuel_type_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
        elif  region_id is not None and depot_id is not None and fuel_type_id is None:  
            querySet = querySet.filter( region_id = region_id, depot_id = depot_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
        elif  region_id is not None and depot_id is None and fuel_type_id is not None:  
            querySet = querySet.filter( region_id = region_id, pump_type_id = fuel_type_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
        elif  region_id is None and depot_id is not None and fuel_type_id is not None:  
            querySet = querySet.filter( depot_id = depot_id, pump_type_id = fuel_type_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
        elif  region_id is not None and depot_id is not None and fuel_type_id is not None:  
            querySet = querySet.filter( region_id = region_id, depot_id = depot_id, pump_type_id = fuel_type_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
        return querySet

class MainStockList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = MainStockSerializer
    queryset = MainStock.objects.all() 

class TransactionDetail(generics.ListCreateAPIView):
    serializer_class =  TransactionSerializer
    pagination_class = LimitOffsetPagination
    def get_queryset(self):
        querySet = Transaction.objects.all()
        region_id = self.request.query_params.get('region')
        depot_id = self.request.query_params.get('depot')

        if region_id is not None and depot_id  is None:
            querySet = querySet.filter(region_id = region_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
        elif depot_id is not None and region_id  is None:
            querySet = querySet.filter(depot_id = depot_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
        elif  region_id is not None and depot_id is not None:  
            querySet = querySet.filter( region_id = region_id, depot_id = depot_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
        return querySet

class TransactionList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = TransactionSerializer
    queryset = Transaction.objects.all()

class OtherDistributionDetail(generics.ListCreateAPIView):
    serializer_class =OtherDistributionSerializer
    pagination_class = LimitOffsetPagination

    def get_queryset(self):
        querySet = OtherDistribution.objects.all()
        institute_no=self.request.query_params.get('institute')
        pump_type_id  = self.request.query_params.get('pump_type')
        
        if institute_no is not None and pump_type_id  is None:
            querySet = querySet.filter(institute_no = institute_no)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif  pump_type_id is not None and institute_no is None :  
            querySet = querySet.filter( pump_type_id = pump_type_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif  institute_no is not None and pump_type_id is not None:  
            querySet = querySet.filter( institute_no = institute_no,pump_type_id=pump_type_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        
        return querySet

class ContractorDistributionDetail(generics.ListCreateAPIView):
    serializer_class =ContractorDistributionSerializer
    pagination_class = LimitOffsetPagination

    def get_queryset(self):
        querySet = ContractorDistribution.objects.all()
        contractor_no=self.request.query_params.get('contractor')
        pump_type_id  = self.request.query_params.get('pump_type')
        
        if contractor_no is not None and pump_type_id  is None:
            querySet = querySet.filter(contractor_no = contractor_no)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif  pump_type_id is not None and contractor_no is None :  
            querySet = querySet.filter( pump_type_id = pump_type_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif  contractor_no is not None and pump_type_id is not None:  
            querySet = querySet.filter( contractor_no = contractor_no,pump_type_id=pump_type_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
  
        return querySet

class OtherDistributionList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = OtherDistributionSerializer
    queryset = OtherDistribution.objects.all() 

class ContractorDistributionList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = ContractorDistributionSerializer
    queryset = ContractorDistribution.objects.all()
    
class STCVehicleDistributionDetail(generics.ListCreateAPIView):
    serializer_class =STCVehicleDistributionSerializer
    pagination_class = LimitOffsetPagination
    

    def get_queryset(self):
        querySet = STCVehicleDistribution.objects.all()
        region_id = self.request.query_params.get('region')
        depot_id  = self.request.query_params.get('depot')
        institute_no = self.request.query_params.get('institute')
        pump_type_id  = self.request.query_params.get('fuel_type')
        vehicle_id   = self.request.query_params.get('vehicle')
        if region_id is not None and depot_id  is None and institute_no is None and pump_type_id is None and vehicle_id is None:
            querySet = querySet.filter(region_id = region_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif  depot_id is not None and region_id is None and institute_no is None and pump_type_id is None and vehicle_id is None:  
            querySet = querySet.filter( depot_id =  depot_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif institute_no is not None and region_id is None and depot_id  is None and pump_type_id is None and vehicle_id is None:  
            querySet = querySet.filter( institute_no = institute_no) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif pump_type_id is not None and region_id is None and depot_id  is None and institute_no is None and vehicle_id is None:  
            querySet = querySet.filter( pump_type_id = pump_type_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif vehicle_id is not None and region_id is None and depot_id  is None and institute_no is None and  pump_type_id is None:  
            querySet = querySet.filter( vehicle_id= vehicle_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif region_id is not None and depot_id  is not None and  institute_no is None and  pump_type_id is None and vehicle_id is  None:  
            querySet = querySet.filter( region_id= region_id,depot_id=depot_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif institute_no is not None and pump_type_id  is not None and  region_id is None and  depot_id is None and vehicle_id is  None:  
            querySet = querySet.filter( institute_no= institute_no,pump_type_id=pump_type_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif region_id is not None and vehicle_id  is not None and  depot_id is None and institute_no is None and pump_type_id is  None:  
            querySet = querySet.filter( region_id= region_id,vehicle_id=vehicle_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif depot_id is not None and vehicle_id  is not None and  region_id is None and institute_no is None and pump_type_id is  None:  
            querySet = querySet.filter( depot_id= depot_id,vehicle_id=vehicle_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif depot_id is not None and vehicle_id  is not None and  region_id is not None and institute_no is None and pump_type_id is  None:  
            querySet = querySet.filter( depot_id= depot_id,vehicle_id=vehicle_id,region_id=region_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif depot_id is not None and vehicle_id  is not None and  region_id is not None and institute_no is not None and pump_type_id is  None:  
            querySet = querySet.filter( depot_id= depot_id,vehicle_id=vehicle_id,region_id=region_id,institute_no=institute_no) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif depot_id is not None and vehicle_id  is not None and  region_id is not None and pump_type_id is not None and institute_no is  None:  
            querySet = querySet.filter( depot_id= depot_id,vehicle_id=vehicle_id,region_id=region_id,pump_type_id=pump_type_id) 
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})

        elif  region_id is not None and depot_id is not None and institute_no is not None and pump_type_id is not None and vehicle_id is not None:
            querySet = querySet.filter(region_id = region_id ,depot_id = depot_id,institute_no=institute_no,pump_type_id=pump_type_id ,vehicle_id=vehicle_id)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
            
        return querySet

class STCVehicleDistributionList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = STCVehicleDistributionSerializer
    queryset = STCVehicleDistribution.objects.all()             

class InstituteDetail(generics.ListCreateAPIView):
    serializer_class = InstituteSerializer
    queryset = Institute.objects.all()
    pagination_class = LimitOffsetPagination

class InstituteList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = InstituteSerializer
    queryset = Institute.objects.all() 

class ContractorDetail(generics.ListCreateAPIView):
    serializer_class = ContractorSerializer
    queryset = Contractor.objects.all()
    pagination_class = LimitOffsetPagination

class ContractorList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = ContractorSerializer
    queryset = Contractor.objects.all() 
                      

class ClosingTableDetail(generics.ListCreateAPIView):
    serializer_class =  ClosingTableSerializer
    pagination_class = LimitOffsetPagination
    def get_queryset(self):
        querySet = ClosingTable.objects.all()
        region = self.request.query_params.get('region')

        if region is not None:
            querySet = querySet.filter(region_id = region)
        if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
        return querySet            

class ClosingTableList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = ClosingTableSerializer
    queryset = ClosingTable.objects.all()           

""" 

Extend user and authontication


 """
class MyObtainTokenPairView(TokenObtainPairView):
    permission_classes = (AllowAny,)
    serializer_class = MyTokenObtainPairSerializer
    
class RegisterView(generics.CreateAPIView):
    queryset = User.objects.all()
    permission_classes = (AllowAny,)
    serializer_class = RegisterSerializer

class ChangePasswordView(generics.UpdateAPIView):
    queryset = User.objects.all()
    permission_classes = (IsAuthenticated,)
    serializer_class = ChangePasswordSerializer

class UpdateProfileView(generics.UpdateAPIView):
    queryset = User.objects.all()
    permission_classes = (IsAuthenticated,)
    serializer_class = UpdateUserSerializer

class LogoutView(APIView):
    permission_classes = (IsAuthenticated,)

    def post(self, request):
        try:
            refresh_token = request.data["refresh_token"]
            token = RefreshToken(refresh_token)
            token.blacklist()

            return Response(status=status.HTTP_205_RESET_CONTENT)
        except Exception as e:
            return Response(status=status.HTTP_400_BAD_REQUEST)


class LogoutAllView(APIView):
    permission_classes = (IsAuthenticated,)

    def post(self, request):
        tokens = OutstandingToken.objects.filter(user_id=request.user.id)
        for token in tokens:
            t, _ = BlacklistedToken.objects.get_or_create(token=token)

        return Response(status=status.HTTP_205_RESET_CONTENT)

class FulUserUn(generics.ListCreateAPIView):
    serializer_class =  UserSerializer  
    def get_queryset(self):
        querySet = FuelUser.objects.all()
        username = self.request.query_params.get('un')

        if username is not None:
            querySet = querySet.filter(User__username = username)
            if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
        return querySet

class UpdateRequisitionView(generics.UpdateAPIView):
    queryset = Requisition.objects.all()
    serializer_class = UpdateRequisitionSerializer   

class DefaultFuelPriceDetail(generics.ListCreateAPIView):
    serializer_class =  DefaultFuelPriceSerializer
    pagination_class = LimitOffsetPagination
    def get_queryset(self):
        querySet = DefaultFuelPrice.objects.all()
        pump_type_id = self.request.query_params.get('pump')

        if pump_type_id is not None:
            querySet = querySet.filter(pump_type_id = pump_type_id)
        if not querySet:
                raise serializers.ValidationError({"authorize": "No Records Found."})
        return querySet            

class DefaultFuelPriceList(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = DefaultFuelPriceSerializer
    queryset = DefaultFuelPrice.objects.all() 
