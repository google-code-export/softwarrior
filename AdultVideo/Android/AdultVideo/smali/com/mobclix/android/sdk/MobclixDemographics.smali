.class public Lcom/mobclix/android/sdk/MobclixDemographics;
.super Ljava/lang/Object;
.source "MobclixDemographics.java"


# static fields
.field public static AreaCode:Ljava/lang/String;

.field public static Birthdate:Ljava/lang/String;

.field public static City:Ljava/lang/String;

.field public static Country:Ljava/lang/String;

.field public static DMACode:Ljava/lang/String;

.field public static DatingGender:Ljava/lang/String;

.field public static Education:Ljava/lang/String;

.field public static EducationBachelorsDegree:I

.field public static EducationDoctoralDegree:I

.field public static EducationHighSchool:I

.field public static EducationInCollege:I

.field public static EducationMastersDegree:I

.field public static EducationSomeCollege:I

.field public static EducationUnknown:I

.field public static Ethnicity:Ljava/lang/String;

.field public static EthnicityAsian:I

.field public static EthnicityBlack:I

.field public static EthnicityHispanic:I

.field public static EthnicityMixed:I

.field public static EthnicityNativeAmerican:I

.field public static EthnicityUnknown:I

.field public static EthnicityWhite:I

.field public static Gender:Ljava/lang/String;

.field public static GenderBoth:I

.field public static GenderFemale:I

.field public static GenderMale:I

.field public static GenderUnknown:I

.field public static Income:Ljava/lang/String;

.field public static MaritalMarried:I

.field public static MaritalSingleAvailable:I

.field public static MaritalSingleUnavailable:I

.field public static MaritalStatus:Ljava/lang/String;

.field public static MaritalUnknown:I

.field public static MetroCode:Ljava/lang/String;

.field public static PostalCode:Ljava/lang/String;

.field public static Region:Ljava/lang/String;

.field public static Religion:Ljava/lang/String;

.field public static ReligionBuddhism:I

.field public static ReligionChristianity:I

.field public static ReligionHinduism:I

.field public static ReligionIslam:I

.field public static ReligionJudaism:I

.field public static ReligionOther:I

.field public static ReligionUnaffiliated:I

.field public static ReligionUnknown:I

.field private static TAG:Ljava/lang/String;

.field static controller:Lcom/mobclix/android/sdk/Mobclix;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    #v5=(PosByte);
    const/4 v4, 0x3

    #v4=(PosByte);
    const/4 v3, 0x2

    #v3=(PosByte);
    const/4 v2, 0x1

    #v2=(One);
    const/4 v1, 0x0

    .line 14
    #v1=(Null);
    const-string v0, "mobclixDemographics"

    #v0=(Reference,Ljava/lang/String;);
    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->TAG:Ljava/lang/String;

    .line 15
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->getInstance()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v0

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 17
    const-string v0, "dbd"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Birthdate:Ljava/lang/String;

    .line 18
    const-string v0, "dec"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Education:Ljava/lang/String;

    .line 19
    const-string v0, "den"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Ethnicity:Ljava/lang/String;

    .line 20
    const-string v0, "dg"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Gender:Ljava/lang/String;

    .line 21
    const-string v0, "ddg"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->DatingGender:Ljava/lang/String;

    .line 22
    const-string v0, "dic"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Income:Ljava/lang/String;

    .line 23
    const-string v0, "dms"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalStatus:Ljava/lang/String;

    .line 24
    const-string v0, "drl"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Religion:Ljava/lang/String;

    .line 26
    const-string v0, "dac"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->AreaCode:Ljava/lang/String;

    .line 27
    const-string v0, "dci"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->City:Ljava/lang/String;

    .line 28
    const-string v0, "dco"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Country:Ljava/lang/String;

    .line 29
    const-string v0, "ddc"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->DMACode:Ljava/lang/String;

    .line 30
    const-string v0, "dmc"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->MetroCode:Ljava/lang/String;

    .line 31
    const-string v0, "dpo"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->PostalCode:Ljava/lang/String;

    .line 32
    const-string v0, "drg"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixDemographics;->Region:Ljava/lang/String;

    .line 35
    sput v1, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationUnknown:I

    .line 36
    sput v2, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationHighSchool:I

    .line 37
    sput v3, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationSomeCollege:I

    .line 38
    sput v4, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationInCollege:I

    .line 39
    sput v5, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationBachelorsDegree:I

    .line 40
    const/4 v0, 0x5

    #v0=(PosByte);
    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationMastersDegree:I

    .line 41
    const/4 v0, 0x6

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->EducationDoctoralDegree:I

    .line 43
    sput v1, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityUnknown:I

    .line 44
    sput v2, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityMixed:I

    .line 45
    sput v3, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityAsian:I

    .line 46
    sput v4, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityBlack:I

    .line 47
    sput v5, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityHispanic:I

    .line 48
    const/4 v0, 0x5

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityNativeAmerican:I

    .line 49
    const/4 v0, 0x6

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->EthnicityWhite:I

    .line 51
    sput v1, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionUnknown:I

    .line 52
    sput v2, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionBuddhism:I

    .line 53
    sput v3, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionChristianity:I

    .line 54
    sput v4, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionHinduism:I

    .line 55
    sput v5, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionIslam:I

    .line 56
    const/4 v0, 0x5

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionJudaism:I

    .line 57
    const/4 v0, 0x6

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionUnaffiliated:I

    .line 58
    const/4 v0, 0x7

    sput v0, Lcom/mobclix/android/sdk/MobclixDemographics;->ReligionOther:I

    .line 60
    sput v1, Lcom/mobclix/android/sdk/MobclixDemographics;->GenderUnknown:I

    .line 61
    sput v2, Lcom/mobclix/android/sdk/MobclixDemographics;->GenderMale:I

    .line 62
    sput v3, Lcom/mobclix/android/sdk/MobclixDemographics;->GenderFemale:I

    .line 64
    sput v4, Lcom/mobclix/android/sdk/MobclixDemographics;->GenderBoth:I

    .line 66
    sput v1, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalUnknown:I

    .line 67
    sput v2, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalSingleAvailable:I

    .line 68
    sput v3, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalSingleUnavailable:I

    .line 69
    sput v4, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalMarried:I

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference,Lcom/mobclix/android/sdk/MobclixDemographics;);
    return-void
.end method

.method public static sendDemographics(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 1
    .parameter "a"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, d:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {p0, p1, v0}, Lcom/mobclix/android/sdk/MobclixDemographics;->sendDemographics(Landroid/app/Activity;Ljava/util/Map;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V

    .line 73
    return-void
.end method

.method public static sendDemographics(Landroid/app/Activity;Ljava/util/Map;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V
    .locals 22
    .parameter "a"
    .parameter
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/mobclix/android/sdk/MobclixFeedback$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, d:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 207
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    return-void

    .line 77
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);v21=(Uninit);
    invoke-static/range {p0 .. p0}, Lcom/mobclix/android/sdk/Mobclix;->onCreate(Landroid/app/Activity;)V

    .line 79
    new-instance v11, Ljava/util/HashMap;

    #v11=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v11, keys:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    #v11=(Reference,Ljava/util/HashMap;);
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->Birthdate:Ljava/lang/String;

    #v18=(Reference,Ljava/lang/String;);
    const/16 v19, 0x1

    #v19=(One);
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    #v19=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v18

    #v0=(Reference,Ljava/lang/String;);
    move-object/from16 v1, v19

    #v1=(Reference,Ljava/lang/Boolean;);
    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->Education:Ljava/lang/String;

    const/16 v19, 0x1

    #v19=(One);
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    #v19=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->Ethnicity:Ljava/lang/String;

    const/16 v19, 0x1

    #v19=(One);
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    #v19=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->Gender:Ljava/lang/String;

    const/16 v19, 0x1

    #v19=(One);
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    #v19=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->DatingGender:Ljava/lang/String;

    const/16 v19, 0x1

    #v19=(One);
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    #v19=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->Income:Ljava/lang/String;

    const/16 v19, 0x1

    #v19=(One);
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    #v19=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalStatus:Ljava/lang/String;

    const/16 v19, 0x1

    #v19=(One);
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    #v19=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->Religion:Ljava/lang/String;

    const/16 v19, 0x1

    #v19=(One);
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    #v19=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->AreaCode:Ljava/lang/String;

    const/16 v19, 0x1

    #v19=(One);
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    #v19=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->City:Ljava/lang/String;

    const/16 v19, 0x1

    #v19=(One);
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    #v19=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->Country:Ljava/lang/String;

    const/16 v19, 0x1

    #v19=(One);
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    #v19=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->DMACode:Ljava/lang/String;

    const/16 v19, 0x1

    #v19=(One);
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    #v19=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->MetroCode:Ljava/lang/String;

    const/16 v19, 0x1

    #v19=(One);
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    #v19=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->PostalCode:Ljava/lang/String;

    const/16 v19, 0x1

    #v19=(One);
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    #v19=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->Region:Ljava/lang/String;

    const/16 v19, 0x1

    #v19=(One);
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    #v19=(Reference,Ljava/lang/Boolean;);
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v5, Ljava/util/HashMap;

    #v5=(UninitRef,Ljava/util/HashMap;);
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v5, demo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    #v5=(Reference,Ljava/util/HashMap;);
    const/4 v9, 0x0

    .line 101
    .local v9, isValid:Z
    #v9=(Null);
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v7=(Conflicted);v9=(Boolean);v10=(Conflicted);v12=(Conflicted);v14=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v20=(Conflicted);
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    #v18=(Boolean);
    if-nez v18, :cond_3

    .line 181
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    #v18=(Reference,Lcom/mobclix/android/sdk/Mobclix;);
    invoke-virtual/range {v18 .. v18}, Lcom/mobclix/android/sdk/Mobclix;->getFeedbackServer()Ljava/lang/String;

    move-result-object v15

    .line 182
    .local v15, url:Ljava/lang/String;
    #v15=(Reference,Ljava/lang/String;);
    new-instance v13, Ljava/lang/StringBuffer;

    #v13=(UninitRef,Ljava/lang/StringBuffer;);
    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 184
    .local v13, params:Ljava/lang/StringBuffer;
    :try_start_0
    #v13=(Reference,Ljava/lang/StringBuffer;);
    const-string v18, "p=android&t=demo"

    move-object/from16 v0, v18

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    const-string v18, "&a="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    sget-object v19, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual/range {v19 .. v19}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationId()Ljava/lang/String;

    move-result-object v19

    const-string v20, "UTF-8"

    #v20=(Reference,Ljava/lang/String;);
    invoke-static/range {v19 .. v20}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    const-string v18, "&v="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    sget-object v19, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual/range {v19 .. v19}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationVersion()Ljava/lang/String;

    move-result-object v19

    const-string v20, "UTF-8"

    invoke-static/range {v19 .. v20}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    const-string v18, "&m="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    sget-object v19, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual/range {v19 .. v19}, Lcom/mobclix/android/sdk/Mobclix;->getMobclixVersion()Ljava/lang/String;

    move-result-object v19

    const-string v20, "UTF-8"

    invoke-static/range {v19 .. v20}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const-string v18, "&d="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    sget-object v19, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual/range {v19 .. v19}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v19

    const-string v20, "UTF-8"

    invoke-static/range {v19 .. v20}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    const-string v18, "&dt="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    sget-object v19, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual/range {v19 .. v19}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceModel()Ljava/lang/String;

    move-result-object v19

    const-string v20, "UTF-8"

    invoke-static/range {v19 .. v20}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const-string v18, "&os="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    sget-object v19, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual/range {v19 .. v19}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidVersion()Ljava/lang/String;

    move-result-object v19

    const-string v20, "UTF-8"

    invoke-static/range {v19 .. v20}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual/range {v18 .. v18}, Lcom/mobclix/android/sdk/Mobclix;->getGPS()Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, gps:Ljava/lang/String;
    #v8=(Reference,Ljava/lang/String;);
    const-string v18, "null"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-nez v18, :cond_2

    .line 193
    const-string v18, "UTF-8"

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-static {v8, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 194
    const-string v18, "&gps="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const/16 v19, 0x0

    #v19=(Null);
    const/16 v20, 0x30

    #v20=(PosByte);
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    #v21=(Integer);
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    #v20=(Integer);
    move/from16 v0, v19

    #v0=(Null);
    move/from16 v1, v20

    #v1=(Integer);
    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    #v19=(Reference,Ljava/lang/String;);
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    :cond_2
    #v0=(Reference,Ljava/lang/String;);v1=(Conflicted);v18=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    #v18=(Reference,Ljava/util/Set;);
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    #v18=(Boolean);
    if-nez v18, :cond_13

    .line 205
    new-instance v4, Ljava/lang/Thread;

    #v4=(UninitRef,Ljava/lang/Thread;);
    new-instance v18, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;

    #v18=(UninitRef,Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;);
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    #v0=(UninitRef,Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;);
    move-object/from16 v1, v19

    #v1=(Reference,Ljava/lang/String;);
    move-object/from16 v2, p0

    #v2=(Reference,Landroid/app/Activity;);
    move-object/from16 v3, p2

    #v3=(Reference,Lcom/mobclix/android/sdk/MobclixFeedback$Listener;);
    invoke-direct {v0, v15, v1, v2, v3}, Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/mobclix/android/sdk/MobclixFeedback$Listener;)V

    #v0=(Reference,Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;);v18=(Reference,Lcom/mobclix/android/sdk/MobclixUtility$POSTThread;);
    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 206
    .local v4, commentThread:Ljava/lang/Thread;
    #v4=(Reference,Ljava/lang/Thread;);
    invoke-virtual {v4}, Ljava/lang/Thread;->run()V

    goto/16 :goto_0

    .line 101
    .end local v4           #commentThread:Ljava/lang/Thread;
    .end local v8           #gps:Ljava/lang/String;
    .end local v13           #params:Ljava/lang/StringBuffer;
    .end local v15           #url:Ljava/lang/String;
    :cond_3
    #v0=(Conflicted);v1=(Conflicted);v2=(Uninit);v3=(Uninit);v4=(Uninit);v8=(Uninit);v13=(Uninit);v15=(Uninit);v18=(Boolean);v21=(Uninit);
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    #v10=(Reference,Ljava/lang/Object;);
    check-cast v10, Ljava/lang/String;

    .line 102
    .local v10, k:Ljava/lang/String;
    const-string v14, ""

    .line 103
    .local v14, temp:Ljava/lang/String;
    #v14=(Reference,Ljava/lang/String;);
    const/4 v9, 0x0

    .line 104
    #v9=(Null);
    move-object/from16 v0, p1

    #v0=(Reference,Ljava/util/Map;);
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 106
    .local v16, v:Ljava/lang/Object;
    #v16=(Reference,Ljava/lang/Object;);
    if-eqz v16, :cond_4

    .line 107
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    #v18=(Reference,Ljava/lang/Object;);
    if-nez v18, :cond_5

    .line 108
    const/4 v9, 0x0

    .line 177
    .end local v16           #v:Ljava/lang/Object;
    :cond_4
    :goto_3
    #v0=(Conflicted);v9=(Boolean);v18=(Conflicted);
    if-eqz v9, :cond_1

    .line 178
    invoke-virtual {v5, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 110
    .restart local v16       #v:Ljava/lang/Object;
    :cond_5
    #v0=(Reference,Ljava/util/Map;);v9=(Null);v18=(Reference,Ljava/lang/Object;);
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    const-class v20, Ljava/util/Date;

    #v20=(Reference,Ljava/lang/Class;);
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    #v1=(Reference,Ljava/lang/Class;);
    if-ne v0, v1, :cond_6

    .line 111
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->Birthdate:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_4

    .line 112
    new-instance v7, Ljava/text/SimpleDateFormat;

    #v7=(UninitRef,Ljava/text/SimpleDateFormat;);
    const-string v18, "yyyyMMdd"

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 113
    .local v7, f:Ljava/text/SimpleDateFormat;
    #v7=(Reference,Ljava/text/SimpleDateFormat;);
    check-cast v16, Ljava/util/Date;

    .end local v16           #v:Ljava/lang/Object;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 114
    const/4 v9, 0x1

    #v9=(One);
    goto :goto_3

    .line 116
    .end local v7           #f:Ljava/text/SimpleDateFormat;
    .restart local v16       #v:Ljava/lang/Object;
    :cond_6
    #v7=(Conflicted);v9=(Null);
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    const-class v20, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 117
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->City:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-nez v18, :cond_7

    .line 118
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->Country:Ljava/lang/String;

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-nez v18, :cond_7

    .line 119
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->PostalCode:Ljava/lang/String;

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-nez v18, :cond_7

    .line 120
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->Region:Ljava/lang/String;

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-nez v18, :cond_7

    .line 121
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->AreaCode:Ljava/lang/String;

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-nez v18, :cond_7

    .line 122
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->DMACode:Ljava/lang/String;

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-nez v18, :cond_7

    .line 123
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->Income:Ljava/lang/String;

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-nez v18, :cond_7

    .line 124
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->MetroCode:Ljava/lang/String;

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_4

    :cond_7
    move-object/from16 v14, v16

    .line 126
    check-cast v14, Ljava/lang/String;

    .line 127
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 128
    const-string v18, ""

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_8

    .line 129
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 131
    :cond_8
    const/4 v9, 0x1

    #v9=(One);
    goto/16 :goto_3

    .line 133
    :cond_9
    #v9=(Null);v18=(Reference,Ljava/lang/Class;);
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    const-class v20, Ljava/lang/Integer;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 134
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->AreaCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-nez v18, :cond_a

    .line 135
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->DMACode:Ljava/lang/String;

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-nez v18, :cond_a

    .line 136
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->Income:Ljava/lang/String;

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-nez v18, :cond_a

    .line 137
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->MetroCode:Ljava/lang/String;

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_c

    .line 139
    :cond_a
    check-cast v16, Ljava/lang/Integer;

    .end local v16           #v:Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 140
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 141
    const-string v18, ""

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_b

    .line 142
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 144
    :cond_b
    const/4 v9, 0x1

    #v9=(One);
    goto/16 :goto_3

    .line 146
    .restart local v16       #v:Ljava/lang/Object;
    :cond_c
    #v9=(Null);
    const/4 v12, 0x0

    .line 148
    .local v12, max:I
    #v12=(Null);
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->Gender:Ljava/lang/String;

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_e

    .line 150
    const/4 v12, 0x2

    :cond_d
    :goto_4
    #v12=(PosByte);
    move-object/from16 v18, v16

    .line 167
    #v18=(Reference,Ljava/lang/Object;);
    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 168
    .local v17, value:I
    #v17=(Integer);
    const/16 v18, 0x1

    #v18=(One);
    move/from16 v0, v18

    #v0=(One);
    move/from16 v1, v17

    #v1=(Integer);
    if-gt v0, v1, :cond_4

    move/from16 v0, v17

    #v0=(Integer);
    if-gt v0, v12, :cond_4

    .line 170
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 171
    const/4 v9, 0x1

    #v9=(One);
    goto/16 :goto_3

    .line 152
    .end local v17           #value:I
    :cond_e
    #v0=(Reference,Ljava/lang/String;);v1=(Reference,Ljava/lang/Class;);v9=(Null);v12=(Null);v17=(Conflicted);v18=(Boolean);
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->DatingGender:Ljava/lang/String;

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-nez v18, :cond_f

    .line 153
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->MaritalStatus:Ljava/lang/String;

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_10

    .line 155
    :cond_f
    const/4 v12, 0x3

    #v12=(PosByte);
    goto :goto_4

    .line 157
    :cond_10
    #v12=(Null);
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->Education:Ljava/lang/String;

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-nez v18, :cond_11

    .line 158
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->Ethnicity:Ljava/lang/String;

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_12

    .line 160
    :cond_11
    const/4 v12, 0x6

    #v12=(PosByte);
    goto :goto_4

    .line 162
    :cond_12
    #v12=(Null);
    sget-object v18, Lcom/mobclix/android/sdk/MobclixDemographics;->Religion:Ljava/lang/String;

    #v18=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_d

    .line 164
    const/4 v12, 0x7

    #v12=(PosByte);
    goto :goto_4

    .line 198
    .end local v10           #k:Ljava/lang/String;
    .end local v12           #max:I
    .end local v14           #temp:Ljava/lang/String;
    .end local v16           #v:Ljava/lang/Object;
    .restart local v8       #gps:Ljava/lang/String;
    .restart local v13       #params:Ljava/lang/StringBuffer;
    .restart local v15       #url:Ljava/lang/String;
    :cond_13
    :try_start_1
    #v1=(Conflicted);v8=(Reference,Ljava/lang/String;);v9=(Boolean);v10=(Conflicted);v12=(Conflicted);v13=(Reference,Ljava/lang/StringBuffer;);v14=(Conflicted);v15=(Reference,Ljava/lang/String;);v16=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    #v10=(Reference,Ljava/lang/Object;);
    check-cast v10, Ljava/lang/String;

    .line 199
    .restart local v10       #k:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    #v18=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v20, "&"

    #v20=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    move-object/from16 v1, v20

    #v1=(Reference,Ljava/lang/String;);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);v18=(Reference,Ljava/lang/StringBuilder;);
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const-string v21, "UTF-8"

    #v21=(Reference,Ljava/lang/String;);
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 202
    .end local v8           #gps:Ljava/lang/String;
    .end local v10           #k:Ljava/lang/String;
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v8=(Conflicted);v10=(Conflicted);v18=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    move-exception v6

    .local v6, e:Ljava/io/UnsupportedEncodingException;
    #v6=(Reference,Ljava/io/UnsupportedEncodingException;);
    goto/16 :goto_0
.end method
