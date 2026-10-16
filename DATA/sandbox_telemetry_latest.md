# sandbox_telemetry_parse — 2026-10-16 15:58:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=602271 lines=2251
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1488 |
| `memory_sample` | 754 |
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
| `chromeBrowserPssKb` | {'int': 754} |
| `chromeGpuPssKb` | {'int': 754} |
| `chromeOtherPssKb` | {'int': 754} |
| `chromeProcesses` | {'int': 754} |
| `chromeProfiles` | {'int': 754} |
| `chromeRendererMaxPssKb` | {'int': 754} |
| `chromeRendererPssKb` | {'int': 754} |
| `chromeRenderers` | {'int': 754} |
| `chromeTabs` | {'int': 754} |
| `chromeTabsProbedProfiles` | {'int': 754} |
| `chromeUtilityPssKb` | {'int': 754} |
| `desktopPssKb` | {'int': 754} |
| `hostPssKb` | {'int': 754} |
| `kind` | {'str': 754} |
| `memAvailableKb` | {'int': 754} |
| `memTotalKb` | {'int': 754} |
| `otherPssKb` | {'int': 754} |
| `processes` | {'int': 754} |
| `pssFallbackProcesses` | {'int': 754} |

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
| `cpuMillicores` | {'int': 1485} |
| `display` | {'int': 1488} |
| `kind` | {'str': 1488} |
| `processes` | {'int': 1488} |
| `pssKb` | {'int': 1488} |
| `rendererMaxPssKb` | {'int': 1488} |
| `renderers` | {'int': 1488} |
| `tabs` | {'int': 1487} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
