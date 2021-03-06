# Job
module Subordinate
  class Client
    # Job management and configuration
    #
    # @see https://ci.jenkins-ci.org/job/jenkins_rc_branch/api/
    module Job
      # Returns the response with information about the specific job
      #
      # @see https://ci.jenkins-ci.org/job/jenkins_rc_branch/api/json?pretty=true
      #
      # @param [String] job the job that you want to retrieve information about
      #
      # @return [Hashie::Mash] job response
      #
      # @example Get the job api response
      #   Subordinate::Client.job("My-Job-I-Want-Info-On")
      #
      # @author Jason Truluck
      def job(job, options = {})
        get("job/#{job}/api/json", options)
      end

      # Builds the job specified on the Jenkins server
      #
      # @see https://ci.jenkins-ci.org/job/jenkins_rc_branch/api/
      #
      # @param [String] job the job that you want to build
      #
      # @return [Integer] status
      #
      # @example Build the job
      #   Subordinate::Client.build("My-Job-I-Want-Info-On")
      #
      # @author Jason Truluck
      def build_job(job, options = {})
        post("job/#{job}/build", options)
      end

      # Builds the job specified on the Jenkins server with specified parameters
      # Specify the parameters within the options hash
      #
      # @see https://ci.jenkins-ci.org/job/jenkins_rc_branch/api/
      #
      # @param [String] job the job that you want to build
      #
      # @return [Integer] status
      #
      # @example Build the job
      #   Subordinate::Client.build_job_with_params("My-Job-I-Want-Info-On", { "some_param" => value })
      #
      # @author Jason Truluck
      def build_job_with_params(job, options = {})
        post("job/#{job}/buildWithParameters", options)
      end

      # Disables the specified job on the Jenkins Server
      #
      # @see https://ci.jenkins-ci.org/job/jenkins_rc_branch/api/
      #
      # @param [String] job the job that you want to disable
      #
      # @return [Integer] status
      #
      # @example Disable the job
      #   Subordinate::Client.disable("My-Job-I-Want-Info-On")
      #
      # @author Jason Truluck
      def disable_job(job, options = {})
        post("job/#{job}/disable", options)
      end

      # Enables the specified job on the Jenkins Server
      #
      # @see https://ci.jenkins-ci.org/job/jenkins_rc_branch/api/
      #
      # @param [String] job the job that you want to enable
      #
      # @return [Integer] status
      #
      # @example Enable the job
      #   Subordinate::Client.enable("My-Job-I-Want-Info-On")
      #
      # @author Jason Truluck
      def enable_job(job, options = {})
        post("job/#{job}/enable", options)
      end

      # Deletes the specified job on the Jenkins Server
      #
      # @see https://ci.jenkins-ci.org/job/jenkins_rc_branch/api/
      #
      # @param [String] job the job that you want to delete
      #
      # @return [Integer] status
      #
      # @example Disable the job
      #   Subordinate::Client.delete("My-Job-I-Want-Info-On")
      #
      # @author Jason Truluck
      def delete_job(job, options = {})
        post("job/#{job}/delete", options)
      end
    end
  end
end
