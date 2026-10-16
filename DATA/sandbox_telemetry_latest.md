# sandbox_telemetry_parse — 2026-10-16 18:04:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=700200 lines=2617
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1732 |
| `memory_sample` | 876 |
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
| `chromeBrowserPssKb` | {'int': 876} |
| `chromeGpuPssKb` | {'int': 876} |
| `chromeOtherPssKb` | {'int': 876} |
| `chromeProcesses` | {'int': 876} |
| `chromeProfiles` | {'int': 876} |
| `chromeRendererMaxPssKb` | {'int': 876} |
| `chromeRendererPssKb` | {'int': 876} |
| `chromeRenderers` | {'int': 876} |
| `chromeTabs` | {'int': 876} |
| `chromeTabsProbedProfiles` | {'int': 876} |
| `chromeUtilityPssKb` | {'int': 876} |
| `desktopPssKb` | {'int': 876} |
| `hostPssKb` | {'int': 876} |
| `kind` | {'str': 876} |
| `memAvailableKb` | {'int': 876} |
| `memTotalKb` | {'int': 876} |
| `otherPssKb` | {'int': 876} |
| `processes` | {'int': 876} |
| `pssFallbackProcesses` | {'int': 876} |

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
| `cpuMillicores` | {'int': 1729} |
| `display` | {'int': 1732} |
| `kind` | {'str': 1732} |
| `processes` | {'int': 1732} |
| `pssKb` | {'int': 1732} |
| `rendererMaxPssKb` | {'int': 1732} |
| `renderers` | {'int': 1732} |
| `tabs` | {'int': 1731} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
