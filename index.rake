
namespace :weapp do
  desc "Replace wx_appid in project.config.json"
  task :appid_update, [:appid, :filename] do |task, args|
    args.with_defaults(:filename => "./project.config.json")
    # json object;
    json_object = JSON.parse File.read(args[:filename])
    # udpate:
    json_object["appid"] = args[:appid]
    # write:
    File.write(args[:filename], JSON.pretty_generate(json_object))
  end
end