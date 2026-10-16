# sandbox_telemetry_parse — 2026-10-16 12:12:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=435328 lines=1627
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1072 |
| `memory_sample` | 546 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 546} |
| `chromeGpuPssKb` | {'int': 546} |
| `chromeOtherPssKb` | {'int': 546} |
| `chromeProcesses` | {'int': 546} |
| `chromeProfiles` | {'int': 546} |
| `chromeRendererMaxPssKb` | {'int': 546} |
| `chromeRendererPssKb` | {'int': 546} |
| `chromeRenderers` | {'int': 546} |
| `chromeTabs` | {'int': 546} |
| `chromeTabsProbedProfiles` | {'int': 546} |
| `chromeUtilityPssKb` | {'int': 546} |
| `desktopPssKb` | {'int': 546} |
| `hostPssKb` | {'int': 546} |
| `kind` | {'str': 546} |
| `memAvailableKb` | {'int': 546} |
| `memTotalKb` | {'int': 546} |
| `otherPssKb` | {'int': 546} |
| `processes` | {'int': 546} |
| `pssFallbackProcesses` | {'int': 546} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 1069} |
| `display` | {'int': 1072} |
| `kind` | {'str': 1072} |
| `processes` | {'int': 1072} |
| `pssKb` | {'int': 1072} |
| `rendererMaxPssKb` | {'int': 1072} |
| `renderers` | {'int': 1072} |
| `tabs` | {'int': 1071} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
