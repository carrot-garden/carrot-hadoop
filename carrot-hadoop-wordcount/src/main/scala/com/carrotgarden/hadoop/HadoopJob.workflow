<?xml version="1.0" encoding="UTF-8" ?>

<hadoopjob version="0.20.2">
  <configuration>
    <entry key="MAPREDUCE_JOB_REDUCES" type="java.lang.Integer" value="1"/>
    <entry key="KARMASPHERE_MAPREDUCE_MAP_DETECT_TYPES" type="java.lang.Boolean" value="True"/>
    <entry key="KARMASPHERE_MAPREDUCE_REDUCE_DETECT_TYPES" type="java.lang.Boolean" value="True"/>
  </configuration>
  <operation type="input">
    <operator qualifiedName="org.apache.hadoop.mapreduce.lib.input.TextInputFormat" binaryName="org.apache.hadoop.mapreduce.lib.input.TextInputFormat"/>
  </operation>
  <operation type="mapper">
    <operator qualifiedName="org.apache.hadoop.mapreduce.lib.map.TokenCounterMapper" binaryName="org.apache.hadoop.mapreduce.lib.map.TokenCounterMapper"/>
  </operation>
  <operation type="partitioner">
    <operator qualifiedName="org.apache.hadoop.mapreduce.lib.partition.HashPartitioner" binaryName="org.apache.hadoop.mapreduce.lib.partition.HashPartitioner"/>
  </operation>
  <operation type="comparator">
  </operation>
  <operation type="combiner">
  </operation>
  <operation type="reducer">
    <operator qualifiedName="org.apache.hadoop.mapreduce.lib.reduce.IntSumReducer" binaryName="org.apache.hadoop.mapreduce.lib.reduce.IntSumReducer"/>
  </operation>
  <operation type="outputformat">
    <operator qualifiedName="org.apache.hadoop.mapreduce.lib.output.TextOutputFormat" binaryName="org.apache.hadoop.mapreduce.lib.output.TextOutputFormat"/>
  </operation>
  <defaultArgs>
  </defaultArgs>
  <uploadedFiles>
  </uploadedFiles>
</hadoopjob>
