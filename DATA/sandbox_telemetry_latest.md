# sandbox_telemetry_parse — 2026-10-16 23:20:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=917024 lines=3427
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2272 |
| `memory_sample` | 1146 |
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
| `chromeBrowserPssKb` | {'int': 1146} |
| `chromeGpuPssKb` | {'int': 1146} |
| `chromeOtherPssKb` | {'int': 1146} |
| `chromeProcesses` | {'int': 1146} |
| `chromeProfiles` | {'int': 1146} |
| `chromeRendererMaxPssKb` | {'int': 1146} |
| `chromeRendererPssKb` | {'int': 1146} |
| `chromeRenderers` | {'int': 1146} |
| `chromeTabs` | {'int': 1146} |
| `chromeTabsProbedProfiles` | {'int': 1146} |
| `chromeUtilityPssKb` | {'int': 1146} |
| `desktopPssKb` | {'int': 1146} |
| `hostPssKb` | {'int': 1146} |
| `kind` | {'str': 1146} |
| `memAvailableKb` | {'int': 1146} |
| `memTotalKb` | {'int': 1146} |
| `otherPssKb` | {'int': 1146} |
| `processes` | {'int': 1146} |
| `pssFallbackProcesses` | {'int': 1146} |

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
| `cpuMillicores` | {'int': 2269} |
| `display` | {'int': 2272} |
| `kind` | {'str': 2272} |
| `processes` | {'int': 2272} |
| `pssKb` | {'int': 2272} |
| `rendererMaxPssKb` | {'int': 2272} |
| `renderers` | {'int': 2272} |
| `tabs` | {'int': 2271} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
