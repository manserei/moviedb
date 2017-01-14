module ApplicationHelper
  def full_gender(gender)
    {
      "m" => "male",
      "f" => "female"
    }[gender]
  end
end
