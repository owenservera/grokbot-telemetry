# sandbox_telemetry_parse — 2026-10-16 11:57:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=423290 lines=1582
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1042 |
| `memory_sample` | 531 |
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
| `chromeBrowserPssKb` | {'int': 531} |
| `chromeGpuPssKb` | {'int': 531} |
| `chromeOtherPssKb` | {'int': 531} |
| `chromeProcesses` | {'int': 531} |
| `chromeProfiles` | {'int': 531} |
| `chromeRendererMaxPssKb` | {'int': 531} |
| `chromeRendererPssKb` | {'int': 531} |
| `chromeRenderers` | {'int': 531} |
| `chromeTabs` | {'int': 531} |
| `chromeTabsProbedProfiles` | {'int': 531} |
| `chromeUtilityPssKb` | {'int': 531} |
| `desktopPssKb` | {'int': 531} |
| `hostPssKb` | {'int': 531} |
| `kind` | {'str': 531} |
| `memAvailableKb` | {'int': 531} |
| `memTotalKb` | {'int': 531} |
| `otherPssKb` | {'int': 531} |
| `processes` | {'int': 531} |
| `pssFallbackProcesses` | {'int': 531} |

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
| `cpuMillicores` | {'int': 1039} |
| `display` | {'int': 1042} |
| `kind` | {'str': 1042} |
| `processes` | {'int': 1042} |
| `pssKb` | {'int': 1042} |
| `rendererMaxPssKb` | {'int': 1042} |
| `renderers` | {'int': 1042} |
| `tabs` | {'int': 1041} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
