.class final Lio/fabric/sdk/android/services/common/FirebaseAppImpl;
.super Ljava/lang/Object;
.source "FirebaseAppImpl.java"

# interfaces
.implements Lio/fabric/sdk/android/services/common/FirebaseApp;


# instance fields
.field private final firebaseAppInstance:Ljava/lang/Object;

.field private final isDataCollectionDefaultEnabledMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .param p1, "firebaseAppClass"    # Ljava/lang/Class;
    .param p2, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lio/fabric/sdk/android/services/common/FirebaseAppImpl;->firebaseAppInstance:Ljava/lang/Object;

    .line 50
    const-string v0, "isDataCollectionDefaultEnabled"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/FirebaseAppImpl;->isDataCollectionDefaultEnabledMethod:Ljava/lang/reflect/Method;

    .line 52
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/FirebaseApp;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "com.google.firebase.FirebaseApp"

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 32
    .local v1, "firebaseAppClass":Ljava/lang/Class;
    const-string v4, "getInstance"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 34
    .local v2, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 37
    .local v3, "instance":Ljava/lang/Object;
    new-instance v4, Lio/fabric/sdk/android/services/common/FirebaseAppImpl;

    invoke-direct {v4, v1, v3}, Lio/fabric/sdk/android/services/common/FirebaseAppImpl;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 45
    .end local v1    # "firebaseAppClass":Ljava/lang/Class;
    .end local v2    # "getInstanceMethod":Ljava/lang/reflect/Method;
    .end local v3    # "instance":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v5, "Fabric"

    const-string v6, "Could not find class: com.google.firebase.FirebaseApp"

    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 40
    :catch_1
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v5, "Fabric"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 42
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v5, "Fabric"

    const-string v6, "Unexpected error loading FirebaseApp instance."

    invoke-interface {v4, v5, v6, v0}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public isDataCollectionDefaultEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 56
    :try_start_0
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/FirebaseAppImpl;->isDataCollectionDefaultEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lio/fabric/sdk/android/services/common/FirebaseAppImpl;->firebaseAppInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 61
    :goto_0
    return v1

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v3, "Fabric"

    const-string v4, "Cannot check isDataCollectionDefaultEnabled on FirebaseApp."

    invoke-interface {v1, v3, v4, v0}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    .line 61
    goto :goto_0
.end method
