package com.carrotgarden.hadoop;

// import org.apache.commons.logging.Log;
// import org.apache.commons.logging.LogFactory;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;

/**
 * 
 */
public class HadoopJob {

	// The Karmasphere Studio Workflow Log displays logging from Apache Commons
	// Logging, for example:
	// private static final Log LOG = LogFactory.getLog("HadoopJob");

	public static void main(final String[] args) throws Exception {

		final Job job = new Job();

		/* Autogenerated initialization. */
		initJob(job);

		/* Custom initialization. */
		initCustom(job);

		/* Tell Task Tracker this is the main */
		job.setJarByClass(HadoopJob.class);

		/* This is an example of how to set input and output. */
		FileInputFormat.setInputPaths(job, args[0]);
		FileOutputFormat.setOutputPath(job, new Path(args[1]));

		/* You can now do any other job customization. */
		// job.setXxx(...);

		/* And finally, we submit the job. */
		job.submit();

		job.waitForCompletion(true);
	}

	/**
	 * This method is executed by the workflow
	 */
	public static void initCustom(final Job job) {
		// Add custom initialisation here, you may have to rebuild your project
		// before
		// changes are reflected in the workflow.
	}

	/**
	 * This method is called from within the constructor to initialize the job.
	 * WARNING: Do NOT modify this code. The content of this method is always
	 * regenerated by the Job Editor.
	 */
	@SuppressWarnings("unchecked")
	// <editor-fold defaultstate="collapsed"
	// desc="Generated Code">//GEN-BEGIN:initJob
	public static void initJob(final Job job) {

		final Configuration conf = job.getConfiguration();

		// Generating code using Karmasphere Protocol for Hadoop 0.20
		// CG_GLOBAL

		// CG_INPUT_HIDDEN
		job.getConfiguration().set("mapreduce.inputformat.class",
				"org.apache.hadoop.mapreduce.lib.input.TextInputFormat");
		job.getConfiguration().set("mapred.input.format.class",
				"org.apache.hadoop.mapreduce.lib.input.TextInputFormat");

		// CG_MAPPER_HIDDEN
		job.getConfiguration().set("mapreduce.map.class",
				"org.apache.hadoop.mapreduce.lib.map.TokenCounterMapper");
		job.getConfiguration().set("mapred.mapper.class",
				"org.apache.hadoop.mapreduce.lib.map.TokenCounterMapper");

		// CG_MAPPER

		// CG_PARTITIONER_HIDDEN
		job.setPartitionerClass(org.apache.hadoop.mapreduce.lib.partition.HashPartitioner.class);

		// CG_PARTITIONER

		// CG_COMPARATOR_HIDDEN

		// CG_COMPARATOR

		// CG_COMBINER_HIDDEN

		// CG_REDUCER_HIDDEN
		job.getConfiguration().set("mapreduce.reduce.class",
				"org.apache.hadoop.mapreduce.lib.reduce.IntSumReducer");
		job.getConfiguration().set("mapred.reducer.class",
				"org.apache.hadoop.mapreduce.lib.reduce.IntSumReducer");

		// CG_REDUCER
		job.getConfiguration().set("mapred.reduce.tasks", "1");

		// CG_OUTPUT_HIDDEN
		job.getConfiguration().set("mapreduce.outputformat.class",
				"org.apache.hadoop.mapreduce.lib.output.TextOutputFormat");
		job.getConfiguration().set("mapred.output.format.class",
				"org.apache.hadoop.mapreduce.lib.output.TextOutputFormat");

		// CG_OUTPUT

		// Others
	}

	// </editor-fold>//GEN-END:initJob

}
