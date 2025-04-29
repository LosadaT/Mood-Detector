import CoreML
import NaturalLanguage

class CoreMLViewModel {
    func textClassifier(_ text: String) -> String{
        do {
            let config = MLModelConfiguration()
            let mlModel = try NLModel(mlModel: FeelingClassifier(configuration: config).model)
            let handler = mlModel.predictedLabel(for: text)
            return handler!
        } catch {
            print("fail to use the model")
        }
        return "fail"
    }
}
