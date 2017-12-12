namespace :db do
  namespace :seed do
    Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].each do |filename|
      task_name = File.basename(filename, '.rb').to_sym

      # This allows up to 3 arguments to be added to a task. The task is started with the args within brackets:
      # `rake db:seed:make_reports[foo,bar,5]` and the arguments are available in the task
      # itself as `$argv[:arg1]`, `$argv[arg2]`, etc.
      # also see: https://stackoverflow.com/questions/825748/how-to-pass-command-line-arguments-to-a-rake-task
      task task_name, {[:arg1, :arg2, :arg3] => [:environment]} do |t, args|
        $argv = args.dup
        load(filename) if File.exist?(filename)
      end
    end
  end
end
