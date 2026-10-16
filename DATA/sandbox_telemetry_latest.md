# sandbox_telemetry_parse — 2026-10-16 14:27:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=532463 lines=1990
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1314 |
| `memory_sample` | 667 |
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
| `chromeBrowserPssKb` | {'int': 667} |
| `chromeGpuPssKb` | {'int': 667} |
| `chromeOtherPssKb` | {'int': 667} |
| `chromeProcesses` | {'int': 667} |
| `chromeProfiles` | {'int': 667} |
| `chromeRendererMaxPssKb` | {'int': 667} |
| `chromeRendererPssKb` | {'int': 667} |
| `chromeRenderers` | {'int': 667} |
| `chromeTabs` | {'int': 667} |
| `chromeTabsProbedProfiles` | {'int': 667} |
| `chromeUtilityPssKb` | {'int': 667} |
| `desktopPssKb` | {'int': 667} |
| `hostPssKb` | {'int': 667} |
| `kind` | {'str': 667} |
| `memAvailableKb` | {'int': 667} |
| `memTotalKb` | {'int': 667} |
| `otherPssKb` | {'int': 667} |
| `processes` | {'int': 667} |
| `pssFallbackProcesses` | {'int': 667} |

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
| `cpuMillicores` | {'int': 1311} |
| `display` | {'int': 1314} |
| `kind` | {'str': 1314} |
| `processes` | {'int': 1314} |
| `pssKb` | {'int': 1314} |
| `rendererMaxPssKb` | {'int': 1314} |
| `renderers` | {'int': 1314} |
| `tabs` | {'int': 1313} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
