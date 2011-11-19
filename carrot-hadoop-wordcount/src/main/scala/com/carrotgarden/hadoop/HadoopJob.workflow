<?xml version="1.0" encoding="UTF-8" ?>

<hadoopjob version="0.20.2">
  <bootstrap input="/work/git/carrot-hadoop/carrot-hadoop-wordcount/src/main/resources/input.txt" filesystem="00000000-0000-0000-377a-99710000002f"/>
  <configuration>
    <entry key="MAPREDUCE_JOB_REDUCES" type="java.lang.Integer" value="1"/>
    <entry key="MAPREDUCE_MAP_OUTPUT_VALUE_CLASS" type="com.karmasphere.studio.common.lang.ClassDescriptor" value="org.apache.hadoop.io.IntWritable"/>
    <entry key="MAPREDUCE_MAP_NEWAPI" type="java.lang.Boolean" value="True"/>
    <entry key="MAPREDUCE_REDUCE_NEWAPI" type="java.lang.Boolean" value="True"/>
    <entry key="MAPREDUCE_MAP_OUTPUT_KEY_CLASS" type="com.karmasphere.studio.common.lang.ClassDescriptor" value="org.apache.hadoop.io.Text"/>
    <entry key="KARMASPHERE_MAPREDUCE_MAP_DETECT_TYPES" type="java.lang.Boolean" value="True"/>
    <entry key="MAPREDUCE_JOB_OUTPUT_VALUE_CLASS" type="com.karmasphere.studio.common.lang.ClassDescriptor" value="org.apache.hadoop.io.IntWritable"/>
    <entry key="KARMASPHERE_MAPREDUCE_REDUCE_DETECT_TYPES" type="java.lang.Boolean" value="True"/>
    <entry key="MAPREDUCE_MAP_FAILURES_MAXPERCENT" type="java.lang.Float" value="0.0"/>
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
