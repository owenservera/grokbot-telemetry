# sandbox_telemetry_parse — 2026-10-16 19:36:55 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=769253 lines=2875
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1904 |
| `memory_sample` | 962 |
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
| `chromeBrowserPssKb` | {'int': 962} |
| `chromeGpuPssKb` | {'int': 962} |
| `chromeOtherPssKb` | {'int': 962} |
| `chromeProcesses` | {'int': 962} |
| `chromeProfiles` | {'int': 962} |
| `chromeRendererMaxPssKb` | {'int': 962} |
| `chromeRendererPssKb` | {'int': 962} |
| `chromeRenderers` | {'int': 962} |
| `chromeTabs` | {'int': 962} |
| `chromeTabsProbedProfiles` | {'int': 962} |
| `chromeUtilityPssKb` | {'int': 962} |
| `desktopPssKb` | {'int': 962} |
| `hostPssKb` | {'int': 962} |
| `kind` | {'str': 962} |
| `memAvailableKb` | {'int': 962} |
| `memTotalKb` | {'int': 962} |
| `otherPssKb` | {'int': 962} |
| `processes` | {'int': 962} |
| `pssFallbackProcesses` | {'int': 962} |

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
| `cpuMillicores` | {'int': 1901} |
| `display` | {'int': 1904} |
| `kind` | {'str': 1904} |
| `processes` | {'int': 1904} |
| `pssKb` | {'int': 1904} |
| `rendererMaxPssKb` | {'int': 1904} |
| `renderers` | {'int': 1904} |
| `tabs` | {'int': 1903} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
