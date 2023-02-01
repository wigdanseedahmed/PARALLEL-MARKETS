class AppUrl {
  static const String liveBaseURL = "https://remote-ur/api/v1";
  static const String localBaseURL = "http://192.168.8.126:4000";

  // "http://192.168.8.126:4000/api"; for Canar
  // "http://172.20.10.2:4000/api"; for iphone 13
  // "http://172.20.10.5:4000/api"; iphone 6
  // "http://192.168.1.106:4000/api"; Work
  // "http://192.168.1.101:4000/api"; Baba

  static const String baseURL = localBaseURL; //liveBaseURL;
  static const String digitalAvatarBaseURL = "$baseURL/digital-avatar";
  static const String interventionsBaseURL = "$baseURL/interventions";
  static const String politicalMappingBaseURL = "$baseURL/political-mapping";

  /// DIGITAL AVATAR
  static const String cluster =
      "$digitalAvatarBaseURL/cluster";
  static const String clusterBasedOnIndicator =
      "$digitalAvatarBaseURL/cluster/clusterandindicator/"; //:cluster&:indicators

  /// INTERVENTIONS
  static const String projects = "$interventionsBaseURL/project";
  static const String projectTotalDonatedAmount = '$interventionsBaseURL/project/totalDonatedAmount/'; //:projectName
  static const String states = "$interventionsBaseURL/state";
  static const String localities = "$interventionsBaseURL/locality";

  /// POLITICAL MAPPING
    /// POLITICAL MAPPING ~ COALITION
  static const String getPoliticalMappingCoalitions = "$politicalMappingBaseURL/politicalcoalition";

    /// POLITICAL MAPPING ~ EVENT
  static const String getPoliticalMappingEvents = "$politicalMappingBaseURL/politicalevent";

    /// POLITICAL MAPPING ~ PARTY OR INTEREST GROUPS
  static const String getPoliticalMappingPartyGroups = "$politicalMappingBaseURL/politicalpartygroupactor";

    /// POLITICAL MAPPING ~ PEOPLE
  static const String getPoliticalMappingIndividuals = "$politicalMappingBaseURL/politicalindividualactor";

    /// POLITICAL MAPPING ~ STATE
  static const String getPoliticalMappingStates = "$politicalMappingBaseURL/politicalstate";

  /// USERS
  static const String login = "$baseURL/session";
  static const String register = "$baseURL/registration";
  static const String forgotPassword = "$baseURL/forgot-password";
}