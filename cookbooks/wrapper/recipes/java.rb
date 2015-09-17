java_alternatives "set java alternatives" do
    java_location '/usr/local/java'
    bin_cmds ["java", "javac"]
    action :set
end