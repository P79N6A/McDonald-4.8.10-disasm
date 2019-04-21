.class final Lcom/crashlytics/android/answers/SessionEventMetadata;
.super Ljava/lang/Object;
.source "SessionEventMetadata.java"


# instance fields
.field public final appBundleId:Ljava/lang/String;

.field public final appVersionCode:Ljava/lang/String;

.field public final appVersionName:Ljava/lang/String;

.field public final betaDeviceToken:Ljava/lang/String;

.field public final buildId:Ljava/lang/String;

.field public final deviceModel:Ljava/lang/String;

.field public final executionId:Ljava/lang/String;

.field public final installationId:Ljava/lang/String;

.field public final limitAdTrackingEnabled:Ljava/lang/Boolean;

.field public final osVersion:Ljava/lang/String;

.field private stringRepresentation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appBundleId"    # Ljava/lang/String;
    .param p2, "executionId"    # Ljava/lang/String;
    .param p3, "installationId"    # Ljava/lang/String;
    .param p4, "limitAdTrackingEnabled"    # Ljava/lang/Boolean;
    .param p5, "betaDeviceToken"    # Ljava/lang/String;
    .param p6, "buildId"    # Ljava/lang/String;
    .param p7, "osVersion"    # Ljava/lang/String;
    .param p8, "deviceModel"    # Ljava/lang/String;
    .param p9, "appVersionCode"    # Ljava/lang/String;
    .param p10, "appVersionName"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->appBundleId:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->executionId:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->installationId:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->limitAdTrackingEnabled:Ljava/lang/Boolean;

    .line 29
    iput-object p5, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->betaDeviceToken:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->buildId:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->osVersion:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->deviceModel:Ljava/lang/String;

    .line 33
    iput-object p9, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->appVersionCode:Ljava/lang/String;

    .line 34
    iput-object p10, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->appVersionName:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    iget-object v1, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->stringRepresentation:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appBundleId="

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->appBundleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", executionId="

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->executionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", installationId="

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->installationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", limitAdTrackingEnabled="

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->limitAdTrackingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", betaDeviceToken="

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->betaDeviceToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", buildId="

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->buildId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", osVersion="

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->osVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", deviceModel="

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->deviceModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", appVersionCode="

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->appVersionCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", appVersionName="

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->appVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->stringRepresentation:Ljava/lang/String;

    .line 53
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->stringRepresentation:Ljava/lang/String;

    return-object v1
.end method