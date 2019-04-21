.class public Lhk/com/aisoft/easyaddrui/eaView;
.super Landroid/widget/LinearLayout;
.source "eaView.java"


# static fields
.field protected static VERSION:Ljava/lang/String;

.field protected static btnClear:Landroid/widget/ImageButton;

.field protected static btnGPS:Landroid/widget/ImageButton;

.field protected static btnSearch:Landroid/widget/ImageButton;

.field protected static eaNetErr:Z

.field protected static lbAddrFlat:Landroid/widget/TextView;

.field protected static lbAddrFloor:Landroid/widget/TextView;

.field protected static lbAddrNotice:Landroid/widget/TextView;

.field protected static lbAddrRemarks:Landroid/widget/TextView;

.field protected static lbAddrWarn:Landroid/widget/TextView;

.field protected static lbKeyword:Landroid/widget/TextView;

.field protected static lbLoading:Landroid/widget/TextView;

.field protected static lbNetworkErrorC:Ljava/lang/String;

.field protected static lbNetworkErrorE:Ljava/lang/String;

.field protected static lbNoAddrFound:Ljava/lang/String;

.field protected static lbNoGPSFound:Ljava/lang/String;

.field protected static listResult:Landroid/widget/ListView;

.field public static llAddrMisc:Landroid/widget/LinearLayout;

.field public static llAddrWarn:Landroid/widget/LinearLayout;

.field public static llRowFlat:Landroid/widget/LinearLayout;

.field public static llRowFloor:Landroid/widget/LinearLayout;

.field public static llRowKey:Landroid/widget/LinearLayout;

.field public static llRowMiscScroll:Landroid/widget/ScrollView;

.field public static llRowRemarks:Landroid/widget/LinearLayout;

.field public static llSearch:Landroid/widget/LinearLayout;

.field protected static sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

.field public static sCompleteCallbackInterface:Lhk/com/aisoft/easyaddrui/CompleteCallbackInterface;

.field public static sConfirmCallbackInterface:Lhk/com/aisoft/easyaddrui/ConfirmCallbackInterface;

.field protected static sContext:Landroid/content/Context;

.field protected static sCurrDau:Ljava/lang/String;

.field protected static sCurrLot:Ljava/lang/String;

.field protected static sCustomer:Lhk/com/aisoft/easyaddrui/Customer;

.field protected static sDomain:Ljava/lang/String;

.field protected static sEAAutoSearch:Ljava/lang/Double;

.field protected static sEABundle:Ljava/lang/String;

.field protected static sEAChkResult:Ljava/lang/Double;

.field protected static sEACity:Ljava/lang/String;

.field protected static sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

.field protected static sEACurX:Ljava/lang/Double;

.field protected static sEACurY:Ljava/lang/Double;

.field protected static sEAKey:Ljava/lang/String;

.field protected static sEALang:Ljava/lang/String;

.field protected static sEAMode:Ljava/lang/String;

.field protected static sEATimeoutCnt:I

.field protected static sEAUAT:Ljava/lang/String;

.field public static sEditCallbackInterface:Lhk/com/aisoft/easyaddrui/EditCallbackInterface;

.field protected static sGPSX:D

.field protected static sGPSY:D

.field public static sGetStoreCallbackInterface:Lhk/com/aisoft/easyaddrui/GetStoreCallbackInterface;

.field protected static sHandler:Landroid/os/Handler;

.field protected static sListMode:Ljava/lang/String;

.field protected static sLocation:Landroid/location/Location;

.field protected static sLocationListener:Landroid/location/LocationListener;

.field protected static sLocationManager:Landroid/location/LocationManager;

.field protected static sReqBack:Z

.field protected static sResponse:Ljava/lang/String;

.field protected static sResponseAM:Lhk/com/aisoft/easyaddrui/ResponseQK;

.field protected static sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

.field protected static sRunnable:Ljava/lang/Runnable;

.field public static sSaveCallbackInterface:Lhk/com/aisoft/easyaddrui/SaveCallbackInterface;

.field protected static sSkipAutoSearch:Z

.field protected static sSpinnerChangeCnt:I

.field protected static sSysHash:Ljava/lang/String;

.field public static sSysParaCallbackInterface:Lhk/com/aisoft/easyaddrui/SysParaCallbackInterface;

.field protected static sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

.field protected static sTimeoutGPSRun:Ljava/lang/Runnable;

.field protected static sTimeoutSearchRun:Ljava/lang/Runnable;

.field protected static sTimeoutVerifyRun:Ljava/lang/Runnable;

.field protected static sVisibleCnt:I

.field protected static txtAddrFlat:Landroid/widget/EditText;

.field protected static txtAddrFloor:Landroid/widget/EditText;

.field protected static txtAddrNotice:Landroid/widget/TextView;

.field protected static txtAddrRemarks:Landroid/widget/EditText;

.field protected static txtEAKeyword:Landroid/widget/EditText;

.field public static webView:Landroid/webkit/WebView;


# instance fields
.field res:Landroid/content/res/Resources;

.field sAddrBeforeEdit:Ljava/lang/String;

.field sLastScrollCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 49
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sResponse:Ljava/lang/String;

    .line 50
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseAM:Lhk/com/aisoft/easyaddrui/ResponseQK;

    .line 51
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    .line 52
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    .line 53
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sCustomer:Lhk/com/aisoft/easyaddrui/Customer;

    .line 55
    const-string v0, "AND4.7"

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->VERSION:Ljava/lang/String;

    .line 59
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->listResult:Landroid/widget/ListView;

    .line 60
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbNoAddrFound:Ljava/lang/String;

    .line 61
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbNetworkErrorC:Ljava/lang/String;

    .line 62
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbNetworkErrorE:Ljava/lang/String;

    .line 63
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbNoGPSFound:Ljava/lang/String;

    .line 65
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEAMode:Ljava/lang/String;

    .line 66
    const-string v0, "\u9999\u6e2f"

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEACity:Ljava/lang/String;

    .line 67
    const-string v0, "N"

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEAUAT:Ljava/lang/String;

    .line 68
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEACurX:Ljava/lang/Double;

    .line 69
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEACurY:Ljava/lang/Double;

    .line 70
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    .line 72
    sput-boolean v3, Lhk/com/aisoft/easyaddrui/eaView;->sReqBack:Z

    .line 74
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    .line 75
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEAKey:Ljava/lang/String;

    .line 76
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEABundle:Ljava/lang/String;

    .line 77
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    .line 78
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEAAutoSearch:Ljava/lang/Double;

    .line 79
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEAChkResult:Ljava/lang/Double;

    .line 80
    sput-boolean v3, Lhk/com/aisoft/easyaddrui/eaView;->eaNetErr:Z

    .line 81
    sput v3, Lhk/com/aisoft/easyaddrui/eaView;->sEATimeoutCnt:I

    .line 82
    sput-boolean v3, Lhk/com/aisoft/easyaddrui/eaView;->sSkipAutoSearch:Z

    .line 84
    sput-wide v4, Lhk/com/aisoft/easyaddrui/eaView;->sGPSX:D

    .line 85
    sput-wide v4, Lhk/com/aisoft/easyaddrui/eaView;->sGPSY:D

    .line 87
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sListMode:Ljava/lang/String;

    .line 91
    sput v3, Lhk/com/aisoft/easyaddrui/eaView;->sVisibleCnt:I

    .line 106
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->llSearch:Landroid/widget/LinearLayout;

    .line 107
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->llAddrMisc:Landroid/widget/LinearLayout;

    .line 108
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->llAddrWarn:Landroid/widget/LinearLayout;

    .line 109
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->llRowKey:Landroid/widget/LinearLayout;

    .line 110
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->llRowFloor:Landroid/widget/LinearLayout;

    .line 111
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->llRowFlat:Landroid/widget/LinearLayout;

    .line 112
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->llRowRemarks:Landroid/widget/LinearLayout;

    .line 114
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->webView:Landroid/webkit/WebView;

    .line 115
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->llRowMiscScroll:Landroid/widget/ScrollView;

    .line 117
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    .line 118
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrNotice:Landroid/widget/TextView;

    .line 119
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrFloor:Landroid/widget/EditText;

    .line 120
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrFlat:Landroid/widget/EditText;

    .line 121
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrRemarks:Landroid/widget/EditText;

    .line 123
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->lbKeyword:Landroid/widget/TextView;

    .line 124
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->lbLoading:Landroid/widget/TextView;

    .line 133
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->btnSearch:Landroid/widget/ImageButton;

    .line 134
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->btnClear:Landroid/widget/ImageButton;

    .line 135
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->btnGPS:Landroid/widget/ImageButton;

    .line 137
    const-string v0, "^&^TR#^%FEG@^Tft8q3T@Hgfv6t"

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sSysHash:Ljava/lang/String;

    .line 141
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sCurrLot:Ljava/lang/String;

    .line 142
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sCurrDau:Ljava/lang/String;

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sHandler:Landroid/os/Handler;

    .line 144
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sRunnable:Ljava/lang/Runnable;

    .line 145
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sTimeoutSearchRun:Ljava/lang/Runnable;

    .line 146
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sTimeoutVerifyRun:Ljava/lang/Runnable;

    .line 147
    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sTimeoutGPSRun:Ljava/lang/Runnable;

    .line 149
    sput v3, Lhk/com/aisoft/easyaddrui/eaView;->sSpinnerChangeCnt:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 153
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lhk/com/aisoft/easyaddrui/eaView;->sLastScrollCnt:I

    .line 139
    invoke-virtual {p0}, Lhk/com/aisoft/easyaddrui/eaView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/eaView;->res:Landroid/content/res/Resources;

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/eaView;->sAddrBeforeEdit:Ljava/lang/String;

    .line 155
    sput-object p1, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    .line 157
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEABundle:Ljava/lang/String;

    .line 158
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEAMode:Ljava/lang/String;

    .line 159
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEACurX:Ljava/lang/Double;

    .line 160
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEACurY:Ljava/lang/Double;

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "sAttrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, 0x0

    .line 165
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lhk/com/aisoft/easyaddrui/eaView;->sLastScrollCnt:I

    .line 139
    invoke-virtual {p0}, Lhk/com/aisoft/easyaddrui/eaView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/eaView;->res:Landroid/content/res/Resources;

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lhk/com/aisoft/easyaddrui/eaView;->sAddrBeforeEdit:Ljava/lang/String;

    .line 167
    sput-object p1, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    .line 169
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEABundle:Ljava/lang/String;

    .line 170
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEAMode:Ljava/lang/String;

    .line 171
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEACurX:Ljava/lang/Double;

    .line 172
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEACurY:Ljava/lang/Double;

    .line 174
    return-void
.end method

.method public static LevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 14
    .param p0, "lhs"    # Ljava/lang/CharSequence;
    .param p1, "rhs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v11, 0x0

    .line 865
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v12

    add-int/lit8 v6, v12, 0x1

    .line 866
    .local v6, "len0":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    add-int/lit8 v7, v12, 0x1

    .line 869
    .local v7, "len1":I
    new-array v0, v6, [I

    .line 870
    .local v0, "cost":[I
    new-array v9, v6, [I

    .line 873
    .local v9, "newcost":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_0

    aput v4, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 878
    :cond_0
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_1
    if-ge v5, v7, :cond_3

    .line 880
    aput v5, v9, v11

    .line 883
    const/4 v4, 0x1

    :goto_2
    if-ge v4, v6, :cond_2

    .line 885
    add-int/lit8 v12, v4, -0x1

    invoke-interface {p0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    add-int/lit8 v13, v5, -0x1

    invoke-interface {p1, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v12, v13, :cond_1

    move v8, v11

    .line 888
    .local v8, "match":I
    :goto_3
    add-int/lit8 v12, v4, -0x1

    aget v12, v0, v12

    add-int v3, v12, v8

    .line 889
    .local v3, "cost_replace":I
    aget v12, v0, v4

    add-int/lit8 v2, v12, 0x1

    .line 890
    .local v2, "cost_insert":I
    add-int/lit8 v12, v4, -0x1

    aget v12, v9, v12

    add-int/lit8 v1, v12, 0x1

    .line 893
    .local v1, "cost_delete":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, v9, v4

    .line 883
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 885
    .end local v1    # "cost_delete":I
    .end local v2    # "cost_insert":I
    .end local v3    # "cost_replace":I
    .end local v8    # "match":I
    :cond_1
    const/4 v8, 0x1

    goto :goto_3

    .line 897
    :cond_2
    move-object v10, v0

    .line 898
    .local v10, "swap":[I
    move-object v0, v9

    .line 899
    move-object v9, v10

    .line 878
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 903
    .end local v10    # "swap":[I
    :cond_3
    add-int/lit8 v11, v6, -0x1

    aget v11, v0, v11

    return v11
.end method

.method static synthetic access$000(Lhk/com/aisoft/easyaddrui/eaView;)V
    .locals 0
    .param p0, "x0"    # Lhk/com/aisoft/easyaddrui/eaView;

    .prologue
    .line 46
    invoke-direct {p0}, Lhk/com/aisoft/easyaddrui/eaView;->initialize()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 46
    invoke-static {}, Lhk/com/aisoft/easyaddrui/eaView;->getStartupLoad()V

    return-void
.end method

.method public static btnCompletePressAction()Z
    .locals 1

    .prologue
    .line 974
    const/4 v0, 0x1

    return v0
.end method

.method public static btnConfirmPressAction()Z
    .locals 1

    .prologue
    .line 978
    const/4 v0, 0x1

    return v0
.end method

.method public static btnSavePressAction()Z
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 907
    sget-boolean v10, Lhk/com/aisoft/easyaddrui/eaView;->eaNetErr:Z

    if-eqz v10, :cond_1

    .line 908
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    const-string v11, "zh-HK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 909
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v11, Lhk/com/aisoft/easyaddrui/eaView;->lbNetworkErrorC:Ljava/lang/String;

    invoke-static {v10, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 968
    :goto_0
    return v9

    .line 911
    :cond_0
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v11, Lhk/com/aisoft/easyaddrui/eaView;->lbNetworkErrorE:Ljava/lang/String;

    invoke-static {v10, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 916
    :cond_1
    :try_start_0
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sCode:Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 917
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    sget-object v11, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrFloor:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    .line 918
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    sget-object v11, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrFlat:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    .line 919
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    sget-object v11, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrRemarks:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lhk/com/aisoft/easyaddrui/Address;->sRemarks:Ljava/lang/String;

    .line 921
    const-string v8, "\u865f"

    .line 922
    .local v8, "tmpStreetNoLabelC":Ljava/lang/String;
    const-string v2, "\u5ea7"

    .line 923
    .local v2, "tmpBlockLabelC":Ljava/lang/String;
    const-string v3, "BLOCK"

    .line 924
    .local v3, "tmpBlockLabelE":Ljava/lang/String;
    const-string v6, "\u6a13"

    .line 925
    .local v6, "tmpFloorLabelC":Ljava/lang/String;
    const-string v7, "FLOOR"

    .line 926
    .local v7, "tmpFloorLabelE":Ljava/lang/String;
    const-string v4, "\u5ba4"

    .line 927
    .local v4, "tmpFlatLabelC":Ljava/lang/String;
    const-string v5, "FLAT"

    .line 929
    .local v5, "tmpFlatLabelE":Ljava/lang/String;
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    const-string v11, "zh-HK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 930
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/Address;->sStreetNo:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 931
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v12, v12, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v12, v12, Lhk/com/aisoft/easyaddrui/Address;->sStreetNo:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lhk/com/aisoft/easyaddrui/Address;->sStreetNo:Ljava/lang/String;

    .line 932
    :cond_2
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/Address;->sBlockC:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 933
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v12, v12, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v12, v12, Lhk/com/aisoft/easyaddrui/Address;->sBlockC:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lhk/com/aisoft/easyaddrui/Address;->sBlockC:Ljava/lang/String;

    .line 934
    :cond_3
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 935
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v12, v12, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v12, v12, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    .line 936
    :cond_4
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 937
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v12, v12, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v12, v12, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    :cond_5
    :goto_1
    :try_start_1
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    const-string v11, "input_method"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 948
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 951
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_2
    :try_start_2
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sConfirmCallbackInterface:Lhk/com/aisoft/easyaddrui/ConfirmCallbackInterface;

    sget-object v11, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v11, v11, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    sget-object v12, Lhk/com/aisoft/easyaddrui/eaView;->sCustomer:Lhk/com/aisoft/easyaddrui/Customer;

    invoke-interface {v10, v11, v12}, Lhk/com/aisoft/easyaddrui/ConfirmCallbackInterface;->onConfirmPress(Lhk/com/aisoft/easyaddrui/Address;Lhk/com/aisoft/easyaddrui/Customer;)V

    .line 952
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 939
    :cond_6
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/Address;->sBlockE:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 940
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v12, v12, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v12, v12, Lhk/com/aisoft/easyaddrui/Address;->sBlockE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lhk/com/aisoft/easyaddrui/Address;->sBlockE:Ljava/lang/String;

    .line 941
    :cond_7
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 942
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v12, v12, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v12, v12, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lhk/com/aisoft/easyaddrui/Address;->sFloor:Ljava/lang/String;

    .line 943
    :cond_8
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 944
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v12, v12, Lhk/com/aisoft/easyaddrui/AddressReturn;->sAddress:Lhk/com/aisoft/easyaddrui/Address;

    iget-object v12, v12, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lhk/com/aisoft/easyaddrui/Address;->sFlat:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    .end local v2    # "tmpBlockLabelC":Ljava/lang/String;
    .end local v3    # "tmpBlockLabelE":Ljava/lang/String;
    .end local v4    # "tmpFlatLabelC":Ljava/lang/String;
    .end local v5    # "tmpFlatLabelE":Ljava/lang/String;
    .end local v6    # "tmpFloorLabelC":Ljava/lang/String;
    .end local v7    # "tmpFloorLabelE":Ljava/lang/String;
    .end local v8    # "tmpStreetNoLabelC":Ljava/lang/String;
    sget-object v11, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v11, Lhk/com/aisoft/easyaddrui/SysParameter;->msgNoAddrSel:Ljava/lang/String;

    invoke-static {v10, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 953
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_9
    :try_start_3
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v10, v10, Lhk/com/aisoft/easyaddrui/AddressReturn;->sCode:Ljava/lang/String;

    const-string v11, "-4005"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v10

    if-eqz v10, :cond_a

    .line 955
    :try_start_4
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    const-string v11, "input_method"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 956
    .restart local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 960
    :goto_3
    :try_start_5
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v11, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v11, Lhk/com/aisoft/easyaddrui/SysParameter;->msgAddrOOB:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 963
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_a
    sget-object v10, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v11, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v11, Lhk/com/aisoft/easyaddrui/SysParameter;->msgNoAddrSel:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 957
    .restart local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catch_1
    move-exception v10

    goto :goto_3

    .line 949
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v2    # "tmpBlockLabelC":Ljava/lang/String;
    .restart local v3    # "tmpBlockLabelE":Ljava/lang/String;
    .restart local v4    # "tmpFlatLabelC":Ljava/lang/String;
    .restart local v5    # "tmpFlatLabelE":Ljava/lang/String;
    .restart local v6    # "tmpFloorLabelC":Ljava/lang/String;
    .restart local v7    # "tmpFloorLabelE":Ljava/lang/String;
    .restart local v8    # "tmpStreetNoLabelC":Ljava/lang/String;
    :catch_2
    move-exception v10

    goto/16 :goto_2
.end method

.method private static getStartupGPSLoad()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 786
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v2, Lhk/com/aisoft/easyaddrui/SysParameter;->msgLoadingGPS:Ljava/lang/String;

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v3, Lhk/com/aisoft/easyaddrui/SysParameter;->msgPleaseWait:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 787
    .local v0, "sProgressDialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 788
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lhk/com/aisoft/easyaddrui/eaView$21;

    invoke-direct {v2, v0}, Lhk/com/aisoft/easyaddrui/eaView$21;-><init>(Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 802
    return-void
.end method

.method private static getStartupLoad()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 766
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v2, Lhk/com/aisoft/easyaddrui/SysParameter;->msgLoading:Ljava/lang/String;

    sget-object v3, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v3, Lhk/com/aisoft/easyaddrui/SysParameter;->msgPleaseWait:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 767
    .local v0, "sProgressDialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 768
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lhk/com/aisoft/easyaddrui/eaView$20;

    invoke-direct {v2, v0}, Lhk/com/aisoft/easyaddrui/eaView$20;-><init>(Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 782
    return-void
.end method

.method private initialize()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 261
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget v1, Lhk/com/aisoft/easyaddrui/R$layout;->ea_view:I

    invoke-static {v0, v1, p0}, Lhk/com/aisoft/easyaddrui/eaView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 263
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v0, Lhk/com/aisoft/easyaddrui/SysParameter;->msgAddrNotFind:Ljava/lang/String;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbNoAddrFound:Ljava/lang/String;

    .line 264
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v0, Lhk/com/aisoft/easyaddrui/SysParameter;->msgLocNotFind:Ljava/lang/String;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbNoGPSFound:Ljava/lang/String;

    .line 266
    const-string v0, "F"

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sListMode:Ljava/lang/String;

    .line 268
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sCurrLot:Ljava/lang/String;

    .line 269
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sCurrDau:Ljava/lang/String;

    .line 270
    new-instance v0, Lhk/com/aisoft/easyaddrui/AddressReturn;

    invoke-direct {v0}, Lhk/com/aisoft/easyaddrui/AddressReturn;-><init>()V

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    .line 271
    new-instance v0, Lhk/com/aisoft/easyaddrui/Customer;

    invoke-direct {v0}, Lhk/com/aisoft/easyaddrui/Customer;-><init>()V

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sCustomer:Lhk/com/aisoft/easyaddrui/Customer;

    .line 273
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->webView:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->webView:Landroid/webkit/WebView;

    .line 275
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->llSearch:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->llSearch:Landroid/widget/LinearLayout;

    .line 276
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->llRowMisc:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->llAddrMisc:Landroid/widget/LinearLayout;

    .line 277
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->llAddrWarn:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->llAddrWarn:Landroid/widget/LinearLayout;

    .line 278
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->llRowMiscScroll:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->llRowMiscScroll:Landroid/widget/ScrollView;

    .line 280
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->llRowKey:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->llRowKey:Landroid/widget/LinearLayout;

    .line 281
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->llRowKey:Landroid/widget/LinearLayout;

    new-instance v1, Lhk/com/aisoft/easyaddrui/eaView$2;

    invoke-direct {v1, p0}, Lhk/com/aisoft/easyaddrui/eaView$2;-><init>(Lhk/com/aisoft/easyaddrui/eaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->llRowFloor:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->llRowFloor:Landroid/widget/LinearLayout;

    .line 290
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->llRowFloor:Landroid/widget/LinearLayout;

    new-instance v1, Lhk/com/aisoft/easyaddrui/eaView$3;

    invoke-direct {v1, p0}, Lhk/com/aisoft/easyaddrui/eaView$3;-><init>(Lhk/com/aisoft/easyaddrui/eaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->llRowFlat:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->llRowFlat:Landroid/widget/LinearLayout;

    .line 297
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->llRowFlat:Landroid/widget/LinearLayout;

    new-instance v1, Lhk/com/aisoft/easyaddrui/eaView$4;

    invoke-direct {v1, p0}, Lhk/com/aisoft/easyaddrui/eaView$4;-><init>(Lhk/com/aisoft/easyaddrui/eaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->llRowRemarks:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->llRowRemarks:Landroid/widget/LinearLayout;

    .line 304
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->llRowRemarks:Landroid/widget/LinearLayout;

    new-instance v1, Lhk/com/aisoft/easyaddrui/eaView$5;

    invoke-direct {v1, p0}, Lhk/com/aisoft/easyaddrui/eaView$5;-><init>(Lhk/com/aisoft/easyaddrui/eaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->lbKeyword:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbKeyword:Landroid/widget/TextView;

    .line 312
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->lbAddrNotice:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbAddrNotice:Landroid/widget/TextView;

    .line 313
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->lbAddrFloor:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbAddrFloor:Landroid/widget/TextView;

    .line 314
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->lbAddrFlat:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbAddrFlat:Landroid/widget/TextView;

    .line 315
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->lbAddrRemarks:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbAddrRemarks:Landroid/widget/TextView;

    .line 316
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->lbLoading:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbLoading:Landroid/widget/TextView;

    .line 317
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->lbAddrWarn:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbAddrWarn:Landroid/widget/TextView;

    .line 319
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbAddrWarn:Landroid/widget/TextView;

    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v1, Lhk/com/aisoft/easyaddrui/SysParameter;->msgWarnOOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbLoading:Landroid/widget/TextView;

    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v1, Lhk/com/aisoft/easyaddrui/SysParameter;->msgLoading:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbAddrNotice:Landroid/widget/TextView;

    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v1, Lhk/com/aisoft/easyaddrui/SysParameter;->lbFormNotice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbAddrFloor:Landroid/widget/TextView;

    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v1, Lhk/com/aisoft/easyaddrui/SysParameter;->lbFormFloor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbAddrFloor:Landroid/widget/TextView;

    new-instance v1, Lhk/com/aisoft/easyaddrui/eaView$6;

    invoke-direct {v1, p0}, Lhk/com/aisoft/easyaddrui/eaView$6;-><init>(Lhk/com/aisoft/easyaddrui/eaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 332
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbAddrFlat:Landroid/widget/TextView;

    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v1, Lhk/com/aisoft/easyaddrui/SysParameter;->lbFormFlat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbAddrFlat:Landroid/widget/TextView;

    new-instance v1, Lhk/com/aisoft/easyaddrui/eaView$7;

    invoke-direct {v1, p0}, Lhk/com/aisoft/easyaddrui/eaView$7;-><init>(Lhk/com/aisoft/easyaddrui/eaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 341
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbAddrRemarks:Landroid/widget/TextView;

    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v1, Lhk/com/aisoft/easyaddrui/SysParameter;->lbFormRemarks:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbAddrRemarks:Landroid/widget/TextView;

    new-instance v1, Lhk/com/aisoft/easyaddrui/eaView$8;

    invoke-direct {v1, p0}, Lhk/com/aisoft/easyaddrui/eaView$8;-><init>(Lhk/com/aisoft/easyaddrui/eaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 350
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbKeyword:Landroid/widget/TextView;

    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v1, Lhk/com/aisoft/easyaddrui/SysParameter;->lbFormKeyAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->txtAddrNotice:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrNotice:Landroid/widget/TextView;

    .line 352
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->txtAddrFloor:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrFloor:Landroid/widget/EditText;

    .line 353
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->txtAddrFlat:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrFlat:Landroid/widget/EditText;

    .line 354
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->txtAddrRemarks:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->txtAddrRemarks:Landroid/widget/EditText;

    .line 356
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->listResult:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->listResult:Landroid/widget/ListView;

    .line 357
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->listResult:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 358
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->listResult:Landroid/widget/ListView;

    new-instance v1, Lhk/com/aisoft/easyaddrui/eaView$9;

    invoke-direct {v1, p0}, Lhk/com/aisoft/easyaddrui/eaView$9;-><init>(Lhk/com/aisoft/easyaddrui/eaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 480
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->listResult:Landroid/widget/ListView;

    new-instance v1, Lhk/com/aisoft/easyaddrui/eaView$10;

    invoke-direct {v1, p0}, Lhk/com/aisoft/easyaddrui/eaView$10;-><init>(Lhk/com/aisoft/easyaddrui/eaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 527
    new-instance v0, Lhk/com/aisoft/easyaddrui/eaView$11;

    invoke-direct {v0, p0}, Lhk/com/aisoft/easyaddrui/eaView$11;-><init>(Lhk/com/aisoft/easyaddrui/eaView;)V

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sRunnable:Ljava/lang/Runnable;

    .line 536
    new-instance v0, Lhk/com/aisoft/easyaddrui/eaView$12;

    invoke-direct {v0, p0}, Lhk/com/aisoft/easyaddrui/eaView$12;-><init>(Lhk/com/aisoft/easyaddrui/eaView;)V

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sTimeoutSearchRun:Ljava/lang/Runnable;

    .line 542
    new-instance v0, Lhk/com/aisoft/easyaddrui/eaView$13;

    invoke-direct {v0, p0}, Lhk/com/aisoft/easyaddrui/eaView$13;-><init>(Lhk/com/aisoft/easyaddrui/eaView;)V

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sTimeoutVerifyRun:Ljava/lang/Runnable;

    .line 548
    new-instance v0, Lhk/com/aisoft/easyaddrui/eaView$14;

    invoke-direct {v0, p0}, Lhk/com/aisoft/easyaddrui/eaView$14;-><init>(Lhk/com/aisoft/easyaddrui/eaView;)V

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sTimeoutGPSRun:Ljava/lang/Runnable;

    .line 554
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->txtEAKeyword:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    .line 555
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    new-instance v1, Lhk/com/aisoft/easyaddrui/eaView$15;

    invoke-direct {v1, p0}, Lhk/com/aisoft/easyaddrui/eaView$15;-><init>(Lhk/com/aisoft/easyaddrui/eaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 586
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    new-instance v1, Lhk/com/aisoft/easyaddrui/eaView$16;

    invoke-direct {v1, p0}, Lhk/com/aisoft/easyaddrui/eaView$16;-><init>(Lhk/com/aisoft/easyaddrui/eaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 601
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v1, Lhk/com/aisoft/easyaddrui/SysParameter;->lbKeyInputHints:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 603
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->btnSearch:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->btnSearch:Landroid/widget/ImageButton;

    .line 604
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->btnSearch:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 605
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->btnSearch:Landroid/widget/ImageButton;

    new-instance v1, Lhk/com/aisoft/easyaddrui/eaView$17;

    invoke-direct {v1, p0}, Lhk/com/aisoft/easyaddrui/eaView$17;-><init>(Lhk/com/aisoft/easyaddrui/eaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->btnClear:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->btnClear:Landroid/widget/ImageButton;

    .line 630
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->btnClear:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 631
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->btnClear:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 632
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->btnClear:Landroid/widget/ImageButton;

    new-instance v1, Lhk/com/aisoft/easyaddrui/eaView$18;

    invoke-direct {v1, p0}, Lhk/com/aisoft/easyaddrui/eaView$18;-><init>(Lhk/com/aisoft/easyaddrui/eaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->btnClear:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->callOnClick()Z

    .line 664
    sget v0, Lhk/com/aisoft/easyaddrui/R$id;->btnGPS:I

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->btnGPS:Landroid/widget/ImageButton;

    .line 665
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->btnGPS:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 666
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->btnGPS:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 667
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->btnGPS:Landroid/widget/ImageButton;

    new-instance v1, Lhk/com/aisoft/easyaddrui/eaView$19;

    invoke-direct {v1, p0}, Lhk/com/aisoft/easyaddrui/eaView$19;-><init>(Lhk/com/aisoft/easyaddrui/eaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    if-nez v0, :cond_3

    .line 697
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEACurX:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_2

    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEACurY:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_2

    .line 698
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 699
    .local v6, "permission":I
    if-nez v6, :cond_1

    .line 701
    :try_start_0
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sResponse:Ljava/lang/String;

    .line 702
    new-instance v0, Lhk/com/aisoft/easyaddrui/GPSListener;

    invoke-direct {v0}, Lhk/com/aisoft/easyaddrui/GPSListener;-><init>()V

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sLocationListener:Landroid/location/LocationListener;

    .line 703
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sLocationManager:Landroid/location/LocationManager;

    .line 704
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 705
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sLocation:Landroid/location/Location;

    .line 706
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 707
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sput-wide v0, Lhk/com/aisoft/easyaddrui/eaView;->sGPSY:D

    .line 708
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Lhk/com/aisoft/easyaddrui/eaView;->sGPSX:D

    .line 709
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEAMode:Ljava/lang/String;

    const-string v1, "GPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    const-string v0, "F"

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sListMode:Ljava/lang/String;

    .line 711
    invoke-static {}, Lhk/com/aisoft/easyaddrui/ResponseTrigger;->btnGPSPressAction()V

    .line 712
    invoke-static {}, Lhk/com/aisoft/easyaddrui/eaView;->getStartupGPSLoad()V

    .line 720
    :cond_0
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x41200000    # 10.0f

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 721
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x41200000    # 10.0f

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    .end local v6    # "permission":I
    :goto_0
    return-void

    .line 725
    .restart local v6    # "permission":I
    :cond_1
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v1, Lhk/com/aisoft/easyaddrui/SysParameter;->mgsGPSNotSupport:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 735
    .end local v6    # "permission":I
    :cond_2
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEACurX:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sput-wide v0, Lhk/com/aisoft/easyaddrui/eaView;->sGPSX:D

    .line 736
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEACurY:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sput-wide v0, Lhk/com/aisoft/easyaddrui/eaView;->sGPSY:D

    .line 737
    const-string v0, "F"

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sListMode:Ljava/lang/String;

    .line 738
    invoke-static {}, Lhk/com/aisoft/easyaddrui/ResponseTrigger;->btnGPSPressAction()V

    .line 739
    invoke-static {}, Lhk/com/aisoft/easyaddrui/eaView;->getStartupGPSLoad()V

    goto :goto_0

    .line 742
    :cond_3
    const-string v0, "M"

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sListMode:Ljava/lang/String;

    .line 743
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    invoke-virtual {p0, v0}, Lhk/com/aisoft/easyaddrui/eaView;->getVerify(Lhk/com/aisoft/easyaddrui/Address;)V

    .line 744
    invoke-static {}, Lhk/com/aisoft/easyaddrui/eaView;->getStartupLoad()V

    goto :goto_0

    .line 722
    .restart local v6    # "permission":I
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static random(I)Ljava/lang/String;
    .locals 6
    .param p0, "sLen"    # I

    .prologue
    .line 854
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 855
    .local v1, "chars":[C
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 856
    .local v4, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 857
    .local v3, "random":Ljava/util/Random;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 858
    array-length v5, v1

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v0, v1, v5

    .line 859
    .local v0, "c":C
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 857
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 861
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public getStore(Lhk/com/aisoft/easyaddrui/Address;Lhk/com/aisoft/easyaddrui/GetStoreCallbackInterface;)V
    .locals 7
    .param p1, "sAddress"    # Lhk/com/aisoft/easyaddrui/Address;
    .param p2, "mGetStoreCallbackInterface"    # Lhk/com/aisoft/easyaddrui/GetStoreCallbackInterface;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 821
    sput-object p2, Lhk/com/aisoft/easyaddrui/eaView;->sGetStoreCallbackInterface:Lhk/com/aisoft/easyaddrui/GetStoreCallbackInterface;

    .line 823
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sEAUAT:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 824
    const-string v1, "192.1.1.121"

    sput-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    .line 829
    :goto_0
    new-instance v0, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;

    invoke-direct {v0, p1}, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;-><init>(Lhk/com/aisoft/easyaddrui/Address;)V

    .line 830
    .local v0, "dlTask":Lhk/com/aisoft/easyaddrui/DownloadGSSearch;
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sEAUAT:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 831
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/eaView;->res:Landroid/content/res/Resources;

    sget v4, Lhk/com/aisoft/easyaddrui/R$string;->uat_get_store:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[DOMAIN]"

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    instance-of v3, v0, Landroid/os/AsyncTask;

    if-nez v3, :cond_1

    invoke-virtual {v0, v1, v2}, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 835
    .end local v0    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadGSSearch;
    :goto_1
    return-void

    .line 826
    :cond_0
    const-string v1, "address.aisoft.hk"

    sput-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    goto :goto_0

    .line 831
    .restart local v0    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadGSSearch;
    :cond_1
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadGSSearch;
    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 833
    .restart local v0    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadGSSearch;
    :cond_2
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/eaView;->res:Landroid/content/res/Resources;

    sget v4, Lhk/com/aisoft/easyaddrui/R$string;->url_get_store:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[DOMAIN]"

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    instance-of v3, v0, Landroid/os/AsyncTask;

    if-nez v3, :cond_3

    invoke-virtual {v0, v1, v2}, Lhk/com/aisoft/easyaddrui/DownloadGSSearch;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_3
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadGSSearch;
    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public getVerify(Lhk/com/aisoft/easyaddrui/Address;)V
    .locals 7
    .param p1, "mAddr"    # Lhk/com/aisoft/easyaddrui/Address;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 805
    sput-boolean v6, Lhk/com/aisoft/easyaddrui/eaView;->sReqBack:Z

    .line 806
    sput-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseQK:Lhk/com/aisoft/easyaddrui/ResponseQK;

    .line 807
    sput-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sResponseAM:Lhk/com/aisoft/easyaddrui/ResponseQK;

    .line 808
    sput v6, Lhk/com/aisoft/easyaddrui/eaView;->sEATimeoutCnt:I

    .line 810
    new-instance v0, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;

    invoke-direct {v0, p1}, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;-><init>(Lhk/com/aisoft/easyaddrui/Address;)V

    .line 811
    .local v0, "dlTask":Lhk/com/aisoft/easyaddrui/DownloadManualAddr;
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sEAUAT:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 812
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/eaView;->res:Landroid/content/res/Resources;

    sget v4, Lhk/com/aisoft/easyaddrui/R$string;->uat_get_manual:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[DOMAIN]"

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    instance-of v3, v0, Landroid/os/AsyncTask;

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v2}, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 816
    .end local v0    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadManualAddr;
    :goto_0
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sHandler:Landroid/os/Handler;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sTimeoutVerifyRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 817
    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sHandler:Landroid/os/Handler;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sTimeoutVerifyRun:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 818
    return-void

    .line 812
    .restart local v0    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadManualAddr;
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadManualAddr;
    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 814
    .restart local v0    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadManualAddr;
    :cond_1
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/eaView;->res:Landroid/content/res/Resources;

    sget v4, Lhk/com/aisoft/easyaddrui/R$string;->url_get_manual:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[DOMAIN]"

    sget-object v5, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    instance-of v3, v0, Landroid/os/AsyncTask;

    if-nez v3, :cond_2

    invoke-virtual {v0, v1, v2}, Lhk/com/aisoft/easyaddrui/DownloadManualAddr;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "dlTask":Lhk/com/aisoft/easyaddrui/DownloadManualAddr;
    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public loadEAView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "mKey"    # Ljava/lang/String;
    .param p2, "mLang"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 177
    sput-boolean v8, Lhk/com/aisoft/easyaddrui/eaView;->eaNetErr:Z

    .line 179
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sEAUAT:Ljava/lang/String;

    const-string v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const-string v2, "192.1.1.121"

    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    .line 185
    :goto_0
    new-instance v0, Lhk/com/aisoft/easyaddrui/DownloadUIAccess;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sEAKey:Ljava/lang/String;

    invoke-direct {v0, v2}, Lhk/com/aisoft/easyaddrui/DownloadUIAccess;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "dlTask1":Lhk/com/aisoft/easyaddrui/DownloadUIAccess;
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sEAUAT:Ljava/lang/String;

    const-string v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v7, [Ljava/lang/String;

    iget-object v4, p0, Lhk/com/aisoft/easyaddrui/eaView;->res:Landroid/content/res/Resources;

    sget v5, Lhk/com/aisoft/easyaddrui/R$string;->uat_get_ui:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[DOMAIN]"

    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    instance-of v4, v0, Landroid/os/AsyncTask;

    if-nez v4, :cond_1

    invoke-virtual {v0, v2, v3}, Lhk/com/aisoft/easyaddrui/DownloadUIAccess;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 192
    .end local v0    # "dlTask1":Lhk/com/aisoft/easyaddrui/DownloadUIAccess;
    :goto_1
    sput-object p1, Lhk/com/aisoft/easyaddrui/eaView;->sEAKey:Ljava/lang/String;

    .line 193
    sput-object p2, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    .line 194
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sEAKey:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 195
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    const-string v3, "No Key is found"

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 240
    :goto_2
    return-void

    .line 182
    :cond_0
    const-string v2, "address.aisoft.hk"

    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    goto :goto_0

    .line 187
    .restart local v0    # "dlTask1":Lhk/com/aisoft/easyaddrui/DownloadUIAccess;
    :cond_1
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "dlTask1":Lhk/com/aisoft/easyaddrui/DownloadUIAccess;
    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 189
    .restart local v0    # "dlTask1":Lhk/com/aisoft/easyaddrui/DownloadUIAccess;
    :cond_2
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v7, [Ljava/lang/String;

    iget-object v4, p0, Lhk/com/aisoft/easyaddrui/eaView;->res:Landroid/content/res/Resources;

    sget v5, Lhk/com/aisoft/easyaddrui/R$string;->url_get_ui:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[DOMAIN]"

    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    instance-of v4, v0, Landroid/os/AsyncTask;

    if-nez v4, :cond_3

    invoke-virtual {v0, v2, v3}, Lhk/com/aisoft/easyaddrui/DownloadUIAccess;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_3
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "dlTask1":Lhk/com/aisoft/easyaddrui/DownloadUIAccess;
    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 197
    :cond_4
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sEAKey:Ljava/lang/String;

    const-string v3, "g0nk7afhDhSUYFjkf78s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 198
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    const-string v3, "Invalid Key is found"

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 201
    :cond_5
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    const-string v3, "zh-HK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 209
    :cond_6
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    const-string v3, "zh-HK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 210
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    const-string v2, "\u8f38\u5165\u7684\u5730\u5740\u4e0d\u5728\u9001\u9910\u7bc4\u570d\u5167\u3002"

    sput-object v2, Lhk/com/aisoft/easyaddrui/SysParameter;->msgWarnOOB:Ljava/lang/String;

    .line 211
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    const-string v2, "\u9001\u9910\u5730\u5740"

    sput-object v2, Lhk/com/aisoft/easyaddrui/SysParameter;->lbFormKeyAddr:Ljava/lang/String;

    .line 212
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    const-string v2, "\u6a13\u5c64"

    sput-object v2, Lhk/com/aisoft/easyaddrui/SysParameter;->lbFormFloor:Ljava/lang/String;

    .line 213
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    const-string v2, "\u55ae\u4f4d"

    sput-object v2, Lhk/com/aisoft/easyaddrui/SysParameter;->lbFormFlat:Ljava/lang/String;

    .line 214
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    const-string v2, "\u5730\u5740\u5099\u6ce8"

    sput-object v2, Lhk/com/aisoft/easyaddrui/SysParameter;->lbFormNotice:Ljava/lang/String;

    .line 215
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    const-string v2, "\u9001\u9910\u8981\u6c42"

    sput-object v2, Lhk/com/aisoft/easyaddrui/SysParameter;->lbFormRemarks:Ljava/lang/String;

    .line 216
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    const-string v2, "\u8f09\u5165\u4e2d\u2026"

    sput-object v2, Lhk/com/aisoft/easyaddrui/SysParameter;->msgLoading:Ljava/lang/String;

    .line 217
    const-string v2, "\u7121\u6cd5\u9023\u63a5\uff0c\u8acb\u7a0d\u5f8c\u518d\u8a66\u3002"

    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->lbNetworkErrorC:Ljava/lang/String;

    .line 229
    :goto_3
    new-instance v1, Lhk/com/aisoft/easyaddrui/DownloadParaAccess;

    new-instance v2, Lhk/com/aisoft/easyaddrui/eaView$1;

    invoke-direct {v2, p0}, Lhk/com/aisoft/easyaddrui/eaView$1;-><init>(Lhk/com/aisoft/easyaddrui/eaView;)V

    invoke-direct {v1, v2}, Lhk/com/aisoft/easyaddrui/DownloadParaAccess;-><init>(Lhk/com/aisoft/easyaddrui/SysParaCallbackInterface;)V

    .line 235
    .local v1, "dlTask2":Lhk/com/aisoft/easyaddrui/DownloadParaAccess;
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sEAUAT:Ljava/lang/String;

    const-string v3, "Y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 236
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v7, [Ljava/lang/String;

    iget-object v4, p0, Lhk/com/aisoft/easyaddrui/eaView;->res:Landroid/content/res/Resources;

    sget v5, Lhk/com/aisoft/easyaddrui/R$string;->uat_get_para:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[DOMAIN]"

    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    instance-of v4, v1, Landroid/os/AsyncTask;

    if-nez v4, :cond_9

    invoke-virtual {v1, v2, v3}, Lhk/com/aisoft/easyaddrui/DownloadParaAccess;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 202
    .end local v1    # "dlTask2":Lhk/com/aisoft/easyaddrui/DownloadParaAccess;
    :cond_7
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    const-string v3, "en-HK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 204
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    const-string v3, "Invalid Language Setting"

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 219
    :cond_8
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    const-string v2, "The address is not within our delivery zone."

    sput-object v2, Lhk/com/aisoft/easyaddrui/SysParameter;->msgWarnOOB:Ljava/lang/String;

    .line 220
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    const-string v2, "Address"

    sput-object v2, Lhk/com/aisoft/easyaddrui/SysParameter;->lbFormKeyAddr:Ljava/lang/String;

    .line 221
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    const-string v2, "Floor"

    sput-object v2, Lhk/com/aisoft/easyaddrui/SysParameter;->lbFormFloor:Ljava/lang/String;

    .line 222
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    const-string v2, "Flat"

    sput-object v2, Lhk/com/aisoft/easyaddrui/SysParameter;->lbFormFlat:Ljava/lang/String;

    .line 223
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    const-string v2, "Address Remarks"

    sput-object v2, Lhk/com/aisoft/easyaddrui/SysParameter;->lbFormNotice:Ljava/lang/String;

    .line 224
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    const-string v2, "Delivery Instructions"

    sput-object v2, Lhk/com/aisoft/easyaddrui/SysParameter;->lbFormRemarks:Ljava/lang/String;

    .line 225
    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    const-string v2, "Loading\u2026"

    sput-object v2, Lhk/com/aisoft/easyaddrui/SysParameter;->msgLoading:Ljava/lang/String;

    .line 226
    const-string v2, "No network connection available. Please check your connection status."

    sput-object v2, Lhk/com/aisoft/easyaddrui/eaView;->lbNetworkErrorE:Ljava/lang/String;

    goto :goto_3

    .line 236
    .restart local v1    # "dlTask2":Lhk/com/aisoft/easyaddrui/DownloadParaAccess;
    :cond_9
    check-cast v1, Landroid/os/AsyncTask;

    .end local v1    # "dlTask2":Lhk/com/aisoft/easyaddrui/DownloadParaAccess;
    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 238
    .restart local v1    # "dlTask2":Lhk/com/aisoft/easyaddrui/DownloadParaAccess;
    :cond_a
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v7, [Ljava/lang/String;

    iget-object v4, p0, Lhk/com/aisoft/easyaddrui/eaView;->res:Landroid/content/res/Resources;

    sget v5, Lhk/com/aisoft/easyaddrui/R$string;->url_get_para:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[DOMAIN]"

    sget-object v6, Lhk/com/aisoft/easyaddrui/eaView;->sDomain:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    instance-of v4, v1, Landroid/os/AsyncTask;

    if-nez v4, :cond_b

    invoke-virtual {v1, v2, v3}, Lhk/com/aisoft/easyaddrui/DownloadParaAccess;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    :cond_b
    check-cast v1, Landroid/os/AsyncTask;

    .end local v1    # "dlTask2":Lhk/com/aisoft/easyaddrui/DownloadParaAccess;
    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2
.end method

.method public setCompleteCallBack(Lhk/com/aisoft/easyaddrui/CompleteCallbackInterface;)V
    .locals 0
    .param p1, "mCompleteCallbackInterface"    # Lhk/com/aisoft/easyaddrui/CompleteCallbackInterface;

    .prologue
    .line 846
    sput-object p1, Lhk/com/aisoft/easyaddrui/eaView;->sCompleteCallbackInterface:Lhk/com/aisoft/easyaddrui/CompleteCallbackInterface;

    .line 847
    return-void
.end method

.method public setConfirmCallBack(Lhk/com/aisoft/easyaddrui/ConfirmCallbackInterface;)V
    .locals 0
    .param p1, "mConfirmCallbackInterface"    # Lhk/com/aisoft/easyaddrui/ConfirmCallbackInterface;

    .prologue
    .line 850
    sput-object p1, Lhk/com/aisoft/easyaddrui/eaView;->sConfirmCallbackInterface:Lhk/com/aisoft/easyaddrui/ConfirmCallbackInterface;

    .line 851
    return-void
.end method

.method public setCurrentAddr(Lhk/com/aisoft/easyaddrui/Address;)V
    .locals 0
    .param p1, "sAddress"    # Lhk/com/aisoft/easyaddrui/Address;

    .prologue
    .line 256
    sput-object p1, Lhk/com/aisoft/easyaddrui/eaView;->sEACurAddr:Lhk/com/aisoft/easyaddrui/Address;

    .line 258
    return-void
.end method

.method public setCurrentXY(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0
    .param p1, "sX"    # Ljava/lang/Double;
    .param p2, "sY"    # Ljava/lang/Double;

    .prologue
    .line 251
    sput-object p1, Lhk/com/aisoft/easyaddrui/eaView;->sEACurX:Ljava/lang/Double;

    .line 252
    sput-object p2, Lhk/com/aisoft/easyaddrui/eaView;->sEACurY:Ljava/lang/Double;

    .line 253
    return-void
.end method

.method public setEditCallBack(Lhk/com/aisoft/easyaddrui/EditCallbackInterface;)V
    .locals 0
    .param p1, "mEditCallbackInterface"    # Lhk/com/aisoft/easyaddrui/EditCallbackInterface;

    .prologue
    .line 838
    sput-object p1, Lhk/com/aisoft/easyaddrui/eaView;->sEditCallbackInterface:Lhk/com/aisoft/easyaddrui/EditCallbackInterface;

    .line 839
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "sMode"    # Ljava/lang/String;

    .prologue
    .line 247
    sput-object p1, Lhk/com/aisoft/easyaddrui/eaView;->sEAMode:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setSaveCallBack(Lhk/com/aisoft/easyaddrui/SaveCallbackInterface;)V
    .locals 0
    .param p1, "mSaveCallbackInterface"    # Lhk/com/aisoft/easyaddrui/SaveCallbackInterface;

    .prologue
    .line 842
    sput-object p1, Lhk/com/aisoft/easyaddrui/eaView;->sSaveCallbackInterface:Lhk/com/aisoft/easyaddrui/SaveCallbackInterface;

    .line 843
    return-void
.end method

.method public setUAT(Ljava/lang/String;)V
    .locals 0
    .param p1, "sUAT"    # Ljava/lang/String;

    .prologue
    .line 243
    sput-object p1, Lhk/com/aisoft/easyaddrui/eaView;->sEAUAT:Ljava/lang/String;

    .line 244
    return-void
.end method
