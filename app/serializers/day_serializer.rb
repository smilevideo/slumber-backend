class DaySerializer < ActiveModel::Serializer
  attributes :date, :note, :rating, :activities
  
  def activities
    ActiveModel::SerializableResource.new(
      object.activities,
      each_serializer: ActivitySerializer
    )
  end
end
