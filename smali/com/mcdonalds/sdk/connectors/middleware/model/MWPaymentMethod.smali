.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;
.super Ljava/lang/Object;
.source "MWPaymentMethod.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public acceptsOneTimePayment:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AcceptsOneTimePayment"
    .end annotation
.end field

.field public cVVThresholdAmount:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CVVThresholdAmount"
    .end annotation
.end field

.field public displayImageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplayImageName"
    .end annotation
.end field

.field public isEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsEnabled"
    .end annotation
.end field

.field public isValid:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsValid"
    .end annotation
.end field

.field public minTransactionAmount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minTransactionAmount"
    .end annotation
.end field

.field public paymentLabels:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentLabels"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentLabel;",
            ">;"
        }
    .end annotation
.end field

.field public paymentMethodID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentMethodID"
    .end annotation
.end field

.field public paymentMode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentMode"
    .end annotation
.end field

.field public paymentReturnURL:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentReturnURL"
    .end annotation
.end field

.field public paymentSchemas:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentSchemas"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentSchema;",
            ">;"
        }
    .end annotation
.end field

.field public paymentType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentType"
    .end annotation
.end field

.field public rank:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Rank"
    .end annotation
.end field

.field public registrationReturnURL:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RegistrationReturnURL"
    .end annotation
.end field

.field public registrationType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RegistrationType"
    .end annotation
.end field

.field public requiresPwd:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RequiresPwd"
    .end annotation
.end field

.field public staticsData:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StaticsData"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public thresholdAmount:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thresholdAmount"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toPaymentMethod(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;)Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    .locals 1
    .param p0, "mwPaymentMethod"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->toPaymentMethod()Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAcceptsOneTimePayment()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->acceptsOneTimePayment:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCVVThresholdAmount()Ljava/lang/Double;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->cVVThresholdAmount:Ljava/lang/Double;

    return-object v0
.end method

.method public getDisplayImageName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->displayImageName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsEnabled()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->isEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsValid()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->isValid:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMinTransactionAmount()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->minTransactionAmount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPaymentLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentLabel;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentLabels:Ljava/util/List;

    return-object v0
.end method

.method public getPaymentMethodID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentMethodID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPaymentMode()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentMode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPaymentReturnURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentReturnURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentSchemas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentSchema;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentSchemas:Ljava/util/List;

    return-object v0
.end method

.method public getPaymentType()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRank()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->rank:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRegistrationReturnURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->registrationReturnURL:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationType()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->registrationType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequiresPwd()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->requiresPwd:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStaticsData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->staticsData:Ljava/util/List;

    return-object v0
.end method

.method public getThresholdAmount()Ljava/lang/Double;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->thresholdAmount:Ljava/lang/Double;

    return-object v0
.end method

.method public setAcceptsOneTimePayment(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "acceptsOneTimePayment"    # Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 208
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->acceptsOneTimePayment:Ljava/lang/Boolean;

    .line 209
    return-void
.end method

.method public setCVVThresholdAmount(Ljava/lang/Double;)V
    .locals 0
    .param p1, "CVVThresholdAmount"    # Ljava/lang/Double;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 258
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->cVVThresholdAmount:Ljava/lang/Double;

    .line 259
    return-void
.end method

.method public setDisplayImageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayImageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->displayImageName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setIsEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isEnabled"    # Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->isEnabled:Ljava/lang/Boolean;

    .line 119
    return-void
.end method

.method public setIsValid(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isValid"    # Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->isValid:Ljava/lang/Boolean;

    .line 139
    return-void
.end method

.method public setMinTransactionAmount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "minTransactionAmount"    # Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 238
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->minTransactionAmount:Ljava/lang/Integer;

    .line 239
    return-void
.end method

.method public setPaymentLabels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentLabel;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    .local p1, "paymentLabels":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentLabel;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentLabels:Ljava/util/List;

    .line 100
    return-void
.end method

.method public setPaymentMethodID(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "paymentMethodID"    # Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentMethodID:Ljava/lang/Integer;

    .line 109
    return-void
.end method

.method public setPaymentMode(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "paymentMode"    # Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentMode:Ljava/lang/Integer;

    .line 149
    return-void
.end method

.method public setPaymentReturnURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentReturnURL"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentReturnURL:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setPaymentSchemas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentSchema;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 198
    .local p1, "paymentSchemas":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentSchema;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentSchemas:Ljava/util/List;

    .line 199
    return-void
.end method

.method public setPaymentType(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "paymentType"    # Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentType:Ljava/lang/Integer;

    .line 169
    return-void
.end method

.method public setRank(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "rank"    # Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->rank:Ljava/lang/Integer;

    .line 229
    return-void
.end method

.method public setRegistrationReturnURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "registrationReturnURL"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->registrationReturnURL:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setRegistrationType(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "registrationType"    # Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->registrationType:Ljava/lang/Integer;

    .line 159
    return-void
.end method

.method public setRequiresPwd(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "requiresPwd"    # Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->requiresPwd:Ljava/lang/Boolean;

    .line 219
    return-void
.end method

.method public setStaticsData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    .local p1, "staticsData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->staticsData:Ljava/util/List;

    .line 90
    return-void
.end method

.method public setThresholdAmount(Ljava/lang/Double;)V
    .locals 0
    .param p1, "thresholdAmount"    # Ljava/lang/Double;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->thresholdAmount:Ljava/lang/Double;

    .line 249
    return-void
.end method

.method public toPaymentMethod()Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;-><init>()V

    .line 62
    .local v0, "paymentMethod":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentMethodID:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->setID(Ljava/lang/Integer;)V

    .line 65
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->setPaymentType(Ljava/lang/Integer;)V

    .line 66
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->registrationType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->setRegistrationType(Ljava/lang/Integer;)V

    .line 67
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->registrationReturnURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->setRegistrationReturnURL(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentLabels:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentLabels:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentLabel;

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentLabel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->setName(Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentMode:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 74
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->values()[Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->paymentMode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->setPaymentMode(Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)V

    .line 79
    :goto_0
    return-object v0

    .line 76
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    goto :goto_0
.end method
