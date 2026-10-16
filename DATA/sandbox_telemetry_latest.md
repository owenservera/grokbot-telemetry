# sandbox_telemetry_parse — 2026-10-16 16:34:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=631151 lines=2359
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1560 |
| `memory_sample` | 790 |
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
| `chromeBrowserPssKb` | {'int': 790} |
| `chromeGpuPssKb` | {'int': 790} |
| `chromeOtherPssKb` | {'int': 790} |
| `chromeProcesses` | {'int': 790} |
| `chromeProfiles` | {'int': 790} |
| `chromeRendererMaxPssKb` | {'int': 790} |
| `chromeRendererPssKb` | {'int': 790} |
| `chromeRenderers` | {'int': 790} |
| `chromeTabs` | {'int': 790} |
| `chromeTabsProbedProfiles` | {'int': 790} |
| `chromeUtilityPssKb` | {'int': 790} |
| `desktopPssKb` | {'int': 790} |
| `hostPssKb` | {'int': 790} |
| `kind` | {'str': 790} |
| `memAvailableKb` | {'int': 790} |
| `memTotalKb` | {'int': 790} |
| `otherPssKb` | {'int': 790} |
| `processes` | {'int': 790} |
| `pssFallbackProcesses` | {'int': 790} |

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
| `cpuMillicores` | {'int': 1557} |
| `display` | {'int': 1560} |
| `kind` | {'str': 1560} |
| `processes` | {'int': 1560} |
| `pssKb` | {'int': 1560} |
| `rendererMaxPssKb` | {'int': 1560} |
| `renderers` | {'int': 1560} |
| `tabs` | {'int': 1559} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
