<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="CloudHelloWorld" generation="1" functional="0" release="0" Id="3004ebda-a1d5-4e73-974d-141990a4d602" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="CloudHelloWorldGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="SayHello:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/CloudHelloWorld/CloudHelloWorldGroup/LB:SayHello:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="SayHello:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/CloudHelloWorld/CloudHelloWorldGroup/MapSayHello:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="SayHelloInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/CloudHelloWorld/CloudHelloWorldGroup/MapSayHelloInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:SayHello:Endpoint1">
          <toPorts>
            <inPortMoniker name="/CloudHelloWorld/CloudHelloWorldGroup/SayHello/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapSayHello:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/CloudHelloWorld/CloudHelloWorldGroup/SayHello/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapSayHelloInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/CloudHelloWorld/CloudHelloWorldGroup/SayHelloInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="SayHello" generation="1" functional="0" release="0" software="C:\Users\HuiShan\Documents\GitHub\CSharpExercises\CloudHelloWorld\csx\Debug\roles\SayHello" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;SayHello&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;SayHello&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/CloudHelloWorld/CloudHelloWorldGroup/SayHelloInstances" />
            <sCSPolicyUpdateDomainMoniker name="/CloudHelloWorld/CloudHelloWorldGroup/SayHelloUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/CloudHelloWorld/CloudHelloWorldGroup/SayHelloFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="SayHelloUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="SayHelloFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="SayHelloInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="829f471d-7f6e-4177-bd98-7cb300a66a66" ref="Microsoft.RedDog.Contract\ServiceContract\CloudHelloWorldContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="55345c34-694b-45c9-ab6c-c2f0645f38a2" ref="Microsoft.RedDog.Contract\Interface\SayHello:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/CloudHelloWorld/CloudHelloWorldGroup/SayHello:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>