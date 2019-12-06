class UserSerializer < ActiveModel::Serializer
  attributes :username, :sleeps, :days

  def sleeps
    ActiveModel::SerializableResource.new(
      object.sleeps,
      each_serializer: SleepSerializer
    )
  end

  def days
    ActiveModel::SerializableResource.new(
      object.days,
      each_serializer: DaySerializer
    )
  end
end
