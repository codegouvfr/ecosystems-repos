json.array! @dependencies do |dependency|
  json.extract! dependency, :package_name, :ecosystem, :requirements, :direct, :kind, :optional
  json.repository do
    json.partial! 'api/v1/repositories/repository', repository: dependency.repository
  end
  json.manifest do
    json.extract! dependency.manifest, :ecosystem, :filepath, :sha, :kind, :created_at, :updated_at
  end
end