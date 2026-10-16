# sandbox_telemetry_parse — 2026-10-16 23:12:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=909797 lines=3400
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2254 |
| `memory_sample` | 1137 |
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
| `chromeBrowserPssKb` | {'int': 1137} |
| `chromeGpuPssKb` | {'int': 1137} |
| `chromeOtherPssKb` | {'int': 1137} |
| `chromeProcesses` | {'int': 1137} |
| `chromeProfiles` | {'int': 1137} |
| `chromeRendererMaxPssKb` | {'int': 1137} |
| `chromeRendererPssKb` | {'int': 1137} |
| `chromeRenderers` | {'int': 1137} |
| `chromeTabs` | {'int': 1137} |
| `chromeTabsProbedProfiles` | {'int': 1137} |
| `chromeUtilityPssKb` | {'int': 1137} |
| `desktopPssKb` | {'int': 1137} |
| `hostPssKb` | {'int': 1137} |
| `kind` | {'str': 1137} |
| `memAvailableKb` | {'int': 1137} |
| `memTotalKb` | {'int': 1137} |
| `otherPssKb` | {'int': 1137} |
| `processes` | {'int': 1137} |
| `pssFallbackProcesses` | {'int': 1137} |

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
| `cpuMillicores` | {'int': 2251} |
| `display` | {'int': 2254} |
| `kind` | {'str': 2254} |
| `processes` | {'int': 2254} |
| `pssKb` | {'int': 2254} |
| `rendererMaxPssKb` | {'int': 2254} |
| `renderers` | {'int': 2254} |
| `tabs` | {'int': 2253} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
