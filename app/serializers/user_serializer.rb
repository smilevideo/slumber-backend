class UserSerializer < ActiveModel::Serializer
  attributes :username, :sleeps

  def sleeps
    ActiveModel::SerializableResource.new(
      object.sleeps,
      each_serializer: SleepSerializer
    )
  end
end
