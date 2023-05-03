class InsertRecordsIntoTasks < ActiveRecord::Migration[7.0]
  def up
    # create an array of possible status values
    statuses = %w[PENDING IN_PROGRESS COMPLETED FAILED]

    # create an array to store the tasks
    tasks = []

    # generate 100 tasks
    100.times do |i|
      tasks << {
        name: "Task #{i + 1}",
        description: "This is a description for Task #{i + 1}.",
        status: statuses.sample
      }
    end

    # insert the tasks into the database
    Task.insert_all(tasks)
  end

  def down
    # remove the inserted tasks from the database
    Task.delete_all
  end
end
