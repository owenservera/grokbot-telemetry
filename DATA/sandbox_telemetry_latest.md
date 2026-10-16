# sandbox_telemetry_parse — 2026-10-16 20:18:20 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=799769 lines=2989
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1980 |
| `memory_sample` | 1000 |
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
| `chromeBrowserPssKb` | {'int': 1000} |
| `chromeGpuPssKb` | {'int': 1000} |
| `chromeOtherPssKb` | {'int': 1000} |
| `chromeProcesses` | {'int': 1000} |
| `chromeProfiles` | {'int': 1000} |
| `chromeRendererMaxPssKb` | {'int': 1000} |
| `chromeRendererPssKb` | {'int': 1000} |
| `chromeRenderers` | {'int': 1000} |
| `chromeTabs` | {'int': 1000} |
| `chromeTabsProbedProfiles` | {'int': 1000} |
| `chromeUtilityPssKb` | {'int': 1000} |
| `desktopPssKb` | {'int': 1000} |
| `hostPssKb` | {'int': 1000} |
| `kind` | {'str': 1000} |
| `memAvailableKb` | {'int': 1000} |
| `memTotalKb` | {'int': 1000} |
| `otherPssKb` | {'int': 1000} |
| `processes` | {'int': 1000} |
| `pssFallbackProcesses` | {'int': 1000} |

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
| `cpuMillicores` | {'int': 1977} |
| `display` | {'int': 1980} |
| `kind` | {'str': 1980} |
| `processes` | {'int': 1980} |
| `pssKb` | {'int': 1980} |
| `rendererMaxPssKb` | {'int': 1980} |
| `renderers` | {'int': 1980} |
| `tabs` | {'int': 1979} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
