from rest_flex_fields import FlexFieldsModelViewSet, FlexFieldsModelSerializer
from rest_framework import serializers
from test_api.models import Emp, Region, Depot, STCMachineDistribution, STCMachinesDistribution, User,FuelUser,\
    UserLevel,InsuranceCompany,VehicleCategory,VehicleDetail,IncomingFuel,FuelType,RegionDistribution,\
     MainStock,ClosingTable ,Requisition ,PumpMethod,Designation,Institute,Transaction,OtherDistribution,STCVehicleDistribution,Contractor,\
    ContractorDistribution, DefaultFuelPrice
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer
from django.contrib.auth.models import User
from rest_framework.validators import UniqueValidator
from django.contrib.auth.password_validation import validate_password

class userSuperSerializer(serializers.ModelSerializer):
    class Meta:
        mode = User
        fields = ('__all__')

class RegionSerializer(FlexFieldsModelSerializer):
    class Meta:
        model = Region
        fields = ('__all__')

class DepotSerializer(FlexFieldsModelSerializer):
    class Meta:
        model = Depot
        fields = ('__all__')
        expandable_fields = {'reg': (RegionSerializer, {'source': 'region_id', 'fields': ['region_id', 'region_txt']})}

class UserLevelSerializer(FlexFieldsModelSerializer):
    class Meta:
        model = UserLevel
        fields = ('__all__')

class UserSerializer(FlexFieldsModelSerializer):
    class Meta:
        model = FuelUser
        fields = ('__all__')
        depth = 1
        #fields = (FuelUser.fuel_user_id, FuelUser.User.username)                          
        expandable_fields = {'region': (RegionSerializer, {'source': 'region_id', 'fields': ['region_id', 'region_txt']}),
                             'depot': (DepotSerializer, {'source': 'depot_id', 'fields': ['depot_id', 'depot_txt']}),
                             'userlevel': (UserLevelSerializer, {'source': 'level_id', 'fields': ['level_id', 'level_name']}),
                            }
       

""" Item and location test  """

class InsuranceCompanySerializer(FlexFieldsModelSerializer):
    class Meta:
        model  = InsuranceCompany
        fields = ('__all__')

                             
class FuelTypeSerializer(FlexFieldsModelSerializer):
    class Meta:
        model  = FuelType
        fields = ('__all__')        

class VehicleCategorySerializer(FlexFieldsModelSerializer):
    class Meta:
        model  = VehicleCategory
        fields = ('__all__')

class VehicleDetailSerializer(FlexFieldsModelSerializer):
    class Meta:
        model  = VehicleDetail
        fields = ('__all__')
        expandable_fields = {'regi': (RegionSerializer, {'source': 'region_id', 'fields': ['region_id', 'region_txt']}),
                             'dept': (DepotSerializer, {'source': 'depot_id', 'fields': ['depot_id', 'depot_txt']}),
                             'category': (VehicleCategorySerializer, {'source': 'cat_id', 'fields': ['cat_id', 'cat_name']}),
                             'insurance': (InsuranceCompanySerializer, {'source': 'insurance_company_id', 'fields': ['insurance_company_id', 'insurance_company_name']}),
                             'fuel': (FuelTypeSerializer, {'source': 'pump_type_id', 'fields': ['pump_type_id', 'pump_text']})
                            }
   
class DesignationSerializer(FlexFieldsModelSerializer):
    class Meta:
        model  = Designation
        fields = ('__all__')  

class EmpSerializer(FlexFieldsModelSerializer):
    class Meta:
        model  = Emp
        expandable_fields = {'des': (DesignationSerializer, {'source': 'des_id', 'fields': ['des_id', 'des_text']})}
        fields = ('__all__')  

class IncomingFuelSerializer(FlexFieldsModelSerializer):
    class Meta:
        model  = IncomingFuel
        fields = ('__all__')     
        expandable_fields = {'region': (RegionSerializer, {'source': 'region_id', 'fields': ['region_id', 'region_txt']}),
                             'depot': (DepotSerializer, {'source': 'depot_id', 'fields': ['depot_id', 'depot_txt']}),
                             'emp': (EmpSerializer, {'source': 'emp_id', 'fields': ['emp_id', 'emp_name']}),
                             'fuel': (FuelTypeSerializer, {'source': 'pump_type_id', 'fields': ['pump_type_id', 'pump_text']})
                             }                         
   

class RequisitionSerializer(FlexFieldsModelSerializer):
    class Meta:
        model  = Requisition
        fields = ('__all__')
        expandable_fields = {'region': (RegionSerializer, {'source': 'region_id', 'fields': ['region_id', 'region_txt']}),
                             'depot': (DepotSerializer, {'source': 'depot_id', 'fields': ['depot_id', 'depot_txt']}),
                             'emp': (EmpSerializer, {'source': 'emp_id', 'fields': ['emp_id', 'emp_name']}),
                             'fuel': (FuelTypeSerializer, {'source': 'pump_type_id', 'fields': ['pump_type_id', 'pump_text']})

                            } 
class PumpMethodSerializer(FlexFieldsModelSerializer):
    class Meta:
        model  = PumpMethod
        fields = ('__all__')             

class RegionDistributionSerializer(FlexFieldsModelSerializer):
    class Meta:
        model  =RegionDistribution
        fields = ('__all__')
        expandable_fields = {'regii': (RegionSerializer, {'source': 'region_id', 'fields': ['region_id', 'region_txt']}),
                             'dep': (DepotSerializer, {'source': 'depot_id', 'fields': ['depot_id', 'depot_txt']}),
                             'pump': (FuelTypeSerializer, {'source': 'pump_type_id', 'fields': ['pump_type_id', 'pump_text']}), 
                             'req': (RequisitionSerializer, {'source': 'req_id', 'fields': ['req_id', 'req_no', 'req_date', 'req_qty']}),
                             'en_region': (RegionSerializer, {'source': 'en_reg_id', 'fields': ['region_id', 'region_txt']}),
                             'en_depot': (DepotSerializer, {'source': 'en_dep_id', 'fields': ['depot_id', 'depot_txt']}),
                            }
    
class MainStockSerializer(FlexFieldsModelSerializer):
    class Meta:
        model  = MainStock
        fields = ('__all__')  
        expandable_fields = {'region': (RegionSerializer, {'source': 'region_id', 'fields': ['region_id', 'region_txt']}),
                            'depot': (DepotSerializer, {'source': 'depot_id', 'fields': ['depot_id', 'depot_txt']}), 
                            'fuel': (FuelTypeSerializer, {'source': 'pump_type_id', 'fields': ['pump_type_id', 'pump_text']}),                     
                            }

class TransactionSerializer(FlexFieldsModelSerializer):
    class Meta:
        model  = Transaction
        fields = ('__all__')  
        expandable_fields = {'region': (RegionSerializer, {'source': 'region_id', 'fields': ['region_id', 'region_txt']}),
                            'depot': (DepotSerializer, {'source': 'depot_id', 'fields': ['depot_id', 'depot_txt']}),                      
                            }
    
class InstituteSerializer(FlexFieldsModelSerializer):
    class Meta:
        model  = Institute
        fields = ('__all__')  

class ContractorSerializer(FlexFieldsModelSerializer):
    class Meta:
        model  = Contractor
        fields = ('__all__')             

class ClosingTableSerializer(FlexFieldsModelSerializer):
    class Meta:
        model  = ClosingTable
        fields = ('__all__')  
        expandable_fields = {'region_': (RegionSerializer, {'source': 'region_id', 'fields': ['region_id', 'region_txt']})}  

class OtherDistributionSerializer(FlexFieldsModelSerializer):
    class Meta:
        model  = OtherDistribution
        fields = ('__all__')
        expandable_fields = {'institute': (InstituteSerializer, {'source': 'institute_no', 'fields': ['institute_no', 'institute_text']}),
                             'fuel_type': (FuelTypeSerializer, {'source': 'pump_type_id', 'fields': ['pump_type_id', 'pump_text']}),
                             'en_region': (RegionSerializer, {'source': 'en_reg_id', 'fields': ['region_id', 'region_txt']}),
                             'en_depot': (DepotSerializer, {'source': 'en_dep_id', 'fields': ['depot_id', 'depot_txt']}),
                             #'pump_method': (Pump_methodSerializer, {'source': 'pump_method_id', 'fields': ['pump_method_id', 'pump_method_type']}),
                            }  
class ContractorDistributionSerializer(FlexFieldsModelSerializer):
    class Meta:
        model  = ContractorDistribution
        fields = ('__all__')
        expandable_fields = {'contractor': (ContractorSerializer, {'source': 'contractor_no', 'fields': ['contractor_no', 'contractor_text']}),
                             'fuel_type': (FuelTypeSerializer, {'source': 'pump_type_id', 'fields': ['pump_type_id', 'pump_text']}),
                             #'pump_method': (Pump_methodSerializer, {'source': 'pump_method_id', 'fields': ['pump_method_id', 'pump_method_type']})
                             'en_region': (RegionSerializer, {'source': 'en_reg_id', 'fields': ['region_id', 'region_txt']}),
                             'en_depot': (DepotSerializer, {'source': 'en_dep_id', 'fields': ['depot_id', 'depot_txt']}),
                            }
                                                      
class STCVehicleDistributionSerializer(FlexFieldsModelSerializer):
    class Meta:
        model  = STCVehicleDistribution
        fields = ('__all__')
        expandable_fields = {'region': (RegionSerializer, {'source': 'region_id', 'fields': ['region_id', 'region_txt']}),
                             'depot': (DepotSerializer, {'source': 'depot_id', 'fields': ['depot_id', 'depot_txt']}),
                             'institute': (InstituteSerializer, {'source': 'institute_no', 'fields': ['institute_no', ' institute_text']}),
                             'fuel_type': (FuelTypeSerializer, {'source': 'pump_type_id', 'fields': ['pump_type_id', 'pump_text']}),
                             'vehicle': (VehicleDetailSerializer, {'source': 'vehicle_id', 'fields': ['vehicle_id', 'vehicle_reg_no']}),
                             'en_region': (RegionSerializer, {'source': 'en_reg_id', 'fields': ['region_id', 'region_txt']}),
                             'en_depot': (DepotSerializer, {'source': 'en_dep_id', 'fields': ['depot_id', 'depot_txt']})
                            } 
                                        
class STCMachinesDistributionSerializer(FlexFieldsModelSerializer):
    class Meta:
        model  = STCMachinesDistribution
        fields = ('__all__')
        expandable_fields = {'region': (RegionSerializer, {'source': 'region_id', 'fields': ['region_id', 'region_txt']}),
                             'depot': (DepotSerializer, {'source': 'depot_id', 'fields': ['depot_id', 'depot_txt']}),
                             'institute': (InstituteSerializer, {'source': 'institute_no', 'fields': ['institute_no', ' institute_text']}),
                             'fuel_type': (FuelTypeSerializer, {'source': 'pump_type_id', 'fields': ['pump_type_id', 'pump_text']}),
                            #  'vehicle': (VehicleDetailSerializer, {'source': 'vehicle_id', 'fields': ['vehicle_id', 'vehicle_reg_no']}),
                             'en_region': (RegionSerializer, {'source': 'en_reg_id', 'fields': ['region_id', 'region_txt']}),
                             'en_depot': (DepotSerializer, {'source': 'en_dep_id', 'fields': ['depot_id', 'depot_txt']})
                            }                                 
                             
""" 
Extend user and autohnticatons

"""

class MyTokenObtainPairSerializer(TokenObtainPairSerializer):

    @classmethod
    def get_token(cls, user):
        token = super(MyTokenObtainPairSerializer, cls).get_token(user)
        # Add custom claims
        token['username'] = user.username
        return token


class RegisterSerializer(serializers.ModelSerializer):
    email = serializers.EmailField(
            required=True,
            validators=[UniqueValidator(queryset=User.objects.all())]
            )

    password  = serializers.CharField(write_only=True, required=True, validators=[validate_password])
    password2 = serializers.CharField(write_only=True, required=True)

    class Meta:
        model = User
        fields = ('username', 'password', 'password2', 'email', 'first_name', 'last_name')
        extra_kwargs = {
            'first_name': {'required': True},
            'last_name': {'required': True}
        }

    def validate(self, attrs):
        if attrs['password'] != attrs['password2']:
            raise serializers.ValidationError({"password": "Password fields didn't match."})

        return attrs

    def create(self, validated_data):
        user = User.objects.create(
            username=validated_data['username'],
            email=validated_data['email'],
            first_name=validated_data['first_name'],
            last_name=validated_data['last_name']
        )
        
        user.set_password(validated_data['password'])
        user.save()

        return user


class ChangePasswordSerializer(serializers.ModelSerializer):
    password  = serializers.CharField(write_only=True, required=True, validators=[validate_password])
    password2 = serializers.CharField(write_only=True, required=True)
    old_password = serializers.CharField(write_only=True, required=True)

    class Meta:
        model = User
        fields = ('old_password', 'password', 'password2')

    def validate(self, attrs):
        if attrs['password'] != attrs['password2']:
            raise serializers.ValidationError({"password": "Password fields didn't match."})

        return attrs

    def validate_old_password(self, value):
        user = self.context['request'].user
        if not user.check_password(value):
            raise serializers.ValidationError({"old_password": "Old password is not correct"})
        return value

    def update(self, instance, validated_data):

        instance.set_password(validated_data['password'])
        instance.save()

        return instance

    def update(self, instance, validated_data):
        user = self.context['request'].user

        if user.pk != instance.pk:
            raise serializers.ValidationError({"authorize": "You dont have permission for this user."})

        instance.set_password(validated_data['password'])
        instance.save()

        return instance

class UpdateUserSerializer(serializers.ModelSerializer):
    email = serializers.EmailField(required=True)

    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email')
        extra_kwargs = {
            'first_name': {'required': True},
            'last_name': {'required': True},
        }

    def validate_email(self, value):
        user = self.context['request'].user
        if User.objects.exclude(pk=user.pk).filter(email=value).exists():
            raise serializers.ValidationError({"email": "This email is already in use."})
        return value

    def validate_username(self, value):
        user = self.context['request'].user
        if User.objects.exclude(pk=user.pk).filter(username=value).exists():
            raise serializers.ValidationError({"username": "This username is already in use."})
        return value

    def update(self, instance, validated_data):
        instance.first_name = validated_data['first_name']
        instance.last_name = validated_data['last_name']
        instance.email = validated_data['email']
        instance.username = validated_data['username']

        instance.save()

        return instance

    def update(self, instance, validated_data):
        user = self.context['request'].user

        if user.pk != instance.pk:
            raise serializers.ValidationError({"authorize": "You dont have permission for this user."})

        instance.first_name = validated_data['first_name']
        instance.last_name = validated_data['last_name']
        instance.email = validated_data['email']
        instance.username = validated_data['username']

        instance.save()

        return instance

class UpdateRequisitionSerializer(serializers.ModelSerializer):
    pump_qty = serializers.FloatField(required=True)
    
    class Meta:
        model = Requisition
        fields = ('pump_qty', 'status')
        extra_kwargs = {
            'pump_qty': {'required': True},
            'status': {'required': True},
        }            

class DefaultFuelPriceSerializer(FlexFieldsModelSerializer):
    class Meta:
        model  = DefaultFuelPrice
        fields = ('__all__')  
        expandable_fields = {'fuel_type': (FuelTypeSerializer, {'source': 'pump_type_id', 'fields': ['pump_type_id', 'pump_text']})}
