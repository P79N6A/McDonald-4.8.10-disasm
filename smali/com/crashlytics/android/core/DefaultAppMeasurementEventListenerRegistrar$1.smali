.class Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar$1;
.super Ljava/lang/Object;
.source "DefaultAppMeasurementEventListenerRegistrar.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->getOnEventListenerProxy(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar$1;->this$0:Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equalsImpl(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 164
    if-ne p1, p2, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    .line 168
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    invoke-static {p2}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    invoke-super {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 118
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "methodName":Ljava/lang/String;
    array-length v7, p3

    if-ne v7, v10, :cond_0

    const-string v7, "equals"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 120
    aget-object v6, p3, v9

    invoke-virtual {p0, p1, v6}, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar$1;->equalsImpl(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 152
    :goto_0
    return-object v6

    .line 121
    :cond_0
    array-length v7, p3

    if-nez v7, :cond_1

    const-string v7, "hashCode"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 122
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 123
    :cond_1
    array-length v7, p3

    if-nez v7, :cond_2

    const-string/jumbo v7, "toString"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 124
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 125
    :cond_2
    array-length v7, p3

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    const-string v7, "onEvent"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 126
    invoke-static {p3}, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->validateOnEventArgTypes([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 127
    aget-object v4, p3, v9

    check-cast v4, Ljava/lang/String;

    .line 128
    .local v4, "origin":Ljava/lang/String;
    aget-object v3, p3, v10

    check-cast v3, Ljava/lang/String;

    .line 129
    .local v3, "name":Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v5, p3, v7

    check-cast v5, Landroid/os/Bundle;

    .line 131
    .local v5, "params":Landroid/os/Bundle;
    if-eqz v4, :cond_3

    const-string v7, "crash"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 132
    iget-object v7, p0, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar$1;->this$0:Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;

    invoke-static {v7}, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->access$000(Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;)Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v7

    invoke-static {v7, v3, v5}, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->access$100(Lcom/crashlytics/android/core/CrashlyticsCore;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 141
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "origin":Ljava/lang/String;
    .end local v5    # "params":Landroid/os/Bundle;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected method invoked on AppMeasurement.EventListener: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "error":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, p3

    if-ge v1, v7, :cond_5

    .line 145
    if-lez v1, :cond_4

    .line 146
    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_4
    aget-object v7, p3, v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    :cond_5
    const-string v7, "); returning null"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v7

    const-string v8, "CrashlyticsCore"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
